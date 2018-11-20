# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Information about a Linux OS.
    #
    class LinuxOsInfo

      include MsRestAzure

      # @return [LinuxOsState] The state of the Linux OS (i.e.
      # NonDeprovisioned, DeprovisionRequested, DeprovisionApplied). Possible
      # values include: 'NonDeprovisioned', 'DeprovisionRequested',
      # 'DeprovisionApplied'
      attr_accessor :linux_os_state


      #
      # Mapper for LinuxOsInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LinuxOsInfo',
          type: {
            name: 'Composite',
            class_name: 'LinuxOsInfo',
            model_properties: {
              linux_os_state: {
                required: false,
                serialized_name: 'linuxOsState',
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