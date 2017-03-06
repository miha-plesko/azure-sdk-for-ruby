# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents a server firewall rule.
    #
    class ServerFirewallRule < SqlSubResource

      include MsRestAzure

      # @return [String] Kind of server that contains this firewall rule.
      attr_accessor :kind

      # @return [String] Location of the server that contains this firewall
      # rule.
      attr_accessor :location

      # @return [String] Type of resource this is.
      attr_accessor :type

      # @return [String] The start IP address of the firewall rule. Must be
      # IPv4 format. Use value '0.0.0.0' to represent all Azure-internal IP
      # addresses.
      attr_accessor :start_ip_address

      # @return [String] The end IP address of the firewall rule. Must be IPv4
      # format. Must be greater than or equal to startIpAddress. Use value
      # '0.0.0.0' to represent all Azure-internal IP addresses.
      attr_accessor :end_ip_address


      #
      # Mapper for ServerFirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerFirewallRule',
          type: {
            name: 'Composite',
            class_name: 'ServerFirewallRule',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              start_ip_address: {
                required: true,
                serialized_name: 'properties.startIpAddress',
                type: {
                  name: 'String'
                }
              },
              end_ip_address: {
                required: true,
                serialized_name: 'properties.endIpAddress',
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
