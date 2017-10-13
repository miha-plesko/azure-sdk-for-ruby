# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2015_10_01_preview
  module Models
    #
    # Additional Azure Storage account parameters.
    #
    class AddStorageAccountParameters

      include MsRestAzure

      # @return [StorageAccountProperties] the properties for the Azure Storage
      # account being added.
      attr_accessor :properties


      #
      # Mapper for AddStorageAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AddStorageAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'AddStorageAccountParameters',
            model_properties: {
              properties: {
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
