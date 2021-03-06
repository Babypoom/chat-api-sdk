=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::Class3ChatsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Class3ChatsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::Class3ChatsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Class3ChatsApi' do
    it 'should create an instance of Class3ChatsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::Class3ChatsApi)
    end
  end

  # unit tests for add_group_participant
  # Adding participant to a group
  # @param group_participant_action 
  # @param [Hash] opts the optional parameters
  # @return [GroupParticipantStatus]
  describe 'add_group_participant test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for demote_group_participant
  # Demote group participant
  # @param group_participant_action 
  # @param [Hash] opts the optional parameters
  # @return [GroupParticipantStatus]
  describe 'demote_group_participant test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_chats
  # Get the chat list.
  # The chat list includes avatars.
  # @param [Hash] opts the optional parameters
  # @return [Chats]
  describe 'get_chats test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for group
  # Creates a group and sends the message to the created group.
  # The group will be added to the queue for sending and sooner or later it will be created, even if the phone is disconnected from the Internet or the authorization is not passed.   2 Oct 2018 update: chatId parameter will be returned if group was created on your phone within 20 second.
  # @param create_group_action 
  # @param [Hash] opts the optional parameters
  # @return [CreateGroupStatus]
  describe 'group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for promote_group_participant
  # Make participant in the group an administrator
  # @param group_participant_action 
  # @param [Hash] opts the optional parameters
  # @return [GroupParticipantStatus]
  describe 'promote_group_participant test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read_chat
  # Open chat for reading messages
  # Use this method to make users see their messages read.
  # @param read_chat_action 
  # @param [Hash] opts the optional parameters
  # @return [ReadChatStatus]
  describe 'read_chat test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_group_participant
  # Remove participant from a group
  # @param group_participant_action 
  # @param [Hash] opts the optional parameters
  # @return [GroupParticipantStatus]
  describe 'remove_group_participant test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
