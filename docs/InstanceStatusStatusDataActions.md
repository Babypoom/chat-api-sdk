# OpenapiClient::InstanceStatusStatusDataActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | [**InstanceStatusAction**](InstanceStatusAction.md) |  | [optional] |
| **_retry** | [**InstanceStatusAction**](InstanceStatusAction.md) |  | [optional] |
| **logout** | [**InstanceStatusAction**](InstanceStatusAction.md) |  | [optional] |
| **takeover** | [**InstanceStatusAction**](InstanceStatusAction.md) |  | [optional] |
| **learn_more** | [**InstanceStatusLink**](InstanceStatusLink.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstanceStatusStatusDataActions.new(
  expiry: null,
  _retry: null,
  logout: null,
  takeover: null,
  learn_more: null
)
```

