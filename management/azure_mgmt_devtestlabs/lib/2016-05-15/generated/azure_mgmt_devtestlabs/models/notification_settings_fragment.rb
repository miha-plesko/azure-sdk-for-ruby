# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Notification settings for a schedule.
    #
    class NotificationSettingsFragment

      include MsRestAzure

      # @return [NotificationStatus] If notifications are enabled for this
      # schedule (i.e. Enabled, Disabled). Possible values include: 'Disabled',
      # 'Enabled'
      attr_accessor :status

      # @return [Integer] Time in minutes before event at which notification
      # will be sent.
      attr_accessor :time_in_minutes

      # @return [String] The webhook URL to which the notification will be
      # sent.
      attr_accessor :webhook_url


      #
      # Mapper for NotificationSettingsFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationSettingsFragment',
          type: {
            name: 'Composite',
            class_name: 'NotificationSettingsFragment',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              time_in_minutes: {
                required: false,
                serialized_name: 'timeInMinutes',
                type: {
                  name: 'Number'
                }
              },
              webhook_url: {
                required: false,
                serialized_name: 'webhookUrl',
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
