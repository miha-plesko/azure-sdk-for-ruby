# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The parameters for creating a webhook.
    #
    class WebhookCreateParameters

      include MsRestAzure

      # @return [Hash{String => String}] The tags for the webhook.
      attr_accessor :tags

      # @return [String] The location of the webhook. This cannot be changed
      # after the resource is created.
      attr_accessor :location

      # @return [String] The service URI for the webhook to post notifications.
      attr_accessor :service_uri

      # @return [Hash{String => String}] Custom headers that will be added to
      # the webhook notifications.
      attr_accessor :custom_headers

      # @return [WebhookStatus] The status of the webhook at the time the
      # operation was called. Possible values include: 'enabled', 'disabled'
      attr_accessor :status

      # @return [String] The scope of repositories where the event can be
      # triggered. For example, 'foo:*' means events for all tags under
      # repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is
      # equivalent to 'foo:latest'. Empty means all events.
      attr_accessor :scope

      # @return [Array<WebhookAction>] The list of actions that trigger the
      # webhook to post notifications.
      attr_accessor :actions


      #
      # Mapper for WebhookCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WebhookCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'WebhookCreateParameters',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              service_uri: {
                required: true,
                serialized_name: 'properties.serviceUri',
                type: {
                  name: 'String'
                }
              },
              custom_headers: {
                required: false,
                serialized_name: 'properties.customHeaders',
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
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              scope: {
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              actions: {
                required: true,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WebhookActionElementType',
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
