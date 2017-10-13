# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Engage only users for whom the push quota is not reached.
    #
    class PushQuotaFilter < Filter

      include MsRestAzure


      def initialize
        @type = "push-quota"
      end

      attr_accessor :type


      #
      # Mapper for PushQuotaFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'push-quota',
          type: {
            name: 'Composite',
            class_name: 'PushQuotaFilter',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
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
