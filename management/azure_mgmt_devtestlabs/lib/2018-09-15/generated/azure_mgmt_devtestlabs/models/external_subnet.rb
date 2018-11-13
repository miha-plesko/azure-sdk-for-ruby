# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Subnet information as returned by the Microsoft.Network API.
    #
    class ExternalSubnet

      include MsRestAzure

      # @return [String] Gets or sets the identifier.
      attr_accessor :id

      # @return [String] Gets or sets the name.
      attr_accessor :name


      #
      # Mapper for ExternalSubnet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExternalSubnet',
          type: {
            name: 'Composite',
            class_name: 'ExternalSubnet',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
