# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Error details for when validation fails.
    #
    class ValidateResponseError

      include MsRestAzure

      # @return [String] Validation error code.
      attr_accessor :code

      # @return [String] Validation error message.
      attr_accessor :message


      #
      # Mapper for ValidateResponseError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidateResponseError',
          type: {
            name: 'Composite',
            class_name: 'ValidateResponseError',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
