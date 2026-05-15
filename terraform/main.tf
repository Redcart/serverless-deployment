resource "google_cloud_run_v2_service" "cloud-run-service" {
  name                = var.cloud_run_service_name
  location            = var.region
  ingress             = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"
  deletion_protection = false
  template {

    service_account = var.sa_cloud_run

    containers {
      image = var.container_image

      env {
        name  = "GCP_PROJECT_ID"
        value = var.project_id
      }

      env {
        name  = "INPUT_DATASET"
        value = var.input_dataset
      }

      env {
        name  = "OUTPUT_DATASET"
        value = var.output_dataset
      }

      env {
        name = "API_KEY"

        value_source {
          secret_key_ref {
            secret  = var.api_key_secret_name
            version = var.api_key_secret_version
          }
        }
      }
    }
  }
}