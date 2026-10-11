output "identity_domains_authentication_factor_settings_id" {
  description = "Map of id values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no id are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domains_authentication_factor_settings_attribute_sets" {
  description = "Map of attribute_sets values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no attribute_sets are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.attribute_sets if v.attribute_sets != null && length(v.attribute_sets) > 0 }
}
output "identity_domains_authentication_factor_settings_attributes" {
  description = "Map of attributes values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no attributes are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "identity_domains_authentication_factor_settings_authentication_factor_setting_id" {
  description = "Map of authentication_factor_setting_id values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no authentication_factor_setting_id are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.authentication_factor_setting_id if v.authentication_factor_setting_id != null && length(v.authentication_factor_setting_id) > 0 }
}
output "identity_domains_authentication_factor_settings_authorization" {
  description = "Map of authorization values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no authorization are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "identity_domains_authentication_factor_settings_auto_enroll_email_factor_disabled" {
  description = "Map of auto_enroll_email_factor_disabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no auto_enroll_email_factor_disabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.auto_enroll_email_factor_disabled if v.auto_enroll_email_factor_disabled != null }
}
output "identity_domains_authentication_factor_settings_bypass_code_enabled" {
  description = "Map of bypass_code_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no bypass_code_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.bypass_code_enabled if v.bypass_code_enabled != null }
}
output "identity_domains_authentication_factor_settings_bypass_code_settings" {
  description = "Map of bypass_code_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no bypass_code_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.bypass_code_settings) if v.bypass_code_settings != null && length(v.bypass_code_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_client_app_settings" {
  description = "Map of client_app_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no client_app_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.client_app_settings) if v.client_app_settings != null && length(v.client_app_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_compartment_ocid" {
  description = "Map of compartment_ocid values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no compartment_ocid are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.compartment_ocid if v.compartment_ocid != null && length(v.compartment_ocid) > 0 }
}
output "identity_domains_authentication_factor_settings_compliance_policy" {
  description = "Map of compliance_policy values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no compliance_policy are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.compliance_policy if v.compliance_policy != null && length(v.compliance_policy) > 0 }
}
output "identity_domains_authentication_factor_settings_delete_in_progress" {
  description = "Map of delete_in_progress values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no delete_in_progress are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.delete_in_progress if v.delete_in_progress != null }
}
output "identity_domains_authentication_factor_settings_domain_ocid" {
  description = "Map of domain_ocid values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no domain_ocid are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.domain_ocid if v.domain_ocid != null && length(v.domain_ocid) > 0 }
}
output "identity_domains_authentication_factor_settings_email_enabled" {
  description = "Map of email_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no email_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.email_enabled if v.email_enabled != null }
}
output "identity_domains_authentication_factor_settings_email_settings" {
  description = "Map of email_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no email_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.email_settings) if v.email_settings != null && length(v.email_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_endpoint_restrictions" {
  description = "Map of endpoint_restrictions values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no endpoint_restrictions are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.endpoint_restrictions) if v.endpoint_restrictions != null && length(v.endpoint_restrictions) > 0 }
}
output "identity_domains_authentication_factor_settings_fido_authenticator_enabled" {
  description = "Map of fido_authenticator_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no fido_authenticator_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.fido_authenticator_enabled if v.fido_authenticator_enabled != null }
}
output "identity_domains_authentication_factor_settings_hide_backup_factor_enabled" {
  description = "Map of hide_backup_factor_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no hide_backup_factor_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.hide_backup_factor_enabled if v.hide_backup_factor_enabled != null }
}
output "identity_domains_authentication_factor_settings_idcs_created_by" {
  description = "Map of idcs_created_by values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no idcs_created_by are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.idcs_created_by if v.idcs_created_by != null && length(v.idcs_created_by) > 0 }
}
output "identity_domains_authentication_factor_settings_idcs_endpoint" {
  description = "Map of idcs_endpoint values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no idcs_endpoint are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.idcs_endpoint if v.idcs_endpoint != null && length(v.idcs_endpoint) > 0 }
}
output "identity_domains_authentication_factor_settings_idcs_last_modified_by" {
  description = "Map of idcs_last_modified_by values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no idcs_last_modified_by are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.idcs_last_modified_by if v.idcs_last_modified_by != null && length(v.idcs_last_modified_by) > 0 }
}
output "identity_domains_authentication_factor_settings_idcs_last_upgraded_in_release" {
  description = "Map of idcs_last_upgraded_in_release values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no idcs_last_upgraded_in_release are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.idcs_last_upgraded_in_release if v.idcs_last_upgraded_in_release != null && length(v.idcs_last_upgraded_in_release) > 0 }
}
output "identity_domains_authentication_factor_settings_idcs_prevented_operations" {
  description = "Map of idcs_prevented_operations values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no idcs_prevented_operations are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.idcs_prevented_operations if v.idcs_prevented_operations != null && length(v.idcs_prevented_operations) > 0 }
}
output "identity_domains_authentication_factor_settings_identity_store_settings" {
  description = "Map of identity_store_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no identity_store_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.identity_store_settings) if v.identity_store_settings != null && length(v.identity_store_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_meta" {
  description = "Map of meta values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no meta are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "identity_domains_authentication_factor_settings_mfa_enabled_category" {
  description = "Map of mfa_enabled_category values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no mfa_enabled_category are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.mfa_enabled_category if v.mfa_enabled_category != null && length(v.mfa_enabled_category) > 0 }
}
output "identity_domains_authentication_factor_settings_mfa_enrollment_type" {
  description = "Map of mfa_enrollment_type values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no mfa_enrollment_type are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.mfa_enrollment_type if v.mfa_enrollment_type != null && length(v.mfa_enrollment_type) > 0 }
}
output "identity_domains_authentication_factor_settings_notification_settings" {
  description = "Map of notification_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no notification_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.notification_settings) if v.notification_settings != null && length(v.notification_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_ocid" {
  description = "Map of ocid values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no ocid are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.ocid if v.ocid != null && length(v.ocid) > 0 }
}
output "identity_domains_authentication_factor_settings_phone_call_enabled" {
  description = "Map of phone_call_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no phone_call_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.phone_call_enabled if v.phone_call_enabled != null }
}
output "identity_domains_authentication_factor_settings_push_enabled" {
  description = "Map of push_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no push_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.push_enabled if v.push_enabled != null }
}
output "identity_domains_authentication_factor_settings_resource_type_schema_version" {
  description = "Map of resource_type_schema_version values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no resource_type_schema_version are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.resource_type_schema_version if v.resource_type_schema_version != null && length(v.resource_type_schema_version) > 0 }
}
output "identity_domains_authentication_factor_settings_schemas" {
  description = "Map of schemas values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no schemas are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.schemas if v.schemas != null && length(v.schemas) > 0 }
}
output "identity_domains_authentication_factor_settings_security_questions_enabled" {
  description = "Map of security_questions_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no security_questions_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.security_questions_enabled if v.security_questions_enabled != null }
}
output "identity_domains_authentication_factor_settings_sms_enabled" {
  description = "Map of sms_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no sms_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.sms_enabled if v.sms_enabled != null }
}
output "identity_domains_authentication_factor_settings_tags" {
  description = "Map of tags values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no tags are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "identity_domains_authentication_factor_settings_tenancy_ocid" {
  description = "Map of tenancy_ocid values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no tenancy_ocid are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.tenancy_ocid if v.tenancy_ocid != null && length(v.tenancy_ocid) > 0 }
}
output "identity_domains_authentication_factor_settings_third_party_factor" {
  description = "Map of third_party_factor values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no third_party_factor are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.third_party_factor) if v.third_party_factor != null && length(v.third_party_factor) > 0 }
}
output "identity_domains_authentication_factor_settings_totp_enabled" {
  description = "Map of totp_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no totp_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.totp_enabled if v.totp_enabled != null }
}
output "identity_domains_authentication_factor_settings_totp_settings" {
  description = "Map of totp_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no totp_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.totp_settings) if v.totp_settings != null && length(v.totp_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings" {
  description = "Map of urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings) if v.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings != null && length(v.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings" {
  description = "Map of urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => one(v.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings) if v.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings != null && length(v.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings) > 0 }
}
output "identity_domains_authentication_factor_settings_user_enrollment_disabled_factors" {
  description = "Map of user_enrollment_disabled_factors values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no user_enrollment_disabled_factors are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.user_enrollment_disabled_factors if v.user_enrollment_disabled_factors != null && length(v.user_enrollment_disabled_factors) > 0 }
}
output "identity_domains_authentication_factor_settings_yubico_otp_enabled" {
  description = "Map of yubico_otp_enabled values across all identity_domains_authentication_factor_settings, keyed the same as var.identity_domains_authentication_factor_settings except keys with no yubico_otp_enabled are omitted"
  value       = { for k, v in oci_identity_domains_authentication_factor_setting.identity_domains_authentication_factor_settings : k => v.yubico_otp_enabled if v.yubico_otp_enabled != null }
}

