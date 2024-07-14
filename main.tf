provider "google" {
  project = "YOUR_PROJECT_ID"
  region  = "us-central1"
}

resource "google_storage_bucket" "website_bucket" {
  name          = "my-website-bucket"
  location      = "US"
  website {
    main_page_suffix = "index.html"
  }
}

resource "google_storage_bucket_object" "index_html" {
  name   = "index.html"
  bucket = google_storage_bucket.website_bucket.name
  source = "index.html"
}

output "bucket_url" {
  value = "http://${google_storage_bucket.website_bucket.name}.storage.googleapis.com"
}
