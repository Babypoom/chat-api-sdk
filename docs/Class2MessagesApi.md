# OpenapiClient::Class2MessagesApi

All URIs are relative to *https://api.chat-api.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**forward_message**](Class2MessagesApi.md#forward_message) | **POST** /forwardMessage | Forwarding messages to a new or existing chat. |
| [**get_messages**](Class2MessagesApi.md#get_messages) | **GET** /messages | Get a list of messages. |
| [**send_contact**](Class2MessagesApi.md#send_contact) | **POST** /sendContact | Sending a contact or contact list to a new or existing chat. |
| [**send_file**](Class2MessagesApi.md#send_file) | **POST** /sendFile | Send a file to a new or existing chat. |
| [**send_link**](Class2MessagesApi.md#send_link) | **POST** /sendLink | Send text with link and link&#39;s preview to a new or existing chat. |
| [**send_location**](Class2MessagesApi.md#send_location) | **POST** /sendLocation | Sending a location to a new or existing chat. |
| [**send_message**](Class2MessagesApi.md#send_message) | **POST** /sendMessage | Send a message to a new or existing chat. |
| [**send_ptt**](Class2MessagesApi.md#send_ptt) | **POST** /sendPTT | Send a ptt-audio to a new or existing chat. |
| [**send_v_card**](Class2MessagesApi.md#send_v_card) | **POST** /sendVCard | Sending a vcard to a new or existing chat. |


## forward_message

> <SendMessageStatus> forward_message(forward_message_request)

Forwarding messages to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
forward_message_request = OpenapiClient::ForwardMessageRequest.new({message_id: 'message_id_example'}) # ForwardMessageRequest | 

begin
  # Forwarding messages to a new or existing chat.
  result = api_instance.forward_message(forward_message_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->forward_message: #{e}"
end
```

#### Using the forward_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> forward_message_with_http_info(forward_message_request)

```ruby
begin
  # Forwarding messages to a new or existing chat.
  data, status_code, headers = api_instance.forward_message_with_http_info(forward_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->forward_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forward_message_request** | [**ForwardMessageRequest**](ForwardMessageRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## get_messages

> <Messages> get_messages(opts)

Get a list of messages.

To receive only new messages, pass the **lastMessageNumber** parameter from the last query.  Files from messages are guaranteed to be stored only for 30 days and can be deleted. Download the files as soon as you get to your server.

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

api_instance = OpenapiClient::Class2MessagesApi.new
opts = {
  last_message_number: 0, # Integer | The lastMessageNumber parameter from the last response
  last: true, # Boolean | Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored.
  chat_id: '17633123456@c.us', # String | Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group.
  limit: 100, # Integer | Sets length of the message list. Default 100. With value 0 returns all messages.
  min_time: 946684800, # Integer | Filter messages received after specified time. Example: 946684800.
  max_time: 946684800 # Integer | Filter messages received before specified time. Example: 946684800.
}

begin
  # Get a list of messages.
  result = api_instance.get_messages(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->get_messages: #{e}"
end
```

#### Using the get_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Messages>, Integer, Hash)> get_messages_with_http_info(opts)

```ruby
begin
  # Get a list of messages.
  data, status_code, headers = api_instance.get_messages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Messages>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->get_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_message_number** | **Integer** | The lastMessageNumber parameter from the last response | [optional] |
| **last** | **Boolean** | Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored. | [optional][default to false] |
| **chat_id** | **String** | Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group. | [optional] |
| **limit** | **Integer** | Sets length of the message list. Default 100. With value 0 returns all messages. | [optional] |
| **min_time** | **Integer** | Filter messages received after specified time. Example: 946684800. | [optional] |
| **max_time** | **Integer** | Filter messages received before specified time. Example: 946684800. | [optional] |

### Return type

[**Messages**](Messages.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_contact

> <SendMessageStatus> send_contact(send_contact_request)

Sending a contact or contact list to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_contact_request = OpenapiClient::SendContactRequest.new({contact_id: 'contact_id_example'}) # SendContactRequest | 

begin
  # Sending a contact or contact list to a new or existing chat.
  result = api_instance.send_contact(send_contact_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_contact: #{e}"
end
```

#### Using the send_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_contact_with_http_info(send_contact_request)

```ruby
begin
  # Sending a contact or contact list to a new or existing chat.
  data, status_code, headers = api_instance.send_contact_with_http_info(send_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_contact_request** | [**SendContactRequest**](SendContactRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_file

> <SendMessageStatus> send_file(send_file_request)

Send a file to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_file_request = OpenapiClient::SendFileRequest.new({body: 'body_example', filename: 'filename_example'}) # SendFileRequest | 

begin
  # Send a file to a new or existing chat.
  result = api_instance.send_file(send_file_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_file: #{e}"
end
```

#### Using the send_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_file_with_http_info(send_file_request)

```ruby
begin
  # Send a file to a new or existing chat.
  data, status_code, headers = api_instance.send_file_with_http_info(send_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_file_request** | [**SendFileRequest**](SendFileRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_link

> <SendMessageStatus> send_link(send_link_request)

Send text with link and link's preview to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_link_request = OpenapiClient::SendLinkRequest.new({body: 'https://wikimedia.org', preview_base64: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQ...', title: 'title_example'}) # SendLinkRequest | 

begin
  # Send text with link and link's preview to a new or existing chat.
  result = api_instance.send_link(send_link_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_link: #{e}"
end
```

#### Using the send_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_link_with_http_info(send_link_request)

```ruby
begin
  # Send text with link and link's preview to a new or existing chat.
  data, status_code, headers = api_instance.send_link_with_http_info(send_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_link_request** | [**SendLinkRequest**](SendLinkRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_location

> <SendMessageStatus> send_location(send_location_request)

Sending a location to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_location_request = OpenapiClient::SendLocationRequest.new({lat: 3.56, lng: 3.56, address: 'address_example'}) # SendLocationRequest | 

begin
  # Sending a location to a new or existing chat.
  result = api_instance.send_location(send_location_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_location: #{e}"
end
```

#### Using the send_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_location_with_http_info(send_location_request)

```ruby
begin
  # Sending a location to a new or existing chat.
  data, status_code, headers = api_instance.send_location_with_http_info(send_location_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_location_request** | [**SendLocationRequest**](SendLocationRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_message

> <SendMessageStatus> send_message(send_message_request)

Send a message to a new or existing chat.

The message will be added to the queue for sending and delivered even if the phone is disconnected from the Internet or authorization is not passed.  Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_message_request = OpenapiClient::SendMessageRequest.new({body: 'body_example'}) # SendMessageRequest | 

begin
  # Send a message to a new or existing chat.
  result = api_instance.send_message(send_message_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_message: #{e}"
end
```

#### Using the send_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_message_with_http_info(send_message_request)

```ruby
begin
  # Send a message to a new or existing chat.
  data, status_code, headers = api_instance.send_message_with_http_info(send_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_message_request** | [**SendMessageRequest**](SendMessageRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_ptt

> <SendMessageStatus> send_ptt(send_ptt_request)

Send a ptt-audio to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_ptt_request = OpenapiClient::SendPTTRequest.new({audio: 'audio_example'}) # SendPTTRequest | 

begin
  # Send a ptt-audio to a new or existing chat.
  result = api_instance.send_ptt(send_ptt_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_ptt: #{e}"
end
```

#### Using the send_ptt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_ptt_with_http_info(send_ptt_request)

```ruby
begin
  # Send a ptt-audio to a new or existing chat.
  data, status_code, headers = api_instance.send_ptt_with_http_info(send_ptt_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_ptt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_ptt_request** | [**SendPTTRequest**](SendPTTRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_v_card

> <SendMessageStatus> send_v_card(send_v_card_request)

Sending a vcard to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

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

api_instance = OpenapiClient::Class2MessagesApi.new
send_v_card_request = OpenapiClient::SendVCardRequest.new({vcard: 'vcard_example'}) # SendVCardRequest | 

begin
  # Sending a vcard to a new or existing chat.
  result = api_instance.send_v_card(send_v_card_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_v_card: #{e}"
end
```

#### Using the send_v_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageStatus>, Integer, Hash)> send_v_card_with_http_info(send_v_card_request)

```ruby
begin
  # Sending a vcard to a new or existing chat.
  data, status_code, headers = api_instance.send_v_card_with_http_info(send_v_card_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling Class2MessagesApi->send_v_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_v_card_request** | [**SendVCardRequest**](SendVCardRequest.md) |  |  |

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json

