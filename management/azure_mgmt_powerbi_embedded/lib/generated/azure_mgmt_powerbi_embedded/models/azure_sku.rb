# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    #
    #
    class AzureSku

      include MsRestAzure

      # @return [String] SKU name. Default value: 'S1' .
      attr_accessor :name

      # @return [String] SKU tier. Default value: 'Standard' .
      attr_accessor :tier


      #
      # Mapper for AzureSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureSku',
          type: {
            name: 'Composite',
            class_name: 'AzureSku',
            model_properties: {
              name: {
                required: true,
                is_constant: true,
                serialized_name: 'name',
                default_value: 'S1',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: true,
                is_constant: true,
                serialized_name: 'tier',
                default_value: 'Standard',
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
