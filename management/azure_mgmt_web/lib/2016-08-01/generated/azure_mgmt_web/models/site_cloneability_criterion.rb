# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # An app cloneability criterion.
    #
    class SiteCloneabilityCriterion

      include MsRestAzure

      # @return [String] Name of criterion.
      attr_accessor :name

      # @return [String] Description of criterion.
      attr_accessor :description


      #
      # Mapper for SiteCloneabilityCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteCloneabilityCriterion',
          type: {
            name: 'Composite',
            class_name: 'SiteCloneabilityCriterion',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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
