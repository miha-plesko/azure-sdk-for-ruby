# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_04_01
  module Models
    #
    # App Service plan.
    #
    class AppServicePlan < Resource

      include MsRestAzure

      # @return [String] Name for the App Service plan.
      attr_accessor :app_service_plan_name

      # @return [String] Target worker tier assigned to the App Service plan.
      attr_accessor :worker_tier_name

      # @return [StatusOptions] App Service plan status. Possible values
      # include: 'Ready', 'Pending', 'Creating'
      attr_accessor :status

      # @return [String] App Service plan subscription.
      attr_accessor :subscription

      # @return [String] App Service plan administration site.
      attr_accessor :admin_site_name

      # @return [HostingEnvironmentProfile] Specification for the App Service
      # Environment to use for the App Service plan.
      attr_accessor :hosting_environment_profile

      # @return [Integer] Maximum number of instances that can be assigned to
      # this App Service plan.
      attr_accessor :maximum_number_of_workers

      # @return [String] Geographical location for the App Service plan.
      attr_accessor :geo_region

      # @return [Boolean] If <code>true</code>, apps assigned to this App
      # Service plan can be scaled independently.
      # If <code>false</code>, apps assigned to this App Service plan will
      # scale to all instances of the plan. Default value: false .
      attr_accessor :per_site_scaling

      # @return [Integer] Number of apps assigned to this App Service plan.
      attr_accessor :number_of_sites

      # @return [Boolean] If <code>true</code>, this App Service Plan owns spot
      # instances.
      attr_accessor :is_spot

      # @return [DateTime] The time when the server farm expires. Valid only if
      # it is a spot server farm.
      attr_accessor :spot_expiration_time

      # @return [String] Resource group of the App Service plan.
      attr_accessor :resource_group

      # @return [Boolean] If Linux app service plan <code>true</code>,
      # <code>false</code> otherwise. Default value: false .
      attr_accessor :reserved

      # @return [Integer] Scaling worker count.
      attr_accessor :target_worker_count

      # @return [Integer] Scaling worker size ID.
      attr_accessor :target_worker_size_id

      # @return [ProvisioningState] Provisioning state of the App Service
      # Environment. Possible values include: 'Succeeded', 'Failed',
      # 'Canceled', 'InProgress', 'Deleting'
      attr_accessor :provisioning_state

      # @return [String] Kind of resource.
      attr_accessor :app_service_plan_kind

      # @return [String] MDM ID of the App Service plan.
      attr_accessor :mdm_id

      # @return [Integer] Current worker count.
      attr_accessor :current_number_of_workers

      # @return [String] Current worker size.
      attr_accessor :current_worker_size

      # @return [Integer] Worker count.
      attr_accessor :number_of_workers

      # @return [String] Worker size.
      attr_accessor :worker_size

      # @return [SkuDescription]
      attr_accessor :sku


      #
      # Mapper for AppServicePlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppServicePlan',
          type: {
            name: 'Composite',
            class_name: 'AppServicePlan',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              app_service_plan_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              worker_tier_name: {
                required: false,
                serialized_name: 'properties.workerTierName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'StatusOptions'
                }
              },
              subscription: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subscription',
                type: {
                  name: 'String'
                }
              },
              admin_site_name: {
                required: false,
                serialized_name: 'properties.adminSiteName',
                type: {
                  name: 'String'
                }
              },
              hosting_environment_profile: {
                required: false,
                serialized_name: 'properties.hostingEnvironmentProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HostingEnvironmentProfile'
                }
              },
              maximum_number_of_workers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maximumNumberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              geo_region: {
                required: false,
                read_only: true,
                serialized_name: 'properties.geoRegion',
                type: {
                  name: 'String'
                }
              },
              per_site_scaling: {
                required: false,
                serialized_name: 'properties.perSiteScaling',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              number_of_sites: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfSites',
                type: {
                  name: 'Number'
                }
              },
              is_spot: {
                required: false,
                serialized_name: 'properties.isSpot',
                type: {
                  name: 'Boolean'
                }
              },
              spot_expiration_time: {
                required: false,
                serialized_name: 'properties.spotExpirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              resource_group: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              reserved: {
                required: false,
                serialized_name: 'properties.reserved',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              target_worker_count: {
                required: false,
                serialized_name: 'properties.targetWorkerCount',
                type: {
                  name: 'Number'
                }
              },
              target_worker_size_id: {
                required: false,
                serialized_name: 'properties.targetWorkerSizeId',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              app_service_plan_kind: {
                required: false,
                read_only: true,
                serialized_name: 'properties.kind',
                type: {
                  name: 'String'
                }
              },
              mdm_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.mdmId',
                type: {
                  name: 'String'
                }
              },
              current_number_of_workers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentNumberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              current_worker_size: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentWorkerSize',
                type: {
                  name: 'String'
                }
              },
              number_of_workers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              worker_size: {
                required: false,
                read_only: true,
                serialized_name: 'properties.workerSize',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
