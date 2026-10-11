variable "clouddeploy_targets" {
  description = <<EOT
Map of clouddeploy_targets, attributes below
Required:
    - location
    - name
Optional:
    - annotations
    - deletion_policy
    - deploy_parameters
    - description
    - labels
    - project
    - require_approval
    - anthos_cluster (block):
        - membership (optional)
    - associated_entities (block):
        - anthos_clusters (optional, block):
            - membership (optional)
        - entity_id (required)
        - gke_clusters (optional, block):
            - cluster (optional)
            - internal_ip (optional)
            - proxy_url (optional)
    - custom_target (block):
        - custom_target_type (required)
    - execution_configs (block):
        - artifact_storage (optional)
        - default_pool (optional, block):
            - artifact_storage (optional)
            - service_account (optional)
        - execution_timeout (optional)
        - private_pool (optional, block):
            - artifact_storage (optional)
            - service_account (optional)
            - worker_pool (required)
        - service_account (optional)
        - usages (required)
        - verbose (optional)
        - worker_pool (optional)
    - gke (block):
        - cluster (optional)
        - dns_endpoint (optional)
        - internal_ip (optional)
        - proxy_url (optional)
    - multi_target (block):
        - target_ids (required)
    - run (block):
        - location (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location          = string
    name              = string
    annotations       = optional(map(string))
    deletion_policy   = optional(string)
    deploy_parameters = optional(map(string))
    description       = optional(string)
    labels            = optional(map(string))
    project           = optional(string)
    require_approval  = optional(bool)
    anthos_cluster = optional(object({
      membership = optional(string)
    }))
    associated_entities = optional(list(object({
      anthos_clusters = optional(list(object({
        membership = optional(string)
      })))
      entity_id = string
      gke_clusters = optional(list(object({
        cluster     = optional(string)
        internal_ip = optional(bool)
        proxy_url   = optional(string)
      })))
    })))
    custom_target = optional(object({
      custom_target_type = string
    }))
    execution_configs = optional(list(object({
      artifact_storage = optional(string)
      default_pool = optional(object({
        artifact_storage = optional(string)
        service_account  = optional(string)
      }))
      execution_timeout = optional(string)
      private_pool = optional(object({
        artifact_storage = optional(string)
        service_account  = optional(string)
        worker_pool      = string
      }))
      service_account = optional(string)
      usages          = list(string)
      verbose         = optional(bool)
      worker_pool     = optional(string)
    })))
    gke = optional(object({
      cluster      = optional(string)
      dns_endpoint = optional(bool)
      internal_ip  = optional(bool)
      proxy_url    = optional(string)
    }))
    multi_target = optional(object({
      target_ids = list(string)
    }))
    run = optional(object({
      location = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

