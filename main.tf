resource "google_secret_manager_secret" "secret_id" {
  provider = google-beta
  for_each = var.secrets

  secret_id = each.key

  labels = var.labels

  replication {
    auto {}
  }
  project = var.project_id
}

resource "google_secret_manager_secret_version" "secret_value" {
  provider = google-beta
  for_each = var.secrets

  secret      = google_secret_manager_secret.secret_id[each.key].id
  secret_data = each.value
}
