# OpenapiClient::InstanceStatusAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **act** | **String** | Method name | [optional] |
| **label** | **String** | Action caption for the button | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstanceStatusAction.new(
  act: logout,
  label: Logout
)
```

