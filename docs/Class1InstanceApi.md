# OpenapiClient::Class1InstanceApi

All URIs are relative to *https://api.chat-api.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**call_retry**](Class1InstanceApi.md#call_retry) | **POST** /retry | Repeat the manual synchronization attempt with the device |
| [**expiry**](Class1InstanceApi.md#expiry) | **POST** /expiry | Updates the QR code after its expired |
| [**get_qr_code**](Class1InstanceApi.md#get_qr_code) | **GET** /qr_code | Direct link to QR-code in the form of an image, not base64. |
| [**get_settings**](Class1InstanceApi.md#get_settings) | **GET** /settings | Get settings |
| [**get_status**](Class1InstanceApi.md#get_status) | **GET** /status | Get the account status and QR code for authorization. |
| [**logout**](Class1InstanceApi.md#logout) | **POST** /logout | Logout from WhatsApp Web to get new QR code. |
| [**reboot**](Class1InstanceApi.md#reboot) | **POST** /reboot | Reboot your whatsapp instance. |
| [**set_settings**](Class1InstanceApi.md#set_settings) | **POST** /settings | Set settings |
| [**takeover**](Class1InstanceApi.md#takeover) | **POST** /takeover | Returns the active session if the device has connected another instance of Web WhatsApp |


## call_retry

> <InlineResponse2003> call_retry

Repeat the manual synchronization attempt with the device

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Repeat the manual synchronization attempt with the device
  result = api_instance.call_retry
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->call_retry: #{e}"
end
```

#### Using the call_retry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2003>, Integer, Hash)> call_retry_with_http_info

```ruby
begin
  # Repeat the manual synchronization attempt with the device
  data, status_code, headers = api_instance.call_retry_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2003>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->call_retry_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## expiry

> <InlineResponse2002> expiry

Updates the QR code after its expired

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Updates the QR code after its expired
  result = api_instance.expiry
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->expiry: #{e}"
end
```

#### Using the expiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2002>, Integer, Hash)> expiry_with_http_info

```ruby
begin
  # Updates the QR code after its expired
  data, status_code, headers = api_instance.expiry_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2002>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->expiry_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_qr_code

> File get_qr_code

Direct link to QR-code in the form of an image, not base64.

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Direct link to QR-code in the form of an image, not base64.
  result = api_instance.get_qr_code
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_qr_code: #{e}"
end
```

#### Using the get_qr_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_qr_code_with_http_info

```ruby
begin
  # Direct link to QR-code in the form of an image, not base64.
  data, status_code, headers = api_instance.get_qr_code_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_qr_code_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## get_settings

> <Settings> get_settings

Get settings

**webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Get settings
  result = api_instance.get_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Settings>, Integer, Hash)> get_settings_with_http_info

```ruby
begin
  # Get settings
  data, status_code, headers = api_instance.get_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Settings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Settings**](Settings.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status

> <InstanceStatus> get_status(opts)

Get the account status and QR code for authorization.

Reauthorization is necessary only in case of changing the device or manually pressing \"Logout on all devices\" on the phone. Keep the WhastsApp application open during authorization.  Instance statuses:  **authenticated** -  Authorization passed successfully  **init** -  Initial status   **loading** -  The system is still loading, try again in 1 minute   **got qr code** -  There is a QR code and you need to take a picture of it in the Whatsapp application by going to Menu -> WhatsApp Web -> Add. QR code is valid for one minute.   [Example showing base64 images on a page.](https://stackoverflow.com/questions/31526085/how-to-encode-an-image-into-an-html-file)  Manually easier to get [QR-code as an image](/#getQRCode)    When you request the status of the instance in standby mode (status **\"init\"**), it will automatically turn on. To avoid this behavior, use the **no_wakeup** parameter

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

api_instance = OpenapiClient::Class1InstanceApi.new
opts = {
  full: true, # Boolean | Get full information on the current status
  no_wakeup: true # Boolean | Ignore autowakeup
}

begin
  # Get the account status and QR code for authorization.
  result = api_instance.get_status(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceStatus>, Integer, Hash)> get_status_with_http_info(opts)

```ruby
begin
  # Get the account status and QR code for authorization.
  data, status_code, headers = api_instance.get_status_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->get_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full** | **Boolean** | Get full information on the current status | [optional][default to false] |
| **no_wakeup** | **Boolean** | Ignore autowakeup | [optional][default to false] |

### Return type

[**InstanceStatus**](InstanceStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout

> <InlineResponse200> logout

Logout from WhatsApp Web to get new QR code.

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Logout from WhatsApp Web to get new QR code.
  result = api_instance.logout
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Logout from WhatsApp Web to get new QR code.
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reboot

> <InlineResponse2004> reboot

Reboot your whatsapp instance.

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Reboot your whatsapp instance.
  result = api_instance.reboot
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->reboot: #{e}"
end
```

#### Using the reboot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2004>, Integer, Hash)> reboot_with_http_info

```ruby
begin
  # Reboot your whatsapp instance.
  data, status_code, headers = api_instance.reboot_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2004>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->reboot_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_settings

> <InlineResponse2005> set_settings(settings)

Set settings

**webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.

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

api_instance = OpenapiClient::Class1InstanceApi.new
settings = OpenapiClient::Settings.new # Settings | 

begin
  # Set settings
  result = api_instance.set_settings(settings)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->set_settings: #{e}"
end
```

#### Using the set_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2005>, Integer, Hash)> set_settings_with_http_info(settings)

```ruby
begin
  # Set settings
  data, status_code, headers = api_instance.set_settings_with_http_info(settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2005>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->set_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**Settings**](Settings.md) |  |  |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded
- **Accept**: application/json


## takeover

> <InlineResponse2001> takeover

Returns the active session if the device has connected another instance of Web WhatsApp

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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  # Returns the active session if the device has connected another instance of Web WhatsApp
  result = api_instance.takeover
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->takeover: #{e}"
end
```

#### Using the takeover_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2001>, Integer, Hash)> takeover_with_http_info

```ruby
begin
  # Returns the active session if the device has connected another instance of Web WhatsApp
  data, status_code, headers = api_instance.takeover_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class1InstanceApi->takeover_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

