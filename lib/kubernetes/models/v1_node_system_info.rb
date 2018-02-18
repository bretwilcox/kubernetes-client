=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
  class V1NodeSystemInfo
    # The Architecture reported by the node
    attr_accessor :architecture

    # Boot ID reported by the node.
    attr_accessor :boot_id

    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    attr_accessor :container_runtime_version

    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    attr_accessor :kernel_version

    # KubeProxy Version reported by the node.
    attr_accessor :kube_proxy_version

    # Kubelet Version reported by the node.
    attr_accessor :kubelet_version

    # MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
    attr_accessor :machine_id

    # The Operating System reported by the node
    attr_accessor :operating_system

    # OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
    attr_accessor :os_image

    # SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html
    attr_accessor :system_uuid


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'architecture' => :'architecture',
        :'boot_id' => :'bootID',
        :'container_runtime_version' => :'containerRuntimeVersion',
        :'kernel_version' => :'kernelVersion',
        :'kube_proxy_version' => :'kubeProxyVersion',
        :'kubelet_version' => :'kubeletVersion',
        :'machine_id' => :'machineID',
        :'operating_system' => :'operatingSystem',
        :'os_image' => :'osImage',
        :'system_uuid' => :'systemUUID'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'architecture' => :'String',
        :'boot_id' => :'String',
        :'container_runtime_version' => :'String',
        :'kernel_version' => :'String',
        :'kube_proxy_version' => :'String',
        :'kubelet_version' => :'String',
        :'machine_id' => :'String',
        :'operating_system' => :'String',
        :'os_image' => :'String',
        :'system_uuid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'architecture')
        self.architecture = attributes[:'architecture']
      end

      if attributes.has_key?(:'bootID')
        self.boot_id = attributes[:'bootID']
      end

      if attributes.has_key?(:'containerRuntimeVersion')
        self.container_runtime_version = attributes[:'containerRuntimeVersion']
      end

      if attributes.has_key?(:'kernelVersion')
        self.kernel_version = attributes[:'kernelVersion']
      end

      if attributes.has_key?(:'kubeProxyVersion')
        self.kube_proxy_version = attributes[:'kubeProxyVersion']
      end

      if attributes.has_key?(:'kubeletVersion')
        self.kubelet_version = attributes[:'kubeletVersion']
      end

      if attributes.has_key?(:'machineID')
        self.machine_id = attributes[:'machineID']
      end

      if attributes.has_key?(:'operatingSystem')
        self.operating_system = attributes[:'operatingSystem']
      end

      if attributes.has_key?(:'osImage')
        self.os_image = attributes[:'osImage']
      end

      if attributes.has_key?(:'systemUUID')
        self.system_uuid = attributes[:'systemUUID']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @architecture.nil?
        invalid_properties.push("invalid value for 'architecture', architecture cannot be nil.")
      end

      if @boot_id.nil?
        invalid_properties.push("invalid value for 'boot_id', boot_id cannot be nil.")
      end

      if @container_runtime_version.nil?
        invalid_properties.push("invalid value for 'container_runtime_version', container_runtime_version cannot be nil.")
      end

      if @kernel_version.nil?
        invalid_properties.push("invalid value for 'kernel_version', kernel_version cannot be nil.")
      end

      if @kube_proxy_version.nil?
        invalid_properties.push("invalid value for 'kube_proxy_version', kube_proxy_version cannot be nil.")
      end

      if @kubelet_version.nil?
        invalid_properties.push("invalid value for 'kubelet_version', kubelet_version cannot be nil.")
      end

      if @machine_id.nil?
        invalid_properties.push("invalid value for 'machine_id', machine_id cannot be nil.")
      end

      if @operating_system.nil?
        invalid_properties.push("invalid value for 'operating_system', operating_system cannot be nil.")
      end

      if @os_image.nil?
        invalid_properties.push("invalid value for 'os_image', os_image cannot be nil.")
      end

      if @system_uuid.nil?
        invalid_properties.push("invalid value for 'system_uuid', system_uuid cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @architecture.nil?
      return false if @boot_id.nil?
      return false if @container_runtime_version.nil?
      return false if @kernel_version.nil?
      return false if @kube_proxy_version.nil?
      return false if @kubelet_version.nil?
      return false if @machine_id.nil?
      return false if @operating_system.nil?
      return false if @os_image.nil?
      return false if @system_uuid.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          architecture == o.architecture &&
          boot_id == o.boot_id &&
          container_runtime_version == o.container_runtime_version &&
          kernel_version == o.kernel_version &&
          kube_proxy_version == o.kube_proxy_version &&
          kubelet_version == o.kubelet_version &&
          machine_id == o.machine_id &&
          operating_system == o.operating_system &&
          os_image == o.os_image &&
          system_uuid == o.system_uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [architecture, boot_id, container_runtime_version, kernel_version, kube_proxy_version, kubelet_version, machine_id, operating_system, os_image, system_uuid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = Kubernetes.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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