# OpenapiClient::OutboundMessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_messages** | **Integer** | Total number of messages in the queue | [optional] |
| **first100** | [**Array&lt;OutboundMessage&gt;**](OutboundMessage.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OutboundMessages.new(
  total_messages: 199,
  first100: null
)
```

