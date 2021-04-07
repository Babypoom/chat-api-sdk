# OpenapiClient::Class4WebhooksApi

All URIs are relative to *https://api.chat-api.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**set_webhook**](Class4WebhooksApi.md#set_webhook) | **POST** /webhook | Sets the URL for receiving webhook |


## set_webhook

> <SetWebhookStatus> set_webhook(webhook_url)

Sets the URL for receiving webhook

Sets the URL for receiving webhook notifications of new messages and message delivery events (ack).  **API responses in \"Callbacks\" tab**

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class4WebhooksApi.new
webhook_url = OpenapiClient::WebhookUrl.new({webhook_url: 'webhook_url_example'}) # WebhookUrl | 

begin
  # Sets the URL for receiving webhook
  result = api_instance.set_webhook(webhook_url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class4WebhooksApi->set_webhook: #{e}"
end
```

#### Using the set_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetWebhookStatus>, Integer, Hash)> set_webhook_with_http_info(webhook_url)

```ruby
begin
  # Sets the URL for receiving webhook
  data, status_code, headers = api_instance.set_webhook_with_http_info(webhook_url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetWebhookStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class4WebhooksApi->set_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | [**WebhookUrl**](WebhookUrl.md) |  |  |

### Return type

[**SetWebhookStatus**](SetWebhookStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json

