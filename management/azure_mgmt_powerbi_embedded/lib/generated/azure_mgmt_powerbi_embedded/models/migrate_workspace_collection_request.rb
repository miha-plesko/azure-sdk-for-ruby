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
    class MigrateWorkspaceCollectionRequest

      include MsRestAzure

      # @return [String] Name of the resource group the Power BI workspace
      # collections will be migrated to.
      attr_accessor :target_resource_group

      # @return [Array<String>]
      attr_accessor :resources


      #
      # Mapper for MigrateWorkspaceCollectionRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MigrateWorkspaceCollectionRequest',
          type: {
            name: 'Composite',
            class_name: 'MigrateWorkspaceCollectionRequest',
            model_properties: {
              target_resource_group: {
                required: false,
                serialized_name: 'targetResourceGroup',
                type: {
                  name: 'String'
                }
              },
              resources: {
                required: false,
                serialized_name: 'resources',
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
