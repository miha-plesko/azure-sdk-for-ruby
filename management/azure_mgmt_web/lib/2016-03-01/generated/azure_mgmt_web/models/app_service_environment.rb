# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Description of an App Service Environment.
    #
    class AppServiceEnvironment

      include MsRestAzure

      # @return [String] Name of the App Service Environment.
      attr_accessor :name

      # @return [String] Location of the App Service Environment, e.g. "West
      # US".
      attr_accessor :location

      # @return [ProvisioningState] Provisioning state of the App Service
      # Environment. Possible values include: 'Succeeded', 'Failed',
      # 'Canceled', 'InProgress', 'Deleting'
      attr_accessor :provisioning_state

      # @return [HostingEnvironmentStatus] Current status of the App Service
      # Environment. Possible values include: 'Preparing', 'Ready', 'Scaling',
      # 'Deleting'
      attr_accessor :status

      # @return [String] Name of the Virtual Network for the App Service
      # Environment.
      attr_accessor :vnet_name

      # @return [String] Resource group of the Virtual Network.
      attr_accessor :vnet_resource_group_name

      # @return [String] Subnet of the Virtual Network.
      attr_accessor :vnet_subnet_name

      # @return [VirtualNetworkProfile] Description of the Virtual Network.
      attr_accessor :virtual_network

      # @return [InternalLoadBalancingMode] Specifies which endpoints to serve
      # internally in the Virtual Network for the App Service Environment.
      # Possible values include: 'None', 'Web', 'Publishing'
      attr_accessor :internal_load_balancing_mode

      # @return [String] Front-end VM size, e.g. "Medium", "Large".
      attr_accessor :multi_size

      # @return [Integer] Number of front-end instances.
      attr_accessor :multi_role_count

      # @return [Array<WorkerPool>] Description of worker pools with worker
      # size IDs, VM sizes, and number of workers in each pool.
      attr_accessor :worker_pools

      # @return [Integer] Number of IP SSL addresses reserved for the App
      # Service Environment.
      attr_accessor :ipssl_address_count

      # @return [String] Edition of the metadata database for the App Service
      # Environment, e.g. "Standard".
      attr_accessor :database_edition

      # @return [String] Service objective of the metadata database for the App
      # Service Environment, e.g. "S0".
      attr_accessor :database_service_objective

      # @return [Integer] Number of upgrade domains of the App Service
      # Environment.
      attr_accessor :upgrade_domains

      # @return [String] Subscription of the App Service Environment.
      attr_accessor :subscription_id

      # @return [String] DNS suffix of the App Service Environment.
      attr_accessor :dns_suffix

      # @return [String] Last deployment action on the App Service Environment.
      attr_accessor :last_action

      # @return [String] Result of the last deployment action on the App
      # Service Environment.
      attr_accessor :last_action_result

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for front-ends.
      attr_accessor :allowed_multi_sizes

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for workers.
      attr_accessor :allowed_worker_sizes

      # @return [Integer] Maximum number of VMs in the App Service Environment.
      attr_accessor :maximum_number_of_machines

      # @return [Array<VirtualIPMapping>] Description of IP SSL mapping for the
      # App Service Environment.
      attr_accessor :vip_mappings

      # @return [Array<StampCapacity>] Current total, used, and available
      # worker capacities.
      attr_accessor :environment_capacities

      # @return [Array<NetworkAccessControlEntry>] Access control list for
      # controlling traffic to the App Service Environment.
      attr_accessor :network_access_control_list

      # @return [Boolean] True/false indicating whether the App Service
      # Environment is healthy.
      attr_accessor :environment_is_healthy

      # @return [String] Detailed message about with results of the last check
      # of the App Service Environment.
      attr_accessor :environment_status

      # @return [String] Resource group of the App Service Environment.
      attr_accessor :resource_group

      # @return [Integer] Scale factor for front-ends.
      attr_accessor :front_end_scale_factor

      # @return [Integer] Default Scale Factor for FrontEnds.
      attr_accessor :default_front_end_scale_factor

      # @return [String] API Management Account associated with the App Service
      # Environment.
      attr_accessor :api_management_account_id

      # @return [Boolean] <code>true</code> if the App Service Environment is
      # suspended; otherwise, <code>false</code>. The environment can be
      # suspended, e.g. when the management endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic).
      attr_accessor :suspended

      # @return [Boolean] True/false indicating whether the App Service
      # Environment is suspended. The environment can be suspended e.g. when
      # the management endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic).
      attr_accessor :dynamic_cache_enabled

      # @return [Array<NameValuePair>] Custom settings for changing the
      # behavior of the App Service Environment.
      attr_accessor :cluster_settings

      # @return [Array<String>] User added ip ranges to whitelist on ASE db
      attr_accessor :user_whitelisted_ip_ranges


      #
      # Mapper for AppServiceEnvironment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppServiceEnvironment',
          type: {
            name: 'Composite',
            class_name: 'AppServiceEnvironment',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
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
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'HostingEnvironmentStatus'
                }
              },
              vnet_name: {
                required: false,
                serialized_name: 'vnetName',
                type: {
                  name: 'String'
                }
              },
              vnet_resource_group_name: {
                required: false,
                serialized_name: 'vnetResourceGroupName',
                type: {
                  name: 'String'
                }
              },
              vnet_subnet_name: {
                required: false,
                serialized_name: 'vnetSubnetName',
                type: {
                  name: 'String'
                }
              },
              virtual_network: {
                required: true,
                serialized_name: 'virtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkProfile'
                }
              },
              internal_load_balancing_mode: {
                required: false,
                serialized_name: 'internalLoadBalancingMode',
                type: {
                  name: 'Enum',
                  module: 'InternalLoadBalancingMode'
                }
              },
              multi_size: {
                required: false,
                serialized_name: 'multiSize',
                type: {
                  name: 'String'
                }
              },
              multi_role_count: {
                required: false,
                serialized_name: 'multiRoleCount',
                type: {
                  name: 'Number'
                }
              },
              worker_pools: {
                required: true,
                serialized_name: 'workerPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WorkerPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkerPool'
                      }
                  }
                }
              },
              ipssl_address_count: {
                required: false,
                serialized_name: 'ipsslAddressCount',
                type: {
                  name: 'Number'
                }
              },
              database_edition: {
                required: false,
                read_only: true,
                serialized_name: 'databaseEdition',
                type: {
                  name: 'String'
                }
              },
              database_service_objective: {
                required: false,
                read_only: true,
                serialized_name: 'databaseServiceObjective',
                type: {
                  name: 'String'
                }
              },
              upgrade_domains: {
                required: false,
                read_only: true,
                serialized_name: 'upgradeDomains',
                type: {
                  name: 'Number'
                }
              },
              subscription_id: {
                required: false,
                read_only: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              dns_suffix: {
                required: false,
                serialized_name: 'dnsSuffix',
                type: {
                  name: 'String'
                }
              },
              last_action: {
                required: false,
                read_only: true,
                serialized_name: 'lastAction',
                type: {
                  name: 'String'
                }
              },
              last_action_result: {
                required: false,
                read_only: true,
                serialized_name: 'lastActionResult',
                type: {
                  name: 'String'
                }
              },
              allowed_multi_sizes: {
                required: false,
                read_only: true,
                serialized_name: 'allowedMultiSizes',
                type: {
                  name: 'String'
                }
              },
              allowed_worker_sizes: {
                required: false,
                read_only: true,
                serialized_name: 'allowedWorkerSizes',
                type: {
                  name: 'String'
                }
              },
              maximum_number_of_machines: {
                required: false,
                read_only: true,
                serialized_name: 'maximumNumberOfMachines',
                type: {
                  name: 'Number'
                }
              },
              vip_mappings: {
                required: false,
                read_only: true,
                serialized_name: 'vipMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualIPMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualIPMapping'
                      }
                  }
                }
              },
              environment_capacities: {
                required: false,
                read_only: true,
                serialized_name: 'environmentCapacities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StampCapacityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StampCapacity'
                      }
                  }
                }
              },
              network_access_control_list: {
                required: false,
                serialized_name: 'networkAccessControlList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkAccessControlEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkAccessControlEntry'
                      }
                  }
                }
              },
              environment_is_healthy: {
                required: false,
                read_only: true,
                serialized_name: 'environmentIsHealthy',
                type: {
                  name: 'Boolean'
                }
              },
              environment_status: {
                required: false,
                read_only: true,
                serialized_name: 'environmentStatus',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                read_only: true,
                serialized_name: 'resourceGroup',
                type: {
                  name: 'String'
                }
              },
              front_end_scale_factor: {
                required: false,
                serialized_name: 'frontEndScaleFactor',
                type: {
                  name: 'Number'
                }
              },
              default_front_end_scale_factor: {
                required: false,
                read_only: true,
                serialized_name: 'defaultFrontEndScaleFactor',
                type: {
                  name: 'Number'
                }
              },
              api_management_account_id: {
                required: false,
                serialized_name: 'apiManagementAccountId',
                type: {
                  name: 'String'
                }
              },
              suspended: {
                required: false,
                serialized_name: 'suspended',
                type: {
                  name: 'Boolean'
                }
              },
              dynamic_cache_enabled: {
                required: false,
                serialized_name: 'dynamicCacheEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              cluster_settings: {
                required: false,
                serialized_name: 'clusterSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NameValuePairElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NameValuePair'
                      }
                  }
                }
              },
              user_whitelisted_ip_ranges: {
                required: false,
                serialized_name: 'userWhitelistedIpRanges',
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
