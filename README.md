# terraform-gcp-pubsub-topic
Module to create a PubSub topic and provide permissions to access the topic to a user-supplied set of service accounts

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_pubsub_topic.topic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic) | resource |
| [google_pubsub_topic_iam_binding.binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic_iam_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | prod or staging | `string` | n/a | yes |
| <a name="input_retention"></a> [retention](#input\_retention) | How long the topic should retain messages for. Default is 7 days. | `string` | `"604800s"` | no |
| <a name="input_service_account_members"></a> [service\_account\_members](#input\_service\_account\_members) | List of service account members (of the format serviceAccount:{email}) to grant permission to publish to this topic | `list(string)` | n/a | yes |
| <a name="input_topic_name"></a> [topic\_name](#input\_topic\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->