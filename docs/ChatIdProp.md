# OpenapiClient::ChatIdProp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | **Required if phone is not set**  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group. Used instead of the phone parameter. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ChatIdProp.new(
  chat_id: null
)
```

