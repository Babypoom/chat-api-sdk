# OpenapiClient::ReadChatStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **read** | **Boolean** |  | [optional] |
| **message** | **String** | Chat reading status | [optional] |
| **chat_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReadChatStatus.new(
  read: true,
  message: null,
  chat_id: 1493046918@g.us-13216468942@c.us
)
```

