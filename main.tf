resource "google_clouddeploy_target" "clouddeploy_targets" {
  for_each = var.clouddeploy_targets

  location          = each.value.location
  name              = each.value.name
  annotations       = each.value.annotations
  deletion_policy   = each.value.deletion_policy
  deploy_parameters = each.value.deploy_parameters
  description       = each.value.description
  labels            = each.value.labels
  project           = each.value.project
  require_approval  = each.value.require_approval

  dynamic "anthos_cluster" {
    for_each = each.value.anthos_cluster != null ? [each.value.anthos_cluster] : []
    content {
      membership = anthos_cluster.value.membership
    }
  }

  dynamic "associated_entities" {
    for_each = each.value.associated_entities != null ? each.value.associated_entities : []
    content {
      dynamic "anthos_clusters" {
        for_each = associated_entities.value.anthos_clusters != null ? associated_entities.value.anthos_clusters : []
        content {
          membership = anthos_clusters.value.membership
        }
      }
      entity_id = associated_entities.value.entity_id
      dynamic "gke_clusters" {
        for_each = associated_entities.value.gke_clusters != null ? associated_entities.value.gke_clusters : []
        content {
          cluster     = gke_clusters.value.cluster
          internal_ip = gke_clusters.value.internal_ip
          proxy_url   = gke_clusters.value.proxy_url
        }
      }
    }
  }

  dynamic "custom_target" {
    for_each = each.value.custom_target != null ? [each.value.custom_target] : []
    content {
      custom_target_type = custom_target.value.custom_target_type
    }
  }

  dynamic "execution_configs" {
    for_each = each.value.execution_configs != null ? each.value.execution_configs : []
    content {
      artifact_storage = execution_configs.value.artifact_storage
      dynamic "default_pool" {
        for_each = execution_configs.value.default_pool != null ? [execution_configs.value.default_pool] : []
        content {
          artifact_storage = default_pool.value.artifact_storage
          service_account  = default_pool.value.service_account
        }
      }
      execution_timeout = execution_configs.value.execution_timeout
      dynamic "private_pool" {
        for_each = execution_configs.value.private_pool != null ? [execution_configs.value.private_pool] : []
        content {
          artifact_storage = private_pool.value.artifact_storage
          service_account  = private_pool.value.service_account
          worker_pool      = private_pool.value.worker_pool
        }
      }
      service_account = execution_configs.value.service_account
      usages          = execution_configs.value.usages
      verbose         = execution_configs.value.verbose
      worker_pool     = execution_configs.value.worker_pool
    }
  }

  dynamic "gke" {
    for_each = each.value.gke != null ? [each.value.gke] : []
    content {
      cluster      = gke.value.cluster
      dns_endpoint = gke.value.dns_endpoint
      internal_ip  = gke.value.internal_ip
      proxy_url    = gke.value.proxy_url
    }
  }

  dynamic "multi_target" {
    for_each = each.value.multi_target != null ? [each.value.multi_target] : []
    content {
      target_ids = multi_target.value.target_ids
    }
  }

  dynamic "run" {
    for_each = each.value.run != null ? [each.value.run] : []
    content {
      location = run.value.location
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
}

