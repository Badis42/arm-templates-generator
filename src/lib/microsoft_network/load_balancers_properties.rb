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
    class LoadBalancersProperties < Azure::ARM::TypeBase

      # @return Microsoft.Network/loadBalancers: Frontend IP configurations
      attr_writer :frontend_ipconfigurations
      def frontend_ipconfigurations(name=nil)
        if name and @frontend_ipconfigurations and @frontend_ipconfigurations.is_a? Array
          return @frontend_ipconfigurations.find { | p | p.name == name } if name.is_a? String
          return @frontend_ipconfigurations[name] if name.is_a? Integer
        end
        @frontend_ipconfigurations
      end

      # @return Microsoft.Network/loadBalancers: Backend address pools
      attr_writer :backend_address_pools
      def backend_address_pools(name=nil)
        if name and @backend_address_pools and @backend_address_pools.is_a? Array
          return @backend_address_pools.find { | p | p.name == name } if name.is_a? String
          return @backend_address_pools[name] if name.is_a? Integer
        end
        @backend_address_pools
      end

      # @return Microsoft.Network/loadBalancers: Load balancing rules
      attr_writer :load_balancing_rules
      def load_balancing_rules(name=nil)
        if name and @load_balancing_rules and @load_balancing_rules.is_a? Array
          return @load_balancing_rules.find { | p | p.name == name } if name.is_a? String
          return @load_balancing_rules[name] if name.is_a? Integer
        end
        @load_balancing_rules
      end

      # @return Microsoft.Network/loadBalancers: Probes
      attr_writer :probes
      def probes(name=nil)
        if name and @probes and @probes.is_a? Array
          return @probes.find { | p | p.name == name } if name.is_a? String
          return @probes[name] if name.is_a? Integer
        end
        @probes
      end

      # @return Microsoft.Network/loadBalancers: Inbound NAT rules
      attr_writer :inbound_nat_rules
      def inbound_nat_rules(name=nil)
        if name and @inbound_nat_rules and @inbound_nat_rules.is_a? Array
          return @inbound_nat_rules.find { | p | p.name == name } if name.is_a? String
          return @inbound_nat_rules[name] if name.is_a? Integer
        end
        @inbound_nat_rules
      end

      # @return Microsoft.Network/loadBalancers: Inbound NAT pools
      attr_writer :inbound_nat_pools
      def inbound_nat_pools(name=nil)
        if name and @inbound_nat_pools and @inbound_nat_pools.is_a? Array
          return @inbound_nat_pools.find { | p | p.name == name } if name.is_a? String
          return @inbound_nat_pools[name] if name.is_a? Integer
        end
        @inbound_nat_pools
      end

      # @return Microsoft.Network/loadBalancers: Outbound NAT rules
      attr_writer :outbound_nat_rules
      def outbound_nat_rules(name=nil)
        if name and @outbound_nat_rules and @outbound_nat_rules.is_a? Array
          return @outbound_nat_rules.find { | p | p.name == name } if name.is_a? String
          return @outbound_nat_rules[name] if name.is_a? Integer
        end
        @outbound_nat_rules
      end

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.frontend_ipconfigurations
        if serialized_property.is_a? Array
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
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:frontendIPConfigurations] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_address_pools
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element1|
              unless element1.nil?
                element1 = element1.to_h
              end
              serializedarray.push(element1)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:backendAddressPools] = serialized_property unless serialized_property.nil?

        serialized_property = object.load_balancing_rules
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element2|
              unless element2.nil?
                element2 = element2.to_h
              end
              serializedarray.push(element2)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:loadBalancingRules] = serialized_property unless serialized_property.nil?

        serialized_property = object.probes
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element3|
              unless element3.nil?
                element3 = element3.to_h
              end
              serializedarray.push(element3)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:probes] = serialized_property unless serialized_property.nil?

        serialized_property = object.inbound_nat_rules
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element4|
              unless element4.nil?
                element4 = element4.to_h
              end
              serializedarray.push(element4)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:inboundNatRules] = serialized_property unless serialized_property.nil?

        serialized_property = object.inbound_nat_pools
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element5|
              unless element5.nil?
                element5 = element5.to_h
              end
              serializedarray.push(element5)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:inboundNatPools] = serialized_property unless serialized_property.nil?

        serialized_property = object.outbound_nat_rules
        if serialized_property.is_a? Array
          unless serialized_property.nil?
            serializedarray = []
            serialized_property.each do |element6|
              unless element6.nil?
                element6 = element6.to_h
              end
              serializedarray.push(element6)
            end
            serialized_property = serializedarray
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:outboundNatRules] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        LoadBalancersProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :frontend_ipconfigurations
        result.push :backend_address_pools
        result.push :load_balancing_rules
        result.push :probes
        result.push :inbound_nat_rules
        result.push :inbound_nat_pools
        result.push :outbound_nat_rules
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [LoadBalancersProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:frontend_ipconfigurations)
          conf.frontend_ipconfigurations object[:frontend_ipconfigurations]
          object.delete :frontend_ipconfigurations
        end

        if object.key?(:backend_address_pools)
          conf.backend_address_pools object[:backend_address_pools]
          object.delete :backend_address_pools
        end

        if object.key?(:load_balancing_rules)
          conf.load_balancing_rules object[:load_balancing_rules]
          object.delete :load_balancing_rules
        end

        if object.key?(:probes)
          conf.probes object[:probes]
          object.delete :probes
        end

        if object.key?(:inbound_nat_rules)
          conf.inbound_nat_rules object[:inbound_nat_rules]
          object.delete :inbound_nat_rules
        end

        if object.key?(:inbound_nat_pools)
          conf.inbound_nat_pools object[:inbound_nat_pools]
          object.delete :inbound_nat_pools
        end

        if object.key?(:outbound_nat_rules)
          conf.outbound_nat_rules object[:outbound_nat_rules]
          object.delete :outbound_nat_rules
        end

        output_object
      end

      def get_name_template
        'lbp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          LoadBalancersProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param frontend_ipconfigurations
        #        Array<FrontendIPConfigurations>
        #        Expression
        def frontend_ipconfigurations(props)
          if props.is_a? Array
            @parent.frontend_ipconfigurations = Array.new if @parent.frontend_ipconfigurations.nil?
            props.each { |p| @parent.frontend_ipconfigurations.push _frontend_ipconfigurations_frontendipconfigurations(p) }
            return @parent.frontend_ipconfigurations
          end
          _element = nil
          if _element.nil? and props.is_a? FrontendIPConfigurations
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'frontendIPConfigurations'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, FrontendIPConfigurations)
            _element = FrontendIPConfigurations.new(@parent, props)
            _element._rsrcpath = 'frontendIPConfigurations'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? FrontendIPConfigurationsProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'frontendIPConfigurations'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, FrontendIPConfigurationsProperties)
              _properties = FrontendIPConfigurationsProperties.new(@parent, props)
              _properties._rsrcpath = 'frontendIPConfigurations'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = FrontendIPConfigurations.new(@parent, props)
              _element._rsrcpath = 'frontendIPConfigurations'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.frontend_ipconfigurations = Array.new if @parent.frontend_ipconfigurations.nil?
            @parent.frontend_ipconfigurations.push _element
          end
          if @parent.frontend_ipconfigurations.nil? and props.is_a? Azure::ARM::Expression
            @parent.frontend_ipconfigurations = props
          end
          @parent.frontend_ipconfigurations
        end
        def _frontend_ipconfigurations_frontendipconfigurations(props)
          if props.is_a? FrontendIPConfigurations
            props.parent = @parent
            props._rsrcpath = 'frontendIPConfigurations'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, FrontendIPConfigurations)
            _properties = FrontendIPConfigurations.new(@parent, props)
            _properties._rsrcpath = 'frontendIPConfigurations'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? FrontendIPConfigurationsProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'frontendIPConfigurations'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, FrontendIPConfigurationsProperties)
            _properties = FrontendIPConfigurationsProperties.new(@parent, props)
            _properties._rsrcpath = 'frontendIPConfigurations'
          end
          unless _properties.nil?
            props[:properties] = _properties
            frontend_ipconfigurations = FrontendIPConfigurations.new(@parent, props)
            frontend_ipconfigurations._rsrcpath = 'frontendIPConfigurations'
            frontend_ipconfigurations.properties = _properties
            _properties.parent = frontend_ipconfigurations
            return frontend_ipconfigurations
          end
        end
        # @param backend_address_pools
        #        Array<BackendAddressPools>
        #        Expression
        def backend_address_pools(props)
          if props.is_a? Array
            @parent.backend_address_pools = Array.new if @parent.backend_address_pools.nil?
            props.each { |p| @parent.backend_address_pools.push _backend_address_pools_backendaddresspools(p) }
            return @parent.backend_address_pools
          end
          _element = nil
          if _element.nil? and props.is_a? BackendAddressPools
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'backendAddressPools'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, BackendAddressPools)
            _element = BackendAddressPools.new(@parent, props)
            _element._rsrcpath = 'backendAddressPools'
          end
          unless _element.nil?
            @parent.backend_address_pools = Array.new if @parent.backend_address_pools.nil?
            @parent.backend_address_pools.push _element
          end
          if @parent.backend_address_pools.nil? and props.is_a? Azure::ARM::Expression
            @parent.backend_address_pools = props
          end
          @parent.backend_address_pools
        end
        def _backend_address_pools_backendaddresspools(props)
          if props.is_a? BackendAddressPools
            props.parent = @parent
            props._rsrcpath = 'backendAddressPools'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, BackendAddressPools)
            _properties = BackendAddressPools.new(@parent, props)
            _properties._rsrcpath = 'backendAddressPools'
            return _properties
          end
        end
        # @param load_balancing_rules
        #        Array<LoadBalancingRules>
        #        Expression
        def load_balancing_rules(props)
          if props.is_a? Array
            @parent.load_balancing_rules = Array.new if @parent.load_balancing_rules.nil?
            props.each { |p| @parent.load_balancing_rules.push _load_balancing_rules_loadbalancingrules(p) }
            return @parent.load_balancing_rules
          end
          _element = nil
          if _element.nil? and props.is_a? LoadBalancingRules
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'loadBalancingRules'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, LoadBalancingRules)
            _element = LoadBalancingRules.new(@parent, props)
            _element._rsrcpath = 'loadBalancingRules'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? LoadBalancingRulesProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'loadBalancingRules'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, LoadBalancingRulesProperties)
              _properties = LoadBalancingRulesProperties.new(@parent, props)
              _properties._rsrcpath = 'loadBalancingRules'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = LoadBalancingRules.new(@parent, props)
              _element._rsrcpath = 'loadBalancingRules'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.load_balancing_rules = Array.new if @parent.load_balancing_rules.nil?
            @parent.load_balancing_rules.push _element
          end
          if @parent.load_balancing_rules.nil? and props.is_a? Azure::ARM::Expression
            @parent.load_balancing_rules = props
          end
          @parent.load_balancing_rules
        end
        def _load_balancing_rules_loadbalancingrules(props)
          if props.is_a? LoadBalancingRules
            props.parent = @parent
            props._rsrcpath = 'loadBalancingRules'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, LoadBalancingRules)
            _properties = LoadBalancingRules.new(@parent, props)
            _properties._rsrcpath = 'loadBalancingRules'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? LoadBalancingRulesProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'loadBalancingRules'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, LoadBalancingRulesProperties)
            _properties = LoadBalancingRulesProperties.new(@parent, props)
            _properties._rsrcpath = 'loadBalancingRules'
          end
          unless _properties.nil?
            props[:properties] = _properties
            load_balancing_rules = LoadBalancingRules.new(@parent, props)
            load_balancing_rules._rsrcpath = 'loadBalancingRules'
            load_balancing_rules.properties = _properties
            _properties.parent = load_balancing_rules
            return load_balancing_rules
          end
        end
        # @param probes
        #        Array<Probes>
        #        Expression
        def probes(props)
          if props.is_a? Array
            @parent.probes = Array.new if @parent.probes.nil?
            props.each { |p| @parent.probes.push _probes_probes(p) }
            return @parent.probes
          end
          _element = nil
          if _element.nil? and props.is_a? Probes
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'probes'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Probes)
            _element = Probes.new(@parent, props)
            _element._rsrcpath = 'probes'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? ProbeProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'probes'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, ProbeProperties)
              _properties = ProbeProperties.new(@parent, props)
              _properties._rsrcpath = 'probes'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = Probes.new(@parent, props)
              _element._rsrcpath = 'probes'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.probes = Array.new if @parent.probes.nil?
            @parent.probes.push _element
          end
          if @parent.probes.nil? and props.is_a? Azure::ARM::Expression
            @parent.probes = props
          end
          @parent.probes
        end
        def _probes_probes(props)
          if props.is_a? Probes
            props.parent = @parent
            props._rsrcpath = 'probes'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Probes)
            _properties = Probes.new(@parent, props)
            _properties._rsrcpath = 'probes'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? ProbeProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'probes'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, ProbeProperties)
            _properties = ProbeProperties.new(@parent, props)
            _properties._rsrcpath = 'probes'
          end
          unless _properties.nil?
            props[:properties] = _properties
            probes = Probes.new(@parent, props)
            probes._rsrcpath = 'probes'
            probes.properties = _properties
            _properties.parent = probes
            return probes
          end
        end
        # @param inbound_nat_rules
        #        Array<InboundNatRules>
        #        Expression
        def inbound_nat_rules(props)
          if props.is_a? Array
            @parent.inbound_nat_rules = Array.new if @parent.inbound_nat_rules.nil?
            props.each { |p| @parent.inbound_nat_rules.push _inbound_nat_rules_inboundnatrules(p) }
            return @parent.inbound_nat_rules
          end
          _element = nil
          if _element.nil? and props.is_a? InboundNatRules
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'inboundNatRules'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatRules)
            _element = InboundNatRules.new(@parent, props)
            _element._rsrcpath = 'inboundNatRules'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? InboundNatRulesProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'inboundNatRules'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatRulesProperties)
              _properties = InboundNatRulesProperties.new(@parent, props)
              _properties._rsrcpath = 'inboundNatRules'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = InboundNatRules.new(@parent, props)
              _element._rsrcpath = 'inboundNatRules'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.inbound_nat_rules = Array.new if @parent.inbound_nat_rules.nil?
            @parent.inbound_nat_rules.push _element
          end
          if @parent.inbound_nat_rules.nil? and props.is_a? Azure::ARM::Expression
            @parent.inbound_nat_rules = props
          end
          @parent.inbound_nat_rules
        end
        def _inbound_nat_rules_inboundnatrules(props)
          if props.is_a? InboundNatRules
            props.parent = @parent
            props._rsrcpath = 'inboundNatRules'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatRules)
            _properties = InboundNatRules.new(@parent, props)
            _properties._rsrcpath = 'inboundNatRules'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? InboundNatRulesProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'inboundNatRules'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatRulesProperties)
            _properties = InboundNatRulesProperties.new(@parent, props)
            _properties._rsrcpath = 'inboundNatRules'
          end
          unless _properties.nil?
            props[:properties] = _properties
            inbound_nat_rules = InboundNatRules.new(@parent, props)
            inbound_nat_rules._rsrcpath = 'inboundNatRules'
            inbound_nat_rules.properties = _properties
            _properties.parent = inbound_nat_rules
            return inbound_nat_rules
          end
        end
        # @param inbound_nat_pools
        #        Array<InboundNatPools>
        #        Expression
        def inbound_nat_pools(props)
          if props.is_a? Array
            @parent.inbound_nat_pools = Array.new if @parent.inbound_nat_pools.nil?
            props.each { |p| @parent.inbound_nat_pools.push _inbound_nat_pools_inboundnatpools(p) }
            return @parent.inbound_nat_pools
          end
          _element = nil
          if _element.nil? and props.is_a? InboundNatPools
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'inboundNatPools'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatPools)
            _element = InboundNatPools.new(@parent, props)
            _element._rsrcpath = 'inboundNatPools'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? InboundNatPoolsProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'inboundNatPools'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatPoolsProperties)
              _properties = InboundNatPoolsProperties.new(@parent, props)
              _properties._rsrcpath = 'inboundNatPools'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = InboundNatPools.new(@parent, props)
              _element._rsrcpath = 'inboundNatPools'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.inbound_nat_pools = Array.new if @parent.inbound_nat_pools.nil?
            @parent.inbound_nat_pools.push _element
          end
          if @parent.inbound_nat_pools.nil? and props.is_a? Azure::ARM::Expression
            @parent.inbound_nat_pools = props
          end
          @parent.inbound_nat_pools
        end
        def _inbound_nat_pools_inboundnatpools(props)
          if props.is_a? InboundNatPools
            props.parent = @parent
            props._rsrcpath = 'inboundNatPools'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatPools)
            _properties = InboundNatPools.new(@parent, props)
            _properties._rsrcpath = 'inboundNatPools'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? InboundNatPoolsProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'inboundNatPools'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, InboundNatPoolsProperties)
            _properties = InboundNatPoolsProperties.new(@parent, props)
            _properties._rsrcpath = 'inboundNatPools'
          end
          unless _properties.nil?
            props[:properties] = _properties
            inbound_nat_pools = InboundNatPools.new(@parent, props)
            inbound_nat_pools._rsrcpath = 'inboundNatPools'
            inbound_nat_pools.properties = _properties
            _properties.parent = inbound_nat_pools
            return inbound_nat_pools
          end
        end
        # @param outbound_nat_rules
        #        Array<OutboundNatRules>
        #        Expression
        def outbound_nat_rules(props)
          if props.is_a? Array
            @parent.outbound_nat_rules = Array.new if @parent.outbound_nat_rules.nil?
            props.each { |p| @parent.outbound_nat_rules.push _outbound_nat_rules_outboundnatrules(p) }
            return @parent.outbound_nat_rules
          end
          _element = nil
          if _element.nil? and props.is_a? OutboundNatRules
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'outboundNatRules'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OutboundNatRules)
            _element = OutboundNatRules.new(@parent, props)
            _element._rsrcpath = 'outboundNatRules'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? OutboundNatRulesProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'outboundNatRules'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OutboundNatRulesProperties)
              _properties = OutboundNatRulesProperties.new(@parent, props)
              _properties._rsrcpath = 'outboundNatRules'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = OutboundNatRules.new(@parent, props)
              _element._rsrcpath = 'outboundNatRules'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.outbound_nat_rules = Array.new if @parent.outbound_nat_rules.nil?
            @parent.outbound_nat_rules.push _element
          end
          if @parent.outbound_nat_rules.nil? and props.is_a? Azure::ARM::Expression
            @parent.outbound_nat_rules = props
          end
          @parent.outbound_nat_rules
        end
        def _outbound_nat_rules_outboundnatrules(props)
          if props.is_a? OutboundNatRules
            props.parent = @parent
            props._rsrcpath = 'outboundNatRules'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OutboundNatRules)
            _properties = OutboundNatRules.new(@parent, props)
            _properties._rsrcpath = 'outboundNatRules'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? OutboundNatRulesProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'outboundNatRules'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OutboundNatRulesProperties)
            _properties = OutboundNatRulesProperties.new(@parent, props)
            _properties._rsrcpath = 'outboundNatRules'
          end
          unless _properties.nil?
            props[:properties] = _properties
            outbound_nat_rules = OutboundNatRules.new(@parent, props)
            outbound_nat_rules._rsrcpath = 'outboundNatRules'
            outbound_nat_rules.properties = _properties
            _properties.parent = outbound_nat_rules
            return outbound_nat_rules
          end
        end
        def create(init=nil,&block)
          @parent = LoadBalancersProperties.new nil, init
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