# OpenapiClient::OutboundMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | message id in queue | [optional] |
| **body** | **String** | text message in queue | [optional] |
| **type** | **String** | type of the message in queue | [optional] |
| **last_try** | **Integer** | Last try time to send a message | [optional] |
| **metadata** | **Object** | Additional message data | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OutboundMessage.new(
  id: 1,
  body: Hey!,
  type: chat,
  last_try: 1528320463436,
  metadata: {}
)
```

