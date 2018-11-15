# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The run operation result properties.
    #
    class OperationResultProperties

      include MsRestAzure

      # @return [DateTime] The start time of the workflow scope repetition.
      attr_accessor :start_time

      # @return [DateTime] The end time of the workflow scope repetition.
      attr_accessor :end_time

      # @return [RunActionCorrelation] The correlation properties.
      attr_accessor :correlation

      # @return [WorkflowStatus] The status of the workflow scope repetition.
      # Possible values include: 'NotSpecified', 'Paused', 'Running',
      # 'Waiting', 'Succeeded', 'Skipped', 'Suspended', 'Cancelled', 'Failed',
      # 'Faulted', 'TimedOut', 'Aborted', 'Ignored'
      attr_accessor :status

      # @return [String] The workflow scope repetition code.
      attr_accessor :code

      # @return
      attr_accessor :error


      #
      # Mapper for OperationResultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationResultProperties',
          type: {
            name: 'Composite',
            class_name: 'OperationResultProperties',
            model_properties: {
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              correlation: {
                required: false,
                serialized_name: 'correlation',
                type: {
                  name: 'Composite',
                  class_name: 'RunActionCorrelation'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
