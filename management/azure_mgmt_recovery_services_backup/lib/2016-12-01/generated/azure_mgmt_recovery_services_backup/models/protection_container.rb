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
    # Base class for container with backup items. Containers with specific
    # workloads are derived from this class.
    #
    class ProtectionContainer

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureBackupServerContainer"] = "AzureBackupServerContainer"
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMContainer"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMContainer"
      @@discriminatorMap["SQLAGWorkLoadContainer"] = "AzureSQLAGWorkloadContainerProtectionContainer"
      @@discriminatorMap["AzureSqlContainer"] = "AzureSqlContainer"
      @@discriminatorMap["StorageContainer"] = "AzureStorageContainer"
      @@discriminatorMap["VMAppContainer"] = "AzureVMAppContainerProtectionContainer"
      @@discriminatorMap["AzureWorkloadBackupRequest"] = "AzureWorkloadContainer"
      @@discriminatorMap["DPMContainer"] = "DpmContainer"
      @@discriminatorMap["GenericContainer"] = "GenericContainer"
      @@discriminatorMap["IaaSVMContainer"] = "IaaSVMContainer"
      @@discriminatorMap["Windows"] = "MabContainer"

      def initialize
        @containerType = "ProtectionContainer"
      end

      attr_accessor :containerType

      # @return [String] Friendly name of the container.
      attr_accessor :friendly_name

      # @return [BackupManagementType] Type of backup management for the
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql', 'AzureStorage',
      # 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [String] Status of registration of the container with the
      # Recovery Services Vault.
      attr_accessor :registration_status

      # @return [String] Status of health of the container.
      attr_accessor :health_status


      #
      # Mapper for ProtectionContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionContainer',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'containerType',
            uber_parent: 'ProtectionContainer',
            class_name: 'ProtectionContainer',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
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
