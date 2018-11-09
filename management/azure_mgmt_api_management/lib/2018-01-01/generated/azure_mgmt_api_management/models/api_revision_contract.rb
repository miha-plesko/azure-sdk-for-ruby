# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Summary of revision metadata.
    #
    class ApiRevisionContract

      include MsRestAzure

      # @return [String] Identifier of the API Revision.
      attr_accessor :api_id

      # @return [String] Revision number of API.
      attr_accessor :api_revision

      # @return [DateTime] The time the API Revision was created. The date
      # conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by
      # the ISO 8601 standard.
      attr_accessor :created_date_time

      # @return [DateTime] The time the API Revision were updated. The date
      # conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by
      # the ISO 8601 standard.
      attr_accessor :updated_date_time

      # @return [String] Description of the API Revision.
      attr_accessor :description

      # @return [String] Gateway URL for accessing the non-current API
      # Revision.
      attr_accessor :private_url

      # @return [Boolean] Indicates if API revision is the current api
      # revision.
      attr_accessor :is_online

      # @return [Boolean] Indicates if API revision is accessible via the
      # gateway.
      attr_accessor :is_current


      #
      # Mapper for ApiRevisionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiRevisionContract',
          type: {
            name: 'Composite',
            class_name: 'ApiRevisionContract',
            model_properties: {
              api_id: {
                required: false,
                read_only: true,
                serialized_name: 'apiId',
                type: {
                  name: 'String'
                }
              },
              api_revision: {
                required: false,
                read_only: true,
                serialized_name: 'apiRevision',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              created_date_time: {
                required: false,
                read_only: true,
                serialized_name: 'createdDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              updated_date_time: {
                required: false,
                read_only: true,
                serialized_name: 'updatedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 256
                },
                type: {
                  name: 'String'
                }
              },
              private_url: {
                required: false,
                read_only: true,
                serialized_name: 'privateUrl',
                type: {
                  name: 'String'
                }
              },
              is_online: {
                required: false,
                read_only: true,
                serialized_name: 'isOnline',
                type: {
                  name: 'Boolean'
                }
              },
              is_current: {
                required: false,
                read_only: true,
                serialized_name: 'isCurrent',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end