/**
 * Copyright 2022 Comcast Cable Communications Management, LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <certifier/xpki_client.h>

#include <certifier/base64.h>
#include <certifier/certifier.h>
#include <certifier/certifier_internal.h>
#include <certifier/types.h>

#define ReturnErrorOnFailure(expr)                                                                                                 \
    do                                                                                                                             \
    {                                                                                                                              \
        int __err = (expr);                                                                                                        \
        if (__err != 0)                                                                                                            \
        {                                                                                                                          \
            return __err;                                                                                                          \
        }                                                                                                                          \
    } while (0)

#define VerifyOrReturnError(expr, code)                                                                                            \
    do                                                                                                                             \
    {                                                                                                                              \
        if (!(expr))                                                                                                               \
        {                                                                                                                          \
            return (code);                                                                                                         \
        }                                                                                                                          \
    } while (0)

#define VerifyOrExit(statement, action)                                                                                            \
    do                                                                                                                             \
    {                                                                                                                              \
        if ((statement) != 1)                                                                                                      \
        {                                                                                                                          \
            action;                                                                                                                \
            goto exit;                                                                                                             \
        }                                                                                                                          \
    } while (0)

#define SYSTEM_ID_SIZE 40

static inline Certifier * get_certifier_instance()
{
    static Certifier * certifier = NULL;

    if (certifier == NULL)
    {
        certifier = certifier_new();
    }

    return certifier;
}

XPKI_AUTH_TYPE map_to_xpki_auth_type(const char * str)
{
    if (strcmp(str, "X509") == 0)
    {
        return XPKI_AUTH_X509_CRT;
    }
    else
    {
        return XPKI_AUTH_TOKEN;
    }
}

static uint16_t get_product_id(const char * str)
{
    uint16_t id;

    if (sscanf(str, "%" SCNx16, &id) == 1)
    {
        return id;
    }

    return 0;
}

static uint64_t get_node_id(const char * str)
{
    uint64_t id;

    if (sscanf(str, "%" SCNx64, &id) == 1)
    {
        return id;
    }

    return 0;
}

#define get_fabric_id get_node_id

static uint32_t get_auth_tag(const char * str)
{
    uint32_t id;

    if (sscanf(str, "%" SCNx32, &id) == 1)
    {
        return id;
    }

    return 0;
}

static bool is_mac_valid(const char * mac, size_t mac_len)
{
    uint32_t bytes[6] = { 0 };

    if (mac == NULL)
        return false;
    if (mac_len != 17)
        return false;

    // FIXME: this is unsafe. sscanf is evil.
    return (6 == sscanf(mac, "%02X:%02X:%02X:%02X:%02X:%02X", &bytes[5], &bytes[4], &bytes[3], &bytes[2], &bytes[1], &bytes[0]));
}

XPKI_CLIENT_ERROR_CODE xc_set_source_id(const char * source_id)
{
    if (source_id)
    {
        Certifier * certifier = get_certifier_instance();
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_SOURCE, source_id));
    }
    return XPKI_CLIENT_SUCCESS;
}

XPKI_CLIENT_ERROR_CODE xc_get_default_cert_param(get_cert_param_t * params)
{
    Certifier * certifier = get_certifier_instance();

    memset(params, 0, sizeof(get_cert_param_t));

    void * param = NULL;

    param                  = certifier_get_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH);
    params->input_p12_path = param ? (const char *) param : NULL;

    param                      = certifier_get_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD);
    params->input_p12_password = param ? (const char *) param : NULL;

    param                   = certifier_get_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PATH);
    params->output_p12_path = param ? (const char *) param : NULL;

    param                       = certifier_get_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PASSWORD);
    params->output_p12_password = param ? (const char *) param : NULL;

    param                = certifier_get_property(certifier, CERTIFIER_OPT_PROFILE_NAME);
    params->profile_name = param ? (const char *) param : NULL;

    param             = certifier_get_property(certifier, CERTIFIER_OPT_AUTH_TYPE);
    params->auth_type = param ? map_to_xpki_auth_type(param) : XPKI_AUTH_X509_CRT;

    param                 = certifier_get_property(certifier, CERTIFIER_OPT_FORCE_REGISTRATION);
    params->overwrite_p12 = (bool) param; // bool value

    param              = certifier_get_property(certifier, CERTIFIER_OPT_PRODUCT_ID);
    params->product_id = param ? get_product_id(param) : 0;

    param           = certifier_get_property(certifier, CERTIFIER_OPT_NODE_ID);
    params->node_id = param ? get_node_id(param) : 0;

    param             = certifier_get_property(certifier, CERTIFIER_OPT_FABRIC_ID);
    params->fabric_id = param ? get_fabric_id(param) : 0;

    param                 = certifier_get_property(certifier, CERTIFIER_OPT_AUTH_TAG_1);
    params->case_auth_tag = param ? get_auth_tag(param) : 0;

    param                 = certifier_get_property(certifier, CERTIFIER_OPT_VALIDITY_DAYS);
    params->validity_days = param ? (size_t) param : 365;

    param        = certifier_get_property(certifier, CERTIFIER_OPT_CERTIFICATE_LITE);
    params->lite = (bool) param; // bool value

    param               = certifier_get_property(certifier, CERTIFIER_OPT_CN_PREFIX);
    params->common_name = param ? (const char *) param : NULL;

    params->keypair       = NULL;
    params->mac_address   = NULL;
    params->serial_number = NULL;
    params->crt           = NULL;
    params->source_id     = NULL;

    return XPKI_CLIENT_SUCCESS;
}

XPKI_CLIENT_ERROR_CODE xc_get_default_cert_status_param(get_cert_status_param_t * params)
{
    Certifier * certifier = get_certifier_instance();

    memset(params, 0, sizeof(get_cert_status_param_t));

    void * param = NULL;

    param            = certifier_get_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH);
    params->p12_path = param ? (const char *) param : NULL;

    param                = certifier_get_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD);
    params->p12_password = param ? (const char *) param : NULL;

    param             = certifier_get_property(certifier, CERTIFIER_OPT_SOURCE);
    params->source_id = param ? (const char *) param : NULL;

    return XPKI_CLIENT_SUCCESS;
}

XPKI_CLIENT_ERROR_CODE xc_get_default_renew_cert_param(renew_cert_param_t * params)
{
    return xc_get_default_cert_status_param(params);
}

static XPKI_CLIENT_ERROR_CODE xc_create_x509_crt()
{
    XPKI_CLIENT_ERROR_CODE xc_error = XPKI_CLIENT_SUCCESS;
    int return_code                 = 0;
    Certifier * certifier           = get_certifier_instance();

    return_code = certifier_setup_keys(certifier);
    VerifyOrReturnError(return_code == 0, XPKI_CLIENT_ERROR_INTERNAL);

    char * tmp_crt = NULL;
    char * cert    = NULL;

    return_code = certifier_create_x509_crt(certifier, &tmp_crt);
    VerifyOrExit(return_code == 0, xc_error = XPKI_CLIENT_ERROR_INTERNAL);
    VerifyOrExit(tmp_crt != NULL, xc_error = XPKI_CLIENT_ERROR_NO_MEMORY);

    const int cert_len = (int) XSTRLEN(tmp_crt);
    cert               = XMALLOC(base64_encode_len(cert_len));
    base64_encode(cert, (const unsigned char *) tmp_crt, cert_len);
    return_code = certifier_set_property(certifier, CERTIFIER_OPT_CRT, cert);
    VerifyOrExit(return_code == 0, xc_error = XPKI_CLIENT_ERROR_INTERNAL);

exit:
    XFREE(cert);
    XFREE(tmp_crt);

    return xc_error;
}

static XPKI_CLIENT_ERROR_CODE xc_register_certificate(ECC_KEY * keypair)
{
    Certifier * certifier = get_certifier_instance();

    char * cn_prefix = certifier_get_property(certifier, CERTIFIER_OPT_CN_PREFIX);
    VerifyOrReturnError(cn_prefix != NULL, XPKI_CLIENT_INVALID_ARGUMENT);

    CertifierError rc = CERTIFIER_ERROR_INITIALIZER;
    certifier_set_keys_and_node_address_with_cn_prefix(certifier, keypair, cn_prefix, rc);

    int return_code = certifier_register(certifier);

    return return_code == 0 ? XPKI_CLIENT_SUCCESS : XPKI_CLIENT_ERROR_INTERNAL;
}

XPKI_CLIENT_ERROR_CODE xc_get_cert(get_cert_param_t * params)
{
#ifdef RDK_BUILD
    VerifyOrReturnError(params->mac_address != NULL && is_mac_valid(params->mac_address, strlen(params->mac_address)) == true,
                        XPKI_CLIENT_INVALID_ARGUMENT);
#endif // RDK_BUILD

    char system_id[SYSTEM_ID_SIZE] = { 0 };

    // TODO: Implement Auth Token CRT
    // TODO: Check boundaries on enums
    VerifyOrReturnError(params->auth_type == XPKI_AUTH_X509_CRT, XPKI_CLIENT_NOT_IMPLEMENTED);

    Certifier * certifier = get_certifier_instance();

    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH, params->input_p12_path));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD, params->input_p12_password));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PATH, params->output_p12_path));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PASSWORD, params->output_p12_password));

    ReturnErrorOnFailure(
        certifier_set_property(certifier, CERTIFIER_OPT_VALIDITY_DAYS, (const void *) (size_t) params->validity_days));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_CERTIFICATE_LITE, (void *) params->lite));

    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_PROFILE_NAME, params->profile_name));

    ReturnErrorOnFailure(xc_set_source_id(params->source_id));

    if (params->node_id != 0)
    {
        char node_id[sizeof(uint64_t) * 2 + 1] = { 0 };
        snprintf(node_id, sizeof(node_id), "%" PRIx64, params->node_id);
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_NODE_ID, (void *) node_id));
    }
    if (params->product_id != 0)
    {
        char product_id[sizeof(uint16_t) * 2 + 1] = { 0 };
        snprintf(product_id, sizeof(product_id), "%" PRIx16, params->product_id);
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_PRODUCT_ID, (void *) product_id));
    }
    if (params->fabric_id != 0)
    {
        char fabric_id[sizeof(uint64_t) * 2 + 1] = { 0 };
        snprintf(fabric_id, sizeof(fabric_id), "%" PRIx64, params->fabric_id);
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_FABRIC_ID, (void *) (size_t) fabric_id));
    }
    if (params->case_auth_tag != 0)
    {
        char case_auth_tag[sizeof(uint32_t) * 2 + 1] = { 0 };
        snprintf(case_auth_tag, sizeof(case_auth_tag), "%" PRIx32, params->case_auth_tag);
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_AUTH_TAG_1, (void *) (size_t) case_auth_tag));
    }
    if (params->common_name != NULL)
    {
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_CN_PREFIX, params->common_name));
    }
    if (params->mac_address != NULL)
    {
        VerifyOrReturnError(is_mac_valid(params->mac_address, strlen(params->mac_address)) == true, XPKI_CLIENT_INVALID_ARGUMENT);
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_MAC_ADDRESS, params->mac_address));
    }
    if (params->mac_address != NULL && is_mac_valid(params->mac_address, strlen(params->mac_address)) &&
        params->serial_number != NULL)
    {
        // FIXME: check for truncation (or use dynamic allocation)
        snprintf(system_id, SYSTEM_ID_SIZE, "%s:%s", params->mac_address, params->serial_number);
        system_id[SYSTEM_ID_SIZE - 1] = '\0';
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_SYSTEM_ID, system_id));
    }
    if (params->crt == NULL)
    {
        ReturnErrorOnFailure(xc_create_x509_crt());
    } // TODO: else

    if (certifier_get_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PATH) != NULL)
    {
        ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH,
                                                    certifier_get_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PATH)));
    }
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_FORCE_REGISTRATION, (void *) params->overwrite_p12));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD,
                                                certifier_get_property(certifier, CERTIFIER_OPT_OUTPUT_P12_PASSWORD)));

    return xc_register_certificate(params->keypair);
}

static XPKI_CLIENT_ERROR_CODE _xc_renew_certificate()
{
    Certifier * certifier = get_certifier_instance();

    int return_code = certifier_get_device_registration_status(certifier);
    if (return_code == CERTIFIER_ERR_REGISTRATION_STATUS_CERT_ABOUT_TO_EXPIRE ||
        return_code == CERTIFIER_ERR_REGISTRATION_STATUS_CERT_EXPIRED_1)
    {
        ReturnErrorOnFailure(xc_create_x509_crt());
        return certifier_renew_certificate(certifier) == 0 ? XPKI_CLIENT_SUCCESS : XPKI_CLIENT_ERROR_INTERNAL;
    }
    else
    {
        return XPKI_CLIENT_CERT_ALREADY_VALID;
    }
}

XPKI_CLIENT_ERROR_CODE xc_renew_cert(renew_cert_param_t * params)
{
    VerifyOrReturnError(params != NULL && params->p12_path != NULL && params->p12_password != NULL && params->source_id != NULL,
                        XPKI_CLIENT_INVALID_ARGUMENT);

    Certifier * certifier = get_certifier_instance();

    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH, params->p12_path));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD, params->p12_password));
    ReturnErrorOnFailure(xc_set_source_id(params->source_id));

    return _xc_renew_certificate();
}

static XPKI_CLIENT_CERT_STATUS xc_map_cert_status(int value)
{
    XPKI_CLIENT_CERT_STATUS cert_status = XPKI_CLIENT_CERT_VALID;

    switch (value)
    {
    case CERTIFIER_ERR_REGISTRATION_STATUS_CERT_ABOUT_TO_EXPIRE:
        cert_status = XPKI_CLIENT_CERT_ABOUT_TO_EXPIRE;
        break;
    case 0:
        cert_status = XPKI_CLIENT_CERT_VALID;
        break;
    case CERTIFIER_ERR_REGISTRATION_STATUS_CERT_EXPIRED_2:
        cert_status = XPKI_CLIENT_CERT_EXPIRED;
        break;
    case CERTIFIER_ERR_REGISTRATION_STATUS_CERT_EXPIRED_1:
        cert_status = XPKI_CLIENT_CERT_NOT_YET_VALID;
        break;
    case CERTIFIER_ERR_GET_CERT_STATUS_REVOKED:
        cert_status = XPKI_CLIENT_CERT_REVOKED;
        break;
    case CERTIFIER_ERR_GET_CERT_STATUS_UNKOWN | CERTIFIER_ERR_REGISTRATION_STATUS_CERT_ABOUT_TO_EXPIRE:
        cert_status = XPKI_CLIENT_CERT_ABOUT_TO_EXPIRE;
        // fall through
    case CERTIFIER_ERR_GET_CERT_STATUS_UNKOWN:
    default:
        cert_status |= XPKI_CLIENT_CERT_UNKNOWN;
    }

    return cert_status;
}

static XPKI_CLIENT_ERROR_CODE _xc_get_cert_status(XPKI_CLIENT_CERT_STATUS * status)
{
    Certifier * certifier = get_certifier_instance();
    int return_code       = 0;
    *status               = XPKI_CLIENT_CERT_INVALID;

    return_code = certifier_get_device_certificate_status(certifier);
    *status     = xc_map_cert_status(return_code);

    if (*status == XPKI_CLIENT_CERT_VALID)
    {
        return_code = certifier_get_device_registration_status(certifier);
        *status |= xc_map_cert_status(return_code);
    }

    return XPKI_CLIENT_SUCCESS;
}

XPKI_CLIENT_ERROR_CODE xc_get_cert_status(get_cert_status_param_t * params, XPKI_CLIENT_CERT_STATUS * status)
{
    VerifyOrReturnError(params != NULL && params->p12_path != NULL && params->p12_password != NULL && params->source_id != NULL,
                        XPKI_CLIENT_INVALID_ARGUMENT);

    Certifier * certifier = get_certifier_instance();

    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH, params->p12_path));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD, params->p12_password));
    ReturnErrorOnFailure(xc_set_source_id(params->source_id));

    return _xc_get_cert_status(status);
}

XPKI_CLIENT_ERROR_CODE xc_enable_logs(bool enable)
{
    Certifier * certifier = get_certifier_instance();

    return certifier_set_property(certifier, CERTIFIER_OPT_LOG_LEVEL, enable ? (void *) (size_t) 0 : (void *) (size_t) 4);
}

XPKI_CLIENT_ERROR_CODE xc_print_cert_validity(const char * p12_path, const char * password)
{
    Certifier * certifier = get_certifier_instance();

    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PATH, p12_path));
    ReturnErrorOnFailure(certifier_set_property(certifier, CERTIFIER_OPT_INPUT_P12_PASSWORD, password));

    certifier_print_certificate_validity(certifier);

    return XPKI_CLIENT_SUCCESS;
}