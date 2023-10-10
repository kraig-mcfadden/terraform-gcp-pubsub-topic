resource "google_pubsub_topic" "topic" {
  name = "${var.topic_name}-${var.environment}"
  message_retention_duration = var.retention
}

resource "google_pubsub_topic_iam_binding" "binding" {
  project = google_pubsub_topic.topic.project
  topic = google_pubsub_topic.topic.name
  role = "roles/publisher"
  members = var.service_account_members
}
