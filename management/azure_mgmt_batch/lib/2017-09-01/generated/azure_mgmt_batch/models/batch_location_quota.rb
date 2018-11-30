# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Quotas associated with a Batch region for a particular subscription.
    #
    class BatchLocationQuota

      include MsRestAzure

      # @return [Integer] The number of Batch accounts that may be created
      # under the subscription in the specified region.
      attr_accessor :account_quota


      #
      # Mapper for BatchLocationQuota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchLocationQuota',
          type: {
            name: 'Composite',
            class_name: 'BatchLocationQuota',
            model_properties: {
              account_quota: {
                required: false,
                read_only: true,
                serialized_name: 'accountQuota',
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
