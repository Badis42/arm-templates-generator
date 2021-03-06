# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Network
    #
    # Model object.
    #
    class RouteProperties < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :address_prefix

      # @return
      attr_accessor :next_hop_type

      # @return [String]
      attr_accessor :next_hop_ip_address

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property address_prefix is nil' if @address_prefix.nil?
        fail ArgumentError, 'property next_hop_type is nil' if @next_hop_type.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.address_prefix
        output_object[:addressPrefix] = serialized_property unless serialized_property.nil?

        serialized_property = object.next_hop_type
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:nextHopType] = serialized_property unless serialized_property.nil?

        serialized_property = object.next_hop_ip_address
        output_object[:nextHopIpAddress] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        RouteProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :address_prefix
        result.push :next_hop_type
        result.push :next_hop_ip_address
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [RouteProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:address_prefix)
          conf.address_prefix object[:address_prefix]
          object.delete :address_prefix
        end

        if object.key?(:next_hop_type)
          conf.next_hop_type object[:next_hop_type]
          object.delete :next_hop_type
        end

        if object.key?(:next_hop_ip_address)
          conf.next_hop_ip_address object[:next_hop_ip_address]
          object.delete :next_hop_ip_address
        end

        output_object
      end

      def get_name_template
        'rp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          RouteProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param address_prefix
        #        String
        def address_prefix(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.address_prefix = props
            return
          end
          @parent.address_prefix
        end
        # @param next_hop_type
        #        A string, one of 'VirtualNetworkGateway','VnetLocal','Internet','VirtualAppliance','HyperNetGateway','None'
        #        Expression
        def next_hop_type(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.next_hop_type" unless ['VirtualNetworkGateway','VnetLocal','Internet','VirtualAppliance','HyperNetGateway','None'].index(props)
            @parent.next_hop_type = props
            return
          end
          if @parent.next_hop_type.nil? and props.is_a? Azure::ARM::Expression
            @parent.next_hop_type = props
          end
          @parent.next_hop_type
        end
        # @param next_hop_ip_address
        #        String
        def next_hop_ip_address(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.next_hop_ip_address = props
            return
          end
          @parent.next_hop_ip_address
        end
        def create(init=nil,&block)
          @parent = RouteProperties.new nil, init
          self.instance_exec(@parent,&block) if block
          @parent
        end
      end
      def configure(&block)
        conf = Configurator.new
        conf.parent = self
        conf.instance_exec(self,&block) if block
        self
      end
    end
end
