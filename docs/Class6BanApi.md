# OpenapiClient::Class6BanApi

All URIs are relative to *https://api.chat-api.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ban_test**](Class6BanApi.md#ban_test) | **POST** /banTest | Test ban settings |
| [**get_ban_settings**](Class6BanApi.md#get_ban_settings) | **GET** /banSettings | Get settings |
| [**set_ban_settings**](Class6BanApi.md#set_ban_settings) | **POST** /banSettings | Set settings |


## ban_test

> <BanTestStatus> ban_test(ban_test_action)

Test ban settings

Send the phone number to find out if the instance is banning it

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

api_instance = OpenapiClient::Class6BanApi.new
ban_test_action = OpenapiClient::BanTestAction.new({phone: 'phone_example'}) # BanTestAction | 

begin
  # Test ban settings
  result = api_instance.ban_test(ban_test_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->ban_test: #{e}"
end
```

#### Using the ban_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BanTestStatus>, Integer, Hash)> ban_test_with_http_info(ban_test_action)

```ruby
begin
  # Test ban settings
  data, status_code, headers = api_instance.ban_test_with_http_info(ban_test_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BanTestStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->ban_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ban_test_action** | [**BanTestAction**](BanTestAction.md) |  |  |

### Return type

[**BanTestStatus**](BanTestStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded
- **Accept**: application/json


## get_ban_settings

> <BanSettings> get_ban_settings

Get settings

**banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.

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

api_instance = OpenapiClient::Class6BanApi.new

begin
  # Get settings
  result = api_instance.get_ban_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->get_ban_settings: #{e}"
end
```

#### Using the get_ban_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BanSettings>, Integer, Hash)> get_ban_settings_with_http_info

```ruby
begin
  # Get settings
  data, status_code, headers = api_instance.get_ban_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BanSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->get_ban_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BanSettings**](BanSettings.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_ban_settings

> <BanSettings> set_ban_settings(ban_settings)

Set settings

**banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.

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

api_instance = OpenapiClient::Class6BanApi.new
ban_settings = OpenapiClient::BanSettings.new({ban_phone_mask: '^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$', pre_ban_message: 'Do not write to me, otherwise I will send you a ban', set: false}) # BanSettings | 

begin
  # Set settings
  result = api_instance.set_ban_settings(ban_settings)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->set_ban_settings: #{e}"
end
```

#### Using the set_ban_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BanSettings>, Integer, Hash)> set_ban_settings_with_http_info(ban_settings)

```ruby
begin
  # Set settings
  data, status_code, headers = api_instance.set_ban_settings_with_http_info(ban_settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BanSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class6BanApi->set_ban_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ban_settings** | [**BanSettings**](BanSettings.md) |  |  |

### Return type

[**BanSettings**](BanSettings.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded
- **Accept**: application/json

