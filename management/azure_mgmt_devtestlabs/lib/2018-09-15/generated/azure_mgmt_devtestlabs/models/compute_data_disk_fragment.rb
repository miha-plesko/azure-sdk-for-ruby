# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A data disks attached to a virtual machine.
    #
    class ComputeDataDiskFragment

      include MsRestAzure

      # @return [String] Gets data disk name.
      attr_accessor :name

      # @return [String] When backed by a blob, the URI of underlying blob.
      attr_accessor :disk_uri

      # @return [String] When backed by managed disk, this is the ID of the
      # compute disk resource.
      attr_accessor :managed_disk_id

      # @return [Integer] Gets data disk size in GiB.
      attr_accessor :disk_size_gi_b


      #
      # Mapper for ComputeDataDiskFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ComputeDataDiskFragment',
          type: {
            name: 'Composite',
            class_name: 'ComputeDataDiskFragment',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              disk_uri: {
                required: false,
                serialized_name: 'diskUri',
                type: {
                  name: 'String'
                }
              },
              managed_disk_id: {
                required: false,
                serialized_name: 'managedDiskId',
                type: {
                  name: 'String'
                }
              },
              disk_size_gi_b: {
                required: false,
                serialized_name: 'diskSizeGiB',
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
