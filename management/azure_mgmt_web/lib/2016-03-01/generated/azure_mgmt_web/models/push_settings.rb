# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Push settings for the App.
    #
    class PushSettings < ProxyOnlyResource

      include MsRestAzure

      # @return [Boolean] Gets or sets a flag indicating whether the Push
      # endpoint is enabled.
      attr_accessor :is_push_enabled

      # @return [String] Gets or sets a JSON string containing a list of tags
      # that are whitelisted for use by the push registration endpoint.
      attr_accessor :tag_whitelist_json

      # @return [String] Gets or sets a JSON string containing a list of tags
      # that require user authentication to be used in the push registration
      # endpoint.
      # Tags can consist of alphanumeric characters and the following:
      # '_', '@', '#', '.', ':', '-'.
      # Validation should be performed at the PushRequestHandler.
      attr_accessor :tags_requiring_auth

      # @return [String] Gets or sets a JSON string containing a list of
      # dynamic tags that will be evaluated from user claims in the push
      # registration endpoint.
      attr_accessor :dynamic_tags_json


      #
      # Mapper for PushSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PushSettings',
          type: {
            name: 'Composite',
            class_name: 'PushSettings',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              is_push_enabled: {
                required: false,
                serialized_name: 'properties.isPushEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              tag_whitelist_json: {
                required: false,
                serialized_name: 'properties.tagWhitelistJson',
                type: {
                  name: 'String'
                }
              },
              tags_requiring_auth: {
                required: false,
                serialized_name: 'properties.tagsRequiringAuth',
                type: {
                  name: 'String'
                }
              },
              dynamic_tags_json: {
                required: false,
                serialized_name: 'properties.dynamicTagsJson',
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
