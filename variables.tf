variable "identity_domains_authentication_factor_settings" {
  description = <<EOT
Map of identity_domains_authentication_factor_settings, attributes below
Required:
    - authentication_factor_setting_id
    - bypass_code_enabled
    - idcs_endpoint
    - mfa_enrollment_type
    - push_enabled
    - schemas
    - security_questions_enabled
    - sms_enabled
    - totp_enabled
    - bypass_code_settings (block):
        - help_desk_code_expiry_in_mins (required)
        - help_desk_generation_enabled (required)
        - help_desk_max_usage (required)
        - length (required)
        - max_active (required)
        - self_service_generation_enabled (required)
    - client_app_settings (block):
        - device_protection_policy (required)
        - initial_lockout_period_in_secs (required)
        - key_pair_length (required)
        - lockout_escalation_pattern (required)
        - max_failures_before_lockout (required)
        - max_failures_before_warning (required)
        - max_lockout_interval_in_secs (required)
        - min_pin_length (required)
        - policy_update_freq_in_days (required)
        - request_signing_algo (required)
        - shared_secret_encoding (required)
        - unlock_app_for_each_request_enabled (required)
        - unlock_app_interval_in_secs (required)
        - unlock_on_app_foreground_enabled (required)
        - unlock_on_app_start_enabled (required)
    - compliance_policy (block):
        - action (required)
        - name (required)
        - value (required)
    - endpoint_restrictions (block):
        - max_endpoint_trust_duration_in_days (required)
        - max_enrolled_devices (required)
        - max_incorrect_attempts (required)
        - max_trusted_endpoints (required)
        - trusted_endpoints_enabled (required)
    - notification_settings (block):
        - pull_enabled (required)
    - totp_settings (block):
        - email_otp_validity_duration_in_mins (required)
        - email_passcode_length (required)
        - hashing_algorithm (required)
        - jwt_validity_duration_in_secs (required)
        - key_refresh_interval_in_days (required)
        - passcode_length (required)
        - sms_otp_validity_duration_in_mins (required)
        - sms_passcode_length (required)
        - time_step_in_secs (required)
        - time_step_tolerance (required)
Optional:
    - attribute_sets
    - attributes
    - authorization
    - auto_enroll_email_factor_disabled
    - email_enabled
    - fido_authenticator_enabled
    - hide_backup_factor_enabled
    - ocid
    - phone_call_enabled
    - resource_type_schema_version
    - user_enrollment_disabled_factors
    - yubico_otp_enabled
    - email_settings (block):
        - email_link_custom_url (optional)
        - email_link_enabled (required)
    - identity_store_settings (block):
        - mobile_number_enabled (optional)
        - mobile_number_update_enabled (optional)
    - tags (block):
        - key (required)
        - value (required)
    - third_party_factor (block):
        - duo_security (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings (block):
        - attestation (required)
        - authenticator_selection_attachment (required)
        - authenticator_selection_require_resident_key (required)
        - authenticator_selection_resident_key (required)
        - authenticator_selection_user_verification (required)
        - domain_validation_level (optional)
        - exclude_credentials (required)
        - public_key_types (required)
        - timeout (required)
    - urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings (block):
        - duo_security_settings (optional, block):
            - api_hostname (required)
            - attestation_key (optional)
            - integration_key (required)
            - secret_key (required)
            - user_mapping_attribute (required)
EOT

  type = map(object({
    authentication_factor_setting_id  = string
    bypass_code_enabled               = bool
    idcs_endpoint                     = string
    mfa_enrollment_type               = string
    push_enabled                      = bool
    schemas                           = list(string)
    security_questions_enabled        = bool
    sms_enabled                       = bool
    totp_enabled                      = bool
    attribute_sets                    = optional(list(string))
    attributes                        = optional(string)
    authorization                     = optional(string)
    auto_enroll_email_factor_disabled = optional(bool)
    email_enabled                     = optional(bool)
    fido_authenticator_enabled        = optional(bool)
    hide_backup_factor_enabled        = optional(bool)
    ocid                              = optional(string)
    phone_call_enabled                = optional(bool)
    resource_type_schema_version      = optional(string)
    user_enrollment_disabled_factors  = optional(list(string))
    yubico_otp_enabled                = optional(bool)
    bypass_code_settings = object({
      help_desk_code_expiry_in_mins   = number
      help_desk_generation_enabled    = bool
      help_desk_max_usage             = number
      length                          = number
      max_active                      = number
      self_service_generation_enabled = bool
    })
    client_app_settings = object({
      device_protection_policy            = string
      initial_lockout_period_in_secs      = number
      key_pair_length                     = number
      lockout_escalation_pattern          = string
      max_failures_before_lockout         = number
      max_failures_before_warning         = number
      max_lockout_interval_in_secs        = number
      min_pin_length                      = number
      policy_update_freq_in_days          = number
      request_signing_algo                = string
      shared_secret_encoding              = string
      unlock_app_for_each_request_enabled = bool
      unlock_app_interval_in_secs         = number
      unlock_on_app_foreground_enabled    = bool
      unlock_on_app_start_enabled         = bool
    })
    compliance_policy = list(object({
      action = string
      name   = string
      value  = string
    }))
    endpoint_restrictions = object({
      max_endpoint_trust_duration_in_days = number
      max_enrolled_devices                = number
      max_incorrect_attempts              = number
      max_trusted_endpoints               = number
      trusted_endpoints_enabled           = bool
    })
    notification_settings = object({
      pull_enabled = bool
    })
    totp_settings = object({
      email_otp_validity_duration_in_mins = number
      email_passcode_length               = number
      hashing_algorithm                   = string
      jwt_validity_duration_in_secs       = number
      key_refresh_interval_in_days        = number
      passcode_length                     = number
      sms_otp_validity_duration_in_mins   = number
      sms_passcode_length                 = number
      time_step_in_secs                   = number
      time_step_tolerance                 = number
    })
    email_settings = optional(object({
      email_link_custom_url = optional(string)
      email_link_enabled    = bool
    }))
    identity_store_settings = optional(object({
      mobile_number_enabled        = optional(bool)
      mobile_number_update_enabled = optional(bool)
    }))
    tags = optional(list(object({
      key   = string
      value = string
    })))
    third_party_factor = optional(object({
      duo_security = bool
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings = optional(object({
      attestation                                  = string
      authenticator_selection_attachment           = string
      authenticator_selection_require_resident_key = bool
      authenticator_selection_resident_key         = string
      authenticator_selection_user_verification    = string
      domain_validation_level                      = optional(number)
      exclude_credentials                          = bool
      public_key_types                             = list(string)
      timeout                                      = number
    }))
    urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings = optional(object({
      duo_security_settings = optional(object({
        api_hostname           = string
        attestation_key        = optional(string)
        integration_key        = string
        secret_key             = string
        user_mapping_attribute = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_domains_authentication_factor_settings : (
        length(v.compliance_policy) >= 1
      )
    ])
    error_message = "Each compliance_policy list must contain at least 1 items"
  }
}

