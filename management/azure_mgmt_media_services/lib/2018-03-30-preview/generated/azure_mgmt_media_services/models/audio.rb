# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Defines the common properties for all audio codecs.
    #
    class Audio < Codec

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.Audio"
      end

      attr_accessor :@odatatype

      # @return [Integer] The number of channels in the audio.
      attr_accessor :channels

      # @return [Integer] The sampling rate to use for encoding in hertz.
      attr_accessor :sampling_rate

      # @return [Integer] The bitrate, in bits per second, of the output
      # encoded audio.
      attr_accessor :bitrate


      #
      # Mapper for Audio class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.Audio',
          type: {
            name: 'Composite',
            class_name: 'Audio',
            model_properties: {
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              channels: {
                required: false,
                serialized_name: 'channels',
                type: {
                  name: 'Number'
                }
              },
              sampling_rate: {
                required: false,
                serialized_name: 'samplingRate',
                type: {
                  name: 'Number'
                }
              },
              bitrate: {
                required: false,
                serialized_name: 'bitrate',
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
