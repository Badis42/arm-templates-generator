# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../../arm/expression'
require_relative '../../arm/models/type_base'

module Azure::ARM

    #
    # Model object.
    #
    # noinspection RubyResolve,RubyResolve,RubyResolve,RubyResolve
    class KeyVaultReference < Azure::ARM::TypeBase
      # @return [KeyVaultReferenceKeyVault]
      attr_accessor :key_vault

      # @return [String]
      attr_accessor :secret_name

      # @return [String]
      attr_accessor :secret_version

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        fail ArgumentError, 'property key_vault is nil' if @key_vault.nil?
        fail ArgumentError, 'property secret_name is nil' if @secret_name.nil?
        @key_vault.validate unless @key_vault.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        object.validate

        serialized_property = object.key_vault
        unless serialized_property.nil?
          serialized_property = serialized_property.to_h
        end
        output_object[:keyVault] = serialized_property unless serialized_property.nil?

        serialized_property = object.secret_name
        output_object[:secretName] = serialized_property unless serialized_property.nil?

        serialized_property = object.secret_version
        output_object[:secretVersion] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        KeyVaultReference.serialize_object(hash,self)
        hash
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [KeyVaultReference] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?

        deserialized_property = object[:keyVault]
        unless deserialized_property.nil?
          deserialized_property = KeyVaultReferenceKeyVault.new(self,deserialized_property)
        end
        output_object.key_vault = deserialized_property

        deserialized_property = object[:secretName]
        output_object.secret_name = deserialized_property

        deserialized_property = object[:secretVersion]
        output_object.secret_version = deserialized_property

        output_object
      end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          KeyVaultReference.deserialize_object(self, init)
        end
      end
    end
end
