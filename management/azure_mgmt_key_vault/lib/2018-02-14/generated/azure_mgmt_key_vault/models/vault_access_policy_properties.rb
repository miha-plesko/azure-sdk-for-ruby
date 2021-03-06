# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2018_02_14
  module Models
    #
    # Properties of the vault access policy
    #
    class VaultAccessPolicyProperties

      include MsRestAzure

      # @return [Array<AccessPolicyEntry>] An array of 0 to 16 identities that
      # have access to the key vault. All identities in the array must use the
      # same tenant ID as the key vault's tenant ID.
      attr_accessor :access_policies


      #
      # Mapper for VaultAccessPolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VaultAccessPolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'VaultAccessPolicyProperties',
            model_properties: {
              access_policies: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accessPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccessPolicyEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AccessPolicyEntry'
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
