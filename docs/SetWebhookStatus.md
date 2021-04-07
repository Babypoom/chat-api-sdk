# OpenapiClient::SetWebhookStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set** | **Boolean** | Flag indicating that the current request has changed webhook | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetWebhookStatus.new(
  set: true,
  message: https://bin.chat-api.com/1f9aj261
)
```

