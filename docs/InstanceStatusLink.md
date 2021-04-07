# OpenapiClient::InstanceStatusLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Link caption for the button | [optional] |
| **link** | **String** | Reference URL instead of method | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstanceStatusLink.new(
  label: Learn more,
  link: https://wikipedia.org
)
```

