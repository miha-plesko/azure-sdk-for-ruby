# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The correlation properties.
    #
    class RunCorrelation

      include MsRestAzure

      # @return [String] The client tracking identifier.
      attr_accessor :client_tracking_id

      # @return [Array<String>] The client keywords.
      attr_accessor :client_keywords


      #
      # Mapper for RunCorrelation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunCorrelation',
          type: {
            name: 'Composite',
            class_name: 'RunCorrelation',
            model_properties: {
              client_tracking_id: {
                required: false,
                serialized_name: 'clientTrackingId',
                type: {
                  name: 'String'
                }
              },
              client_keywords: {
                required: false,
                serialized_name: 'clientKeywords',
                type: {
                  name: 'Sequence',
                  element: {
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
