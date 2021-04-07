=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module OpenapiClient
  # An object that lists the fields changed in the request
  class InlineResponse2005Update
    attr_accessor :webhook_url

    attr_accessor :ack_notifications_on

    attr_accessor :chat_update_on

    attr_accessor :video_upload_on

    attr_accessor :proxy

    attr_accessor :guaranteed_hooks

    attr_accessor :ignore_old_messages

    attr_accessor :process_archive

    attr_accessor :instance_statuses

    attr_accessor :webhook_statuses

    attr_accessor :status_notifications_on

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'webhook_url' => :'webhookUrl',
        :'ack_notifications_on' => :'ackNotificationsOn',
        :'chat_update_on' => :'chatUpdateOn',
        :'video_upload_on' => :'videoUploadOn',
        :'proxy' => :'proxy',
        :'guaranteed_hooks' => :'guaranteedHooks',
        :'ignore_old_messages' => :'ignoreOldMessages',
        :'process_archive' => :'processArchive',
        :'instance_statuses' => :'instanceStatuses',
        :'webhook_statuses' => :'webhookStatuses',
        :'status_notifications_on' => :'statusNotificationsOn'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'webhook_url' => :'String',
        :'ack_notifications_on' => :'Boolean',
        :'chat_update_on' => :'Boolean',
        :'video_upload_on' => :'Boolean',
        :'proxy' => :'String',
        :'guaranteed_hooks' => :'Boolean',
        :'ignore_old_messages' => :'Boolean',
        :'process_archive' => :'Boolean',
        :'instance_statuses' => :'Boolean',
        :'webhook_statuses' => :'Boolean',
        :'status_notifications_on' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'webhook_url',
        :'ack_notifications_on',
        :'chat_update_on',
        :'video_upload_on',
        :'proxy',
        :'guaranteed_hooks',
        :'ignore_old_messages',
        :'process_archive',
        :'instance_statuses',
        :'webhook_statuses',
        :'status_notifications_on'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::InlineResponse2005Update` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::InlineResponse2005Update`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'webhook_url')
        self.webhook_url = attributes[:'webhook_url']
      end

      if attributes.key?(:'ack_notifications_on')
        self.ack_notifications_on = attributes[:'ack_notifications_on']
      end

      if attributes.key?(:'chat_update_on')
        self.chat_update_on = attributes[:'chat_update_on']
      end

      if attributes.key?(:'video_upload_on')
        self.video_upload_on = attributes[:'video_upload_on']
      end

      if attributes.key?(:'proxy')
        self.proxy = attributes[:'proxy']
      end

      if attributes.key?(:'guaranteed_hooks')
        self.guaranteed_hooks = attributes[:'guaranteed_hooks']
      end

      if attributes.key?(:'ignore_old_messages')
        self.ignore_old_messages = attributes[:'ignore_old_messages']
      end

      if attributes.key?(:'process_archive')
        self.process_archive = attributes[:'process_archive']
      end

      if attributes.key?(:'instance_statuses')
        self.instance_statuses = attributes[:'instance_statuses']
      end

      if attributes.key?(:'webhook_statuses')
        self.webhook_statuses = attributes[:'webhook_statuses']
      end

      if attributes.key?(:'status_notifications_on')
        self.status_notifications_on = attributes[:'status_notifications_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          webhook_url == o.webhook_url &&
          ack_notifications_on == o.ack_notifications_on &&
          chat_update_on == o.chat_update_on &&
          video_upload_on == o.video_upload_on &&
          proxy == o.proxy &&
          guaranteed_hooks == o.guaranteed_hooks &&
          ignore_old_messages == o.ignore_old_messages &&
          process_archive == o.process_archive &&
          instance_statuses == o.instance_statuses &&
          webhook_statuses == o.webhook_statuses &&
          status_notifications_on == o.status_notifications_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [webhook_url, ack_notifications_on, chat_update_on, video_upload_on, proxy, guaranteed_hooks, ignore_old_messages, process_archive, instance_statuses, webhook_statuses, status_notifications_on].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
