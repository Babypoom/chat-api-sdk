# OpenapiClient::WebhookStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msg_id** | **String** | message id | [optional] |
| **time** | **String** | creation date | [optional] |
| **status** | **String** | status name (\&quot;sent\&quot;, \&quot;not sent\&quot;, \&quot;queued\&quot;) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookStatus.new(
  msg_id: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F,
  time: 2019-10-07T21:40:55.000Z,
  status: sent
)
```

