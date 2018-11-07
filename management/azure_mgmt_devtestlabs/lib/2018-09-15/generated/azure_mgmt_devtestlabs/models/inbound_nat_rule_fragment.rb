# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A rule for NAT - exposing a VM's port (backendPort) on the public IP
    # address using a load balancer.
    #
    class InboundNatRuleFragment

      include MsRestAzure

      # @return [TransportProtocol] The transport protocol for the endpoint.
      # Possible values include: 'Tcp', 'Udp'
      attr_accessor :transport_protocol

      # @return [Integer] The external endpoint port of the inbound connection.
      # Possible values range between 1 and 65535, inclusive. If unspecified, a
      # value will be allocated automatically.
      attr_accessor :frontend_port

      # @return [Integer] The port to which the external traffic will be
      # redirected.
      attr_accessor :backend_port


      #
      # Mapper for InboundNatRuleFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InboundNatRuleFragment',
          type: {
            name: 'Composite',
            class_name: 'InboundNatRuleFragment',
            model_properties: {
              transport_protocol: {
                required: false,
                serialized_name: 'transportProtocol',
                type: {
                  name: 'String'
                }
              },
              frontend_port: {
                required: false,
                serialized_name: 'frontendPort',
                type: {
                  name: 'Number'
                }
              },
              backend_port: {
                required: false,
                serialized_name: 'backendPort',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
