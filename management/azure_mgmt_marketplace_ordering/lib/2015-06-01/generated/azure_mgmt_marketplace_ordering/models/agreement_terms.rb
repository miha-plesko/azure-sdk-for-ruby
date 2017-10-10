# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MarketplaceOrdering::Api_2015_06_01
  module Models
    #
    # Terms properties for provided Publisher/Offer/Plan tuple
    #
    class AgreementTerms < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Publisher identifier string of image being deployed.
      attr_accessor :publisher

      # @return [String] Offer identifier string of image being deployed.
      attr_accessor :product

      # @return [String] Plan identifier string of image being deployed.
      attr_accessor :plan

      # @return [String] Link to HTML with Microsoft and Publisher terms.
      attr_accessor :license_text_link

      # @return [String] Link to the privacy policy of the publisher.
      attr_accessor :privacy_policy_link

      # @return [DateTime] Date and time in UTC of when the terms were
      # accepted. This is empty if Accepted is false.
      attr_accessor :retrieve_datetime

      # @return [String] Terms signature.
      attr_accessor :signature

      # @return [Boolean] If any version of the terms have been accepted,
      # otherwise false.
      attr_accessor :accepted


      #
      # Mapper for AgreementTerms class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AgreementTerms',
          type: {
            name: 'Composite',
            class_name: 'AgreementTerms',
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
              publisher: {
                required: false,
                serialized_name: 'properties.publisher',
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
              plan: {
                required: false,
                serialized_name: 'properties.plan',
                type: {
                  name: 'String'
                }
              },
              license_text_link: {
                required: false,
                serialized_name: 'properties.licenseTextLink',
                type: {
                  name: 'String'
                }
              },
              privacy_policy_link: {
                required: false,
                serialized_name: 'properties.privacyPolicyLink',
                type: {
                  name: 'String'
                }
              },
              retrieve_datetime: {
                required: false,
                serialized_name: 'properties.retrieveDatetime',
                type: {
                  name: 'DateTime'
                }
              },
              signature: {
                required: false,
                serialized_name: 'properties.signature',
                type: {
                  name: 'String'
                }
              },
              accepted: {
                required: false,
                serialized_name: 'properties.accepted',
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