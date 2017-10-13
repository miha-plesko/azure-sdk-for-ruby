# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Contains Bandwidths offered in ExpressRouteServiceProviders
    #
    class ExpressRouteServiceProviderBandwidthsOffered

      include MsRestAzure

      # @return [String] Gets the OfferName
      attr_accessor :offer_name

      # @return [Integer] Gets the ValueInMbps.
      attr_accessor :value_in_mbps


      #
      # Mapper for ExpressRouteServiceProviderBandwidthsOffered class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteServiceProviderBandwidthsOffered',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteServiceProviderBandwidthsOffered',
            model_properties: {
              offer_name: {
                required: false,
                serialized_name: 'offerName',
                type: {
                  name: 'String'
                }
              },
              value_in_mbps: {
                required: false,
                serialized_name: 'valueInMbps',
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
