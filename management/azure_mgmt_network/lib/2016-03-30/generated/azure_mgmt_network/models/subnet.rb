# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # Subnet in a VirtualNework resource
    #
    class Subnet < SubResource

      include MsRestAzure

      # @return [String] Gets or sets Address prefix for the subnet.
      attr_accessor :address_prefix

      # @return [NetworkSecurityGroup] Gets or sets the reference of the
      # NetworkSecurityGroup resource
      attr_accessor :network_security_group

      # @return [RouteTable] Gets or sets the reference of the RouteTable
      # resource
      attr_accessor :route_table

      # @return [Array<IPConfiguration>] Gets array of references to the
      # network interface IP configurations using subnet
      attr_accessor :ip_configurations

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for Subnet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Subnet',
          type: {
            name: 'Composite',
            class_name: 'Subnet',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              address_prefix: {
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
                }
              },
              network_security_group: {
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
                }
              },
              route_table: {
                required: false,
                serialized_name: 'properties.routeTable',
                type: {
                  name: 'Composite',
                  class_name: 'RouteTable'
                }
              },
              ip_configurations: {
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPConfiguration'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
