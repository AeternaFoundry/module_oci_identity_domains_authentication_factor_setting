resource "oci_identity_domains_authentication_factor_setting" "identity_domains_authentication_factor_settings" {
  for_each = var.identity_domains_authentication_factor_settings

  authentication_factor_setting_id  = each.value.authentication_factor_setting_id
  bypass_code_enabled               = each.value.bypass_code_enabled
  idcs_endpoint                     = each.value.idcs_endpoint
  mfa_enrollment_type               = each.value.mfa_enrollment_type
  push_enabled                      = each.value.push_enabled
  schemas                           = each.value.schemas
  security_questions_enabled        = each.value.security_questions_enabled
  sms_enabled                       = each.value.sms_enabled
  totp_enabled                      = each.value.totp_enabled
  attribute_sets                    = each.value.attribute_sets
  attributes                        = each.value.attributes
  authorization                     = each.value.authorization
  auto_enroll_email_factor_disabled = each.value.auto_enroll_email_factor_disabled
  email_enabled                     = each.value.email_enabled
  fido_authenticator_enabled        = each.value.fido_authenticator_enabled
  hide_backup_factor_enabled        = each.value.hide_backup_factor_enabled
  ocid                              = each.value.ocid
  phone_call_enabled                = each.value.phone_call_enabled
  resource_type_schema_version      = each.value.resource_type_schema_version
  user_enrollment_disabled_factors  = each.value.user_enrollment_disabled_factors
  yubico_otp_enabled                = each.value.yubico_otp_enabled

  bypass_code_settings {
    help_desk_code_expiry_in_mins   = each.value.bypass_code_settings.help_desk_code_expiry_in_mins
    help_desk_generation_enabled    = each.value.bypass_code_settings.help_desk_generation_enabled
    help_desk_max_usage             = each.value.bypass_code_settings.help_desk_max_usage
    length                          = each.value.bypass_code_settings.length
    max_active                      = each.value.bypass_code_settings.max_active
    self_service_generation_enabled = each.value.bypass_code_settings.self_service_generation_enabled
  }

  client_app_settings {
    device_protection_policy            = each.value.client_app_settings.device_protection_policy
    initial_lockout_period_in_secs      = each.value.client_app_settings.initial_lockout_period_in_secs
    key_pair_length                     = each.value.client_app_settings.key_pair_length
    lockout_escalation_pattern          = each.value.client_app_settings.lockout_escalation_pattern
    max_failures_before_lockout         = each.value.client_app_settings.max_failures_before_lockout
    max_failures_before_warning         = each.value.client_app_settings.max_failures_before_warning
    max_lockout_interval_in_secs        = each.value.client_app_settings.max_lockout_interval_in_secs
    min_pin_length                      = each.value.client_app_settings.min_pin_length
    policy_update_freq_in_days          = each.value.client_app_settings.policy_update_freq_in_days
    request_signing_algo                = each.value.client_app_settings.request_signing_algo
    shared_secret_encoding              = each.value.client_app_settings.shared_secret_encoding
    unlock_app_for_each_request_enabled = each.value.client_app_settings.unlock_app_for_each_request_enabled
    unlock_app_interval_in_secs         = each.value.client_app_settings.unlock_app_interval_in_secs
    unlock_on_app_foreground_enabled    = each.value.client_app_settings.unlock_on_app_foreground_enabled
    unlock_on_app_start_enabled         = each.value.client_app_settings.unlock_on_app_start_enabled
  }

  dynamic "compliance_policy" {
    for_each = each.value.compliance_policy
    content {
      action = compliance_policy.value.action
      name   = compliance_policy.value.name
      value  = compliance_policy.value.value
    }
  }

  endpoint_restrictions {
    max_endpoint_trust_duration_in_days = each.value.endpoint_restrictions.max_endpoint_trust_duration_in_days
    max_enrolled_devices                = each.value.endpoint_restrictions.max_enrolled_devices
    max_incorrect_attempts              = each.value.endpoint_restrictions.max_incorrect_attempts
    max_trusted_endpoints               = each.value.endpoint_restrictions.max_trusted_endpoints
    trusted_endpoints_enabled           = each.value.endpoint_restrictions.trusted_endpoints_enabled
  }

  notification_settings {
    pull_enabled = each.value.notification_settings.pull_enabled
  }

  totp_settings {
    email_otp_validity_duration_in_mins = each.value.totp_settings.email_otp_validity_duration_in_mins
    email_passcode_length               = each.value.totp_settings.email_passcode_length
    hashing_algorithm                   = each.value.totp_settings.hashing_algorithm
    jwt_validity_duration_in_secs       = each.value.totp_settings.jwt_validity_duration_in_secs
    key_refresh_interval_in_days        = each.value.totp_settings.key_refresh_interval_in_days
    passcode_length                     = each.value.totp_settings.passcode_length
    sms_otp_validity_duration_in_mins   = each.value.totp_settings.sms_otp_validity_duration_in_mins
    sms_passcode_length                 = each.value.totp_settings.sms_passcode_length
    time_step_in_secs                   = each.value.totp_settings.time_step_in_secs
    time_step_tolerance                 = each.value.totp_settings.time_step_tolerance
  }

  dynamic "email_settings" {
    for_each = each.value.email_settings != null ? [each.value.email_settings] : []
    content {
      email_link_custom_url = email_settings.value.email_link_custom_url
      email_link_enabled    = email_settings.value.email_link_enabled
    }
  }

  dynamic "identity_store_settings" {
    for_each = each.value.identity_store_settings != null ? [each.value.identity_store_settings] : []
    content {
      mobile_number_enabled        = identity_store_settings.value.mobile_number_enabled
      mobile_number_update_enabled = identity_store_settings.value.mobile_number_update_enabled
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "third_party_factor" {
    for_each = each.value.third_party_factor != null ? [each.value.third_party_factor] : []
    content {
      duo_security = third_party_factor.value.duo_security
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings" {
    for_each = each.value.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings != null ? [each.value.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings] : []
    content {
      attestation                                  = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.attestation
      authenticator_selection_attachment           = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.authenticator_selection_attachment
      authenticator_selection_require_resident_key = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.authenticator_selection_require_resident_key
      authenticator_selection_resident_key         = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.authenticator_selection_resident_key
      authenticator_selection_user_verification    = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.authenticator_selection_user_verification
      domain_validation_level                      = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.domain_validation_level
      exclude_credentials                          = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.exclude_credentials
      public_key_types                             = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.public_key_types
      timeout                                      = urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings.value.timeout
    }
  }

  dynamic "urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings" {
    for_each = each.value.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings != null ? [each.value.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings] : []
    content {
      dynamic "duo_security_settings" {
        for_each = urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings.value.duo_security_settings != null ? [urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings.value.duo_security_settings] : []
        content {
          api_hostname           = duo_security_settings.value.api_hostname
          attestation_key        = duo_security_settings.value.attestation_key
          integration_key        = duo_security_settings.value.integration_key
          secret_key             = duo_security_settings.value.secret_key
          user_mapping_attribute = duo_security_settings.value.user_mapping_attribute
        }
      }
    }
  }
}

