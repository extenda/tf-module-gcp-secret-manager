output secrets_content {
  description = "The actual value of the secret"
  value = {
    for key, value in google_secret_manager_secret_version.secret_value :
    key => value.secret_data
  }
  sensitive = true
}
