/* Required */
variable "topic_name" {
    type = string
}

variable "environment" {
    type = string
    description = "prod or staging"
}

variable "service_account_members" {
    type = list(string)
    description = "List of service account members (of the format serviceAccount:{email}) to grant permission to publish to this topic"
}

/* Optional */
variable "retention" {
    type = string
    default = "604800s"
    description = "How long the topic should retain messages for. Default is 7 days."
}
