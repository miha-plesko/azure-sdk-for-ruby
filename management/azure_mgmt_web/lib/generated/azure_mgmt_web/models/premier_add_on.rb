# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Premier add-on.
    #
    class PremierAddOn < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] SKU.
      attr_accessor :sku

      # @return [String] Product.
      attr_accessor :product

      # @return [String] Vendor.
      attr_accessor :vendor

      # @return [String] Name.
      attr_accessor :premier_add_on_name

      # @return [String] Location.
      attr_accessor :premier_add_on_location

      # @return [Hash{String => String}] Tags.
      attr_accessor :premier_add_on_tags

      # @return [String] Marketplace publisher.
      attr_accessor :marketplace_publisher

      # @return [String] Marketplace offer.
      attr_accessor :marketplace_offer


      #
      # Mapper for PremierAddOn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PremierAddOn',
          type: {
            name: 'Composite',
            class_name: 'PremierAddOn',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: false,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              vendor: {
                required: false,
                serialized_name: 'properties.vendor',
                type: {
                  name: 'String'
                }
              },
              premier_add_on_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              premier_add_on_location: {
                required: false,
                serialized_name: 'properties.location',
                type: {
                  name: 'String'
                }
              },
              premier_add_on_tags: {
                required: false,
                serialized_name: 'properties.tags',
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
              marketplace_publisher: {
                required: false,
                serialized_name: 'properties.marketplacePublisher',
                type: {
                  name: 'String'
                }
              },
              marketplace_offer: {
                required: false,
                serialized_name: 'properties.marketplaceOffer',
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
