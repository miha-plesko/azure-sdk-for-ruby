# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A gallery image.
    #
    class GalleryImage < Resource

      include MsRestAzure

      # @return [String] The author of the gallery image.
      attr_accessor :author

      # @return [DateTime] The creation date of the gallery image.
      attr_accessor :created_date

      # @return [String] The description of the gallery image.
      attr_accessor :description

      # @return [GalleryImageReference] The image reference of the gallery
      # image.
      attr_accessor :image_reference

      # @return [String] The icon of the gallery image.
      attr_accessor :icon

      # @return [Boolean] Indicates whether this gallery image is enabled.
      attr_accessor :enabled

      # @return [String] The third party plan that applies to this image
      attr_accessor :plan_id

      # @return [Boolean] Indicates if the plan has been authorized for
      # programmatic deployment.
      attr_accessor :is_plan_authorized


      #
      # Mapper for GalleryImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GalleryImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryImage',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              author: {
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              image_reference: {
                required: false,
                serialized_name: 'properties.imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageReference'
                }
              },
              icon: {
                required: false,
                serialized_name: 'properties.icon',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              plan_id: {
                required: false,
                serialized_name: 'properties.planId',
                type: {
                  name: 'String'
                }
              },
              is_plan_authorized: {
                required: false,
                serialized_name: 'properties.isPlanAuthorized',
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
