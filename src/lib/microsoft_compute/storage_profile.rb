# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Compute
    #
    # Model object.
    #
    class StorageProfile < Azure::ARM::TypeBase

      # @return
      attr_accessor :image_reference

      # @return [OsDisk]
      attr_accessor :os_disk

      # @return [Array<DataDisk>]
      attr_writer :data_disks
      def data_disks(name=nil)
        if name and @data_disks and @data_disks.is_a? Array
          return @data_disks.find { | p | p.name == name } if name.is_a? String
          return @data_disks[name] if name.is_a? Integer
        end
        @data_disks
      end

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property os_disk is nil' if @os_disk.nil?
        @os_disk.validate unless @os_disk.nil?
        @data_disks.each{ |e| e.validate if e.respond_to?(:validate) } unless @data_disks.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.os_disk
        unless serialized_property.nil?
          serialized_property = serialized_property.to_h
        end
        output_object[:osDisk] = serialized_property unless serialized_property.nil?

        serialized_property = object.image_reference
        if serialized_property.is_a? ImageReference
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:imageReference] = serialized_property unless serialized_property.nil?

        serialized_property = object.data_disks
        unless serialized_property.nil?
          serializedarray = []
          serialized_property.each do |element|
            unless element.nil?
              element = element.to_h
            end
            serializedarray.push(element)
          end
          serialized_property = serializedarray
        end
        output_object[:dataDisks] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        StorageProfile.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :image_reference
        result.push :os_disk
        result.push :data_disks
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [StorageProfile] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:os_disk)
          conf.os_disk object[:os_disk]
          object.delete :os_disk
        end

        if object.key?(:image_reference)
          conf.image_reference object[:image_reference]
          object.delete :image_reference
        end

        if object.key?(:data_disks)
          conf.data_disks object[:data_disks]
          object.delete :data_disks
        end

        output_object
      end

      def get_name_template
        'sp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          StorageProfile.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param image_reference
        #        ImageReference
        #        Expression
        def image_reference(props)
          if @parent.image_reference.nil? and props.is_a? ImageReference
            @parent.image_reference = props
            @parent.image_reference.parent = @parent
            @parent.image_reference._rsrcpath = 'imageReference'
          end
          if @parent.image_reference.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, ImageReference)
            @parent.image_reference = ImageReference.new(@parent, props)
            @parent.image_reference._rsrcpath = 'imageReference'
          end
          if @parent.image_reference.nil? and props.is_a? Azure::ARM::Expression
            @parent.image_reference = props
          end
          @parent.image_reference
        end
        # @param os_disk
        #        OsDisk
        def os_disk(props)
          if @parent.os_disk.nil? and props.is_a? OsDisk
            @parent.os_disk = props
            @parent.os_disk.parent = @parent
            @parent.os_disk._rsrcpath = 'osDisk'
          end
          if @parent.os_disk.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OsDisk)
            @parent.os_disk = OsDisk.new(@parent, props)
            @parent.os_disk._rsrcpath = 'osDisk'
          end
          @parent.os_disk
        end
        # @param data_disks
        #        Array<DataDisk>
        def data_disks(props)
          if props.is_a? Array
            @parent.data_disks = Array.new if @parent.data_disks.nil?
            props.each { |p| @parent.data_disks.push _data_disks_datadisk(p) }
            return @parent.data_disks
          end
          _element = nil
          if _element.nil? and props.is_a? DataDisk
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'dataDisks'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, DataDisk)
            _element = DataDisk.new(@parent, props)
            _element._rsrcpath = 'dataDisks'
          end
          unless _element.nil?
            @parent.data_disks = Array.new if @parent.data_disks.nil?
            @parent.data_disks.push _element
          end
          @parent.data_disks
        end
        def _data_disks_datadisk(props)
          if props.is_a? DataDisk
            props.parent = @parent
            props._rsrcpath = 'dataDisks'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, DataDisk)
            _properties = DataDisk.new(@parent, props)
            _properties._rsrcpath = 'dataDisks'
            return _properties
          end
        end
        def create(init=nil,&block)
          @parent = StorageProfile.new nil, init
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
