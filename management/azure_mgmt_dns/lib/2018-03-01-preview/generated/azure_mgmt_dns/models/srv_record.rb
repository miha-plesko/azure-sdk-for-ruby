# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2018_03_01_preview
  module Models
    #
    # An SRV record.
    #
    class SrvRecord

      include MsRestAzure

      # @return [Integer] The priority value for this SRV record.
      attr_accessor :priority

      # @return [Integer] The weight value for this SRV record.
      attr_accessor :weight

      # @return [Integer] The port value for this SRV record.
      attr_accessor :port

      # @return [String] The target domain name for this SRV record.
      attr_accessor :target


      #
      # Mapper for SrvRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SrvRecord',
          type: {
            name: 'Composite',
            class_name: 'SrvRecord',
            model_properties: {
              priority: {
                required: false,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              weight: {
                required: false,
                serialized_name: 'weight',
                type: {
                  name: 'Number'
                }
              },
              port: {
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              },
              target: {
                required: false,
                serialized_name: 'target',
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
