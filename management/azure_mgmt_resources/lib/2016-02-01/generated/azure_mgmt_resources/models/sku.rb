# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_02_01
  module Models
    #
    # Sku for the resource.
    #
    class Sku

      include MsRestAzure

      # @return [String] The sku name.
      attr_accessor :name

      # @return [String] The sku tier.
      attr_accessor :tier

      # @return [String] The sku size.
      attr_accessor :size

      # @return [String] The sku family.
      attr_accessor :family

      # @return [String] The sku model.
      attr_accessor :model

      # @return [Integer] The sku capacity.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              model: {
                required: false,
                serialized_name: 'model',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
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
