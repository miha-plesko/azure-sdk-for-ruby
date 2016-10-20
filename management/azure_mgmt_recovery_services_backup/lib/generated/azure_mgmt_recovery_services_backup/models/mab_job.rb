# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # MAB workload-specific job.
    #
    class MabJob < Job

      include MsRestAzure


      def initialize
        @jobType = "MabJob"
      end

      attr_accessor :jobType

      # @return [String] Time taken by job to run.
      attr_accessor :duration

      # @return [Array<JobSupportedAction>] The state/actions applicable on
      # jobs like cancel/retry.
      attr_accessor :actions_info

      # @return [String] Name of server protecting the DS.
      attr_accessor :mab_server_name

      # @return [MabServerType] Server type of MAB container. Possible values:
      # IaasVMContainer, MABContainer, AzureSqlContainer, WindowsServer.
      # Possible values include: 'Invalid', 'Unknown', 'IaasVMContainer',
      # 'IaasVMServiceContainer', 'DPMContainer', 'DPMVenusContainer',
      # 'MABContainer', 'ClusterResource', 'AzureSqlContainer',
      # 'WindowsServer', 'Windows'
      attr_accessor :mab_server_type

      # @return [WorkloadType] Workload type of backup item. Possible values:
      # VM, FileFolder, AzureSqlDb. Possible values include: 'Invalid', 'VM',
      # 'FileFolder', 'AzureSqlDb', 'SQLDB', 'Exchange', 'Sharepoint',
      # 'DPMUnknown'
      attr_accessor :workload_type

      # @return [Array<MabErrorInfo>] The errors.
      attr_accessor :error_details

      # @return [MabJobExtendedInfo] Additional information on the job.
      attr_accessor :extended_info


      #
      # Mapper for MabJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MabJob',
          type: {
            name: 'Composite',
            class_name: 'MabJob',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
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
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              entity_friendly_name: {
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
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
              activity_id: {
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              jobType: {
                required: true,
                serialized_name: 'jobType',
                type: {
                  name: 'String'
                }
              },
              duration: {
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'String'
                }
              },
              actions_info: {
                required: false,
                serialized_name: 'actionsInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobSupportedActionElementType',
                      type: {
                        name: 'Enum',
                        module: 'JobSupportedAction'
                      }
                  }
                }
              },
              mab_server_name: {
                required: false,
                serialized_name: 'mabServerName',
                type: {
                  name: 'String'
                }
              },
              mab_server_type: {
                required: false,
                serialized_name: 'mabServerType',
                type: {
                  name: 'Enum',
                  module: 'MabServerType'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'Enum',
                  module: 'WorkloadType'
                }
              },
              error_details: {
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MabErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MabErrorInfo'
                      }
                  }
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MabJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end