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
    class SecurityruleProperties < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :description

      # @return
      attr_accessor :protocol

      # @return [String]
      attr_accessor :source_port_range

      # @return [String]
      attr_accessor :destination_port_range

      # @return [String]
      attr_accessor :source_address_prefix

      # @return [String]
      attr_accessor :destination_address_prefix

      # @return
      attr_accessor :access

      # @return
      attr_accessor :priority

      # @return
      attr_accessor :direction

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property protocol is nil' if @protocol.nil?
        fail ArgumentError, 'property source_port_range is nil' if @source_port_range.nil?
        fail ArgumentError, 'property destination_port_range is nil' if @destination_port_range.nil?
        fail ArgumentError, 'property source_address_prefix is nil' if @source_address_prefix.nil?
        fail ArgumentError, 'property destination_address_prefix is nil' if @destination_address_prefix.nil?
        fail ArgumentError, 'property access is nil' if @access.nil?
        fail ArgumentError, 'property priority is nil' if @priority.nil?
        fail ArgumentError, 'property direction is nil' if @direction.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.protocol
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:protocol] = serialized_property unless serialized_property.nil?

        serialized_property = object.source_port_range
        output_object[:sourcePortRange] = serialized_property unless serialized_property.nil?

        serialized_property = object.destination_port_range
        output_object[:destinationPortRange] = serialized_property unless serialized_property.nil?

        serialized_property = object.source_address_prefix
        output_object[:sourceAddressPrefix] = serialized_property unless serialized_property.nil?

        serialized_property = object.destination_address_prefix
        output_object[:destinationAddressPrefix] = serialized_property unless serialized_property.nil?

        serialized_property = object.access
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:access] = serialized_property unless serialized_property.nil?

        serialized_property = object.priority
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:priority] = serialized_property unless serialized_property.nil?

        serialized_property = object.direction
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:direction] = serialized_property unless serialized_property.nil?

        serialized_property = object.description
        output_object[:description] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        SecurityruleProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :description
        result.push :protocol
        result.push :source_port_range
        result.push :destination_port_range
        result.push :source_address_prefix
        result.push :destination_address_prefix
        result.push :access
        result.push :priority
        result.push :direction
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [SecurityruleProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:protocol)
          conf.protocol object[:protocol]
          object.delete :protocol
        end

        if object.key?(:source_port_range)
          conf.source_port_range object[:source_port_range]
          object.delete :source_port_range
        end

        if object.key?(:destination_port_range)
          conf.destination_port_range object[:destination_port_range]
          object.delete :destination_port_range
        end

        if object.key?(:source_address_prefix)
          conf.source_address_prefix object[:source_address_prefix]
          object.delete :source_address_prefix
        end

        if object.key?(:destination_address_prefix)
          conf.destination_address_prefix object[:destination_address_prefix]
          object.delete :destination_address_prefix
        end

        if object.key?(:access)
          conf.access object[:access]
          object.delete :access
        end

        if object.key?(:priority)
          conf.priority object[:priority]
          object.delete :priority
        end

        if object.key?(:direction)
          conf.direction object[:direction]
          object.delete :direction
        end

        if object.key?(:description)
          conf.description object[:description]
          object.delete :description
        end

        output_object
      end

      def get_name_template
        'sp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          SecurityruleProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param description
        #        String
        def description(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.description = props
            return
          end
          @parent.description
        end
        # @param protocol
        #        A string, one of 'Tcp','Udp','*'
        #        Expression
        def protocol(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.protocol" unless ['Tcp','Udp','*'].index(props)
            @parent.protocol = props
            return
          end
          if @parent.protocol.nil? and props.is_a? Azure::ARM::Expression
            @parent.protocol = props
          end
          @parent.protocol
        end
        # @param source_port_range
        #        String
        def source_port_range(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.source_port_range = props
            return
          end
          @parent.source_port_range
        end
        # @param destination_port_range
        #        String
        def destination_port_range(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.destination_port_range = props
            return
          end
          @parent.destination_port_range
        end
        # @param source_address_prefix
        #        String
        def source_address_prefix(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.source_address_prefix = props
            return
          end
          @parent.source_address_prefix
        end
        # @param destination_address_prefix
        #        String
        def destination_address_prefix(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.destination_address_prefix = props
            return
          end
          @parent.destination_address_prefix
        end
        # @param access
        #        A string, one of 'Allow','Deny'
        #        Expression
        def access(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.access" unless ['Allow','Deny'].index(props)
            @parent.access = props
            return
          end
          if @parent.access.nil? and props.is_a? Azure::ARM::Expression
            @parent.access = props
          end
          @parent.access
        end
        # @param priority
        #        Fixnum
        #        Expression
        def priority(props)
          if props.is_a? Fixnum or props.is_a? Azure::ARM::Expression
            @parent.priority = props
            return
          end
          if @parent.priority.nil? and props.is_a? Azure::ARM::Expression
            @parent.priority = props
          end
          @parent.priority
        end
        # @param direction
        #        A string, one of 'Inbound','Outbound'
        #        Expression
        def direction(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.direction" unless ['Inbound','Outbound'].index(props)
            @parent.direction = props
            return
          end
          if @parent.direction.nil? and props.is_a? Azure::ARM::Expression
            @parent.direction = props
          end
          @parent.direction
        end
        def create(init=nil,&block)
          @parent = SecurityruleProperties.new nil, init
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
