# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # List of all the Identity Providers configured on the service instance.
    #
    class IdentityProviderList

      include MsRestAzure

      # @return [Array<IdentityProviderContract>] Identity Provider
      # configuration values.
      attr_accessor :value


      #
      # Mapper for IdentityProviderList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IdentityProviderList',
          type: {
            name: 'Composite',
            class_name: 'IdentityProviderList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IdentityProviderContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IdentityProviderContract'
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
