# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # MAB workload-specific Health Details.
    #
    class MABContainerHealthDetails

      include MsRestAzure

      # @return [Integer] Health Code
      attr_accessor :code

      # @return [String] Health Title
      attr_accessor :title

      # @return [String] Health Message
      attr_accessor :message

      # @return [Array<String>] Health Recommended Actions
      attr_accessor :recommendations


      #
      # Mapper for MABContainerHealthDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MABContainerHealthDetails',
          type: {
            name: 'Composite',
            class_name: 'MABContainerHealthDetails',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'Number'
                }
              },
              title: {
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                required: false,
                serialized_name: 'recommendations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
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
