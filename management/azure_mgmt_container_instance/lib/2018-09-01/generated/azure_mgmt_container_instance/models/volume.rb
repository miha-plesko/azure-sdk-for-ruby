# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # The properties of the volume.
    #
    class Volume

      include MsRestAzure

      # @return [String] The name of the volume.
      attr_accessor :name

      # @return [AzureFileVolume] The Azure File volume.
      attr_accessor :azure_file

      # @return The empty directory volume.
      attr_accessor :empty_dir

      # @return [Hash{String => String}] The secret volume.
      attr_accessor :secret

      # @return [GitRepoVolume] The git repo volume.
      attr_accessor :git_repo


      #
      # Mapper for Volume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Volume',
          type: {
            name: 'Composite',
            class_name: 'Volume',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              azure_file: {
                required: false,
                serialized_name: 'azureFile',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFileVolume'
                }
              },
              empty_dir: {
                required: false,
                serialized_name: 'emptyDir',
                type: {
                  name: 'Object'
                }
              },
              secret: {
                required: false,
                serialized_name: 'secret',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              git_repo: {
                required: false,
                serialized_name: 'gitRepo',
                type: {
                  name: 'Composite',
                  class_name: 'GitRepoVolume'
                }
              }
            }
          }
        }
      end
    end
  end
end
