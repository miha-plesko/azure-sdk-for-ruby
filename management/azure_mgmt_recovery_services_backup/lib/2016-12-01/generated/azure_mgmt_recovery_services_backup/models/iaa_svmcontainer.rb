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
    # IaaS VM workload-specific container.
    #
    class IaaSVMContainer < ProtectionContainer

      include MsRestAzure


      def initialize
        @containerType = "IaaSVMContainer"
      end

      attr_accessor :containerType

      # @return [String] Fully qualified ARM url of the virtual machine
      # represented by this Azure IaaS VM container.
      attr_accessor :virtual_machine_id

      # @return [String] Specifies whether the container represents a Classic
      # or an Azure Resource Manager VM.
      attr_accessor :virtual_machine_version

      # @return [String] Resource group name of Recovery Services Vault.
      attr_accessor :resource_group


      #
      # Mapper for IaaSVMContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IaaSVMContainer',
          type: {
            name: 'Composite',
            class_name: 'IaaSVMContainer',
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
              },
              containerType: {
                required: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                required: false,
                serialized_name: 'virtualMachineId',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_version: {
                required: false,
                serialized_name: 'virtualMachineVersion',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                serialized_name: 'resourceGroup',
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
