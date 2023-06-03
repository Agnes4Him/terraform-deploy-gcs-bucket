provider "google" {
credentials = file(var.key_path)
project = var.project_id
}

resource "google_storage_bucket" "de-gcs-bucket" {
 name = "my-de-gcs-bucket"
 location = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

