# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Configuration for public IP address sharing.
    #
    class SubnetSharedPublicIpAddressConfigurationFragment

      include MsRestAzure

      # @return [Array<PortFragment>] Backend ports that virtual machines on
      # this subnet are allowed to expose
      attr_accessor :allowed_ports


      #
      # Mapper for SubnetSharedPublicIpAddressConfigurationFragment class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubnetSharedPublicIpAddressConfigurationFragment',
          type: {
            name: 'Composite',
            class_name: 'SubnetSharedPublicIpAddressConfigurationFragment',
            model_properties: {
              allowed_ports: {
                required: false,
                serialized_name: 'allowedPorts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PortFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PortFragment'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
