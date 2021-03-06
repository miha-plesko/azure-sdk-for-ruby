# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_09_01
  module Models
    #
    # Model object.
    #
    #
    class ResourceSkuLocationInfo

      include MsRestAzure

      # @return [String] Location of the SKU
      attr_accessor :location

      # @return [Array<String>] List of availability zones where the SKU is
      # supported.
      attr_accessor :zones


      #
      # Mapper for ResourceSkuLocationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuLocationInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuLocationInfo',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'zones',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
