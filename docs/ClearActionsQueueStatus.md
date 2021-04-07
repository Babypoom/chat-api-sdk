# OpenapiClient::ClearActionsQueueStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Actions queue clear status | [optional] |
| **actions_example** | **Array&lt;String&gt;** | Type of the first hundred actions from the cleaned queue | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ClearActionsQueueStatus.new(
  message: Cleared 3 actions,
  actions_example: null
)
```

