# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # CDN endpoint is the entity within a CDN profile containing configuration
    # information such as origin, protocol, content caching and delivery
    # behavior. The CDN endpoint uses the URL format
    # <endpointname>.azureedge.net.
    #
    class Endpoint < Resource

      include MsRestAzure

      # @return [String] The host header CDN sends along with content requests
      # to origin. The default value is the host name of the origin.
      attr_accessor :origin_host_header

      # @return [String] A directory path on the origin that CDN can use to
      # retreive content from, e.g. contoso.cloudapp.net/originpath.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression
      # applies. The value should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether content compression is enabled on
      # CDN. Default value is false. If compression is enabled, content will be
      # served as compressed if user requests for a compressed version. Content
      # won't be compressed on CDN when requested content is smaller than 1
      # byte or larger than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether HTTPS traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines how CDN caches requests
      # that include query strings. You can ignore any query strings when
      # caching, bypass caching to prevent requests that contain query strings
      # from being cached, or cache every request with a unique URL. Possible
      # values include: 'IgnoreQueryString', 'BypassCaching', 'UseQueryString',
      # 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [OptimizationType] Specifies what scenario the customer wants
      # this CDN endpoint to optimize for, e.g. Download, Media services. With
      # this information, CDN can apply scenario driven optimization. Possible
      # values include: 'GeneralWebDelivery', 'GeneralMediaStreaming',
      # 'VideoOnDemandMediaStreaming', 'LargeFileDownload',
      # 'DynamicSiteAcceleration'
      attr_accessor :optimization_type

      # @return [String] Path to a file hosted on the origin which helps
      # accelerate delivery of the dynamic content and calculate the most
      # optimal routes for the CDN. This is relative to the origin path.
      attr_accessor :probe_path

      # @return [Array<GeoFilter>] List of rules defining the user's geo access
      # within a CDN endpoint. Each geo filter defines an acess rule to a
      # specified path or content, e.g. block APAC for path /pictures/
      attr_accessor :geo_filters

      # @return [String] The host name of the endpoint structured as
      # {endpointName}.{DNSZone}, e.g. consoto.azureedge.net
      attr_accessor :host_name

      # @return [Array<DeepCreatedOrigin>] The source of the content being
      # delivered via CDN.
      attr_accessor :origins

      # @return [EndpointResourceState] Resource status of the endpoint.
      # Possible values include: 'Creating', 'Deleting', 'Running', 'Starting',
      # 'Stopped', 'Stopping'
      attr_accessor :resource_state

      # @return [String] Provisioning status of the endpoint.
      attr_accessor :provisioning_state


      #
      # Mapper for Endpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Endpoint',
          type: {
            name: 'Composite',
            class_name: 'Endpoint',
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
              location: {
                required: true,
                serialized_name: 'location',
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
              origin_host_header: {
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              origin_path: {
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
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
              },
              is_compression_enabled: {
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              optimization_type: {
                required: false,
                serialized_name: 'properties.optimizationType',
                type: {
                  name: 'String'
                }
              },
              probe_path: {
                required: false,
                serialized_name: 'properties.probePath',
                type: {
                  name: 'String'
                }
              },
              geo_filters: {
                required: false,
                serialized_name: 'properties.geoFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'GeoFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GeoFilter'
                      }
                  }
                }
              },
              host_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              origins: {
                required: true,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DeepCreatedOriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOrigin'
                      }
                  }
                }
              },
              resource_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
