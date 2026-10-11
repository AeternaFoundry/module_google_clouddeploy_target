output "clouddeploy_targets_id" {
  description = "Map of id values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no id are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clouddeploy_targets_annotations" {
  description = "Map of annotations values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no annotations are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "clouddeploy_targets_anthos_cluster" {
  description = "Map of anthos_cluster values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no anthos_cluster are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => one(v.anthos_cluster) if v.anthos_cluster != null && length(v.anthos_cluster) > 0 }
}
output "clouddeploy_targets_associated_entities" {
  description = "Map of associated_entities values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no associated_entities are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.associated_entities if v.associated_entities != null && length(v.associated_entities) > 0 }
}
output "clouddeploy_targets_create_time" {
  description = "Map of create_time values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no create_time are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "clouddeploy_targets_custom_target" {
  description = "Map of custom_target values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no custom_target are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => one(v.custom_target) if v.custom_target != null && length(v.custom_target) > 0 }
}
output "clouddeploy_targets_deletion_policy" {
  description = "Map of deletion_policy values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "clouddeploy_targets_deploy_parameters" {
  description = "Map of deploy_parameters values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no deploy_parameters are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.deploy_parameters if v.deploy_parameters != null && length(v.deploy_parameters) > 0 }
}
output "clouddeploy_targets_description" {
  description = "Map of description values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no description are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "clouddeploy_targets_effective_annotations" {
  description = "Map of effective_annotations values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no effective_annotations are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "clouddeploy_targets_effective_labels" {
  description = "Map of effective_labels values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no effective_labels are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "clouddeploy_targets_etag" {
  description = "Map of etag values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no etag are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "clouddeploy_targets_execution_configs" {
  description = "Map of execution_configs values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no execution_configs are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.execution_configs if v.execution_configs != null && length(v.execution_configs) > 0 }
}
output "clouddeploy_targets_gke" {
  description = "Map of gke values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no gke are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => one(v.gke) if v.gke != null && length(v.gke) > 0 }
}
output "clouddeploy_targets_labels" {
  description = "Map of labels values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no labels are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "clouddeploy_targets_location" {
  description = "Map of location values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no location are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "clouddeploy_targets_multi_target" {
  description = "Map of multi_target values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no multi_target are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => one(v.multi_target) if v.multi_target != null && length(v.multi_target) > 0 }
}
output "clouddeploy_targets_name" {
  description = "Map of name values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no name are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "clouddeploy_targets_project" {
  description = "Map of project values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no project are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "clouddeploy_targets_require_approval" {
  description = "Map of require_approval values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no require_approval are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.require_approval if v.require_approval != null }
}
output "clouddeploy_targets_run" {
  description = "Map of run values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no run are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => one(v.run) if v.run != null && length(v.run) > 0 }
}
output "clouddeploy_targets_target_id" {
  description = "Map of target_id values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no target_id are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}
output "clouddeploy_targets_terraform_labels" {
  description = "Map of terraform_labels values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no terraform_labels are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "clouddeploy_targets_uid" {
  description = "Map of uid values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no uid are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "clouddeploy_targets_update_time" {
  description = "Map of update_time values across all clouddeploy_targets, keyed the same as var.clouddeploy_targets except keys with no update_time are omitted"
  value       = { for k, v in google_clouddeploy_target.clouddeploy_targets : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

