# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_06_01
  module Models
    #
    # The instance view of the container group. Only valid in response.
    #
    class ContainerGroupPropertiesInstanceView

      include MsRestAzure

      # @return [Array<Event>] The events of this container group.
      attr_accessor :events

      # @return [String] The state of the container group. Only valid in
      # response.
      attr_accessor :state


      #
      # Mapper for ContainerGroupPropertiesInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerGroup_properties_instanceView',
          type: {
            name: 'Composite',
            class_name: 'ContainerGroupPropertiesInstanceView',
            model_properties: {
              events: {
                required: false,
                read_only: true,
                serialized_name: 'events',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Event'
                      }
                  }
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
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
