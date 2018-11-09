# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Details of the Backend WebProxy Server to use in the Request to Backend.
    #
    class BackendProxyContract

      include MsRestAzure

      # @return [String] WebProxy Server AbsoluteUri property which includes
      # the entire URI stored in the Uri instance, including all fragments and
      # query strings.
      attr_accessor :url

      # @return [String] Username to connect to the WebProxy server
      attr_accessor :username

      # @return [String] Password to connect to the WebProxy Server
      attr_accessor :password


      #
      # Mapper for BackendProxyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackendProxyContract',
          type: {
            name: 'Composite',
            class_name: 'BackendProxyContract',
            model_properties: {
              url: {
                required: true,
                serialized_name: 'url',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              username: {
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
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