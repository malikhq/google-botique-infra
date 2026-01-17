resource "google_access_context_manager_access_level" "name" {
  
    parent = "accessPolicies/${var.access_policy_id}"
    title  = var.access_level_title
    
    basic {
        conditions {
        ip_subnetworks = var.ip_subnetworks
        device_policy {
            require_screen_lock = var.require_screen_lock
            os_constraints {
            os_type    = var.os_type
            minimum_version = var.minimum_version
            }
        }
        }
    }
}