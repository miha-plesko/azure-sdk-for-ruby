# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a virtual machine scale set virtual machine.
    #
    class VirtualMachineScaleSetVM < Resource

      include MsRestAzure

      # @return [String] The virtual machine instance ID.
      attr_accessor :instance_id

      # @return [Sku] The virtual machine SKU.
      attr_accessor :sku

      # @return [Boolean] Specifies whether the latest model has been applied
      # to the virtual machine.
      attr_accessor :latest_model_applied

      # @return [String] Azure VM unique ID.
      attr_accessor :vm_id

      # @return [VirtualMachineScaleSetVMInstanceView] The virtual machine
      # instance view.
      attr_accessor :instance_view

      # @return [HardwareProfile] Specifies the hardware settings for the
      # virtual machine.
      attr_accessor :hardware_profile

      # @return [StorageProfile] Specifies the storage settings for the virtual
      # machine disks.
      attr_accessor :storage_profile

      # @return [OSProfile] Specifies the operating system settings for the
      # virtual machine.
      attr_accessor :os_profile

      # @return [NetworkProfile] Specifies the network interfaces of the
      # virtual machine.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] Specifies the boot diagnostic settings
      # state. <br><br>Minimum api-version: 2015-06-15.
      attr_accessor :diagnostics_profile

      # @return [SubResource] Specifies information about the availability set
      # that the virtual machine should be assigned to. Virtual machines
      # specified in the same availability set are allocated to different nodes
      # to maximize availability. For more information about availability sets,
      # see [Manage the availability of virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-manage-availability?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      # <br><br> For more information on Azure planned maintainance, see
      # [Planned maintenance for virtual machines in
      # Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-planned-maintenance?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> Currently, a VM can only be added to availability set at
      # creation time. An existing VM cannot be added to an availability set.
      attr_accessor :availability_set

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [String] Specifies that the image or disk that is being used
      # was licensed on-premises. This element is only used for images that
      # contain the Windows Server operating system. <br><br> Possible values
      # are: <br><br> Windows_Client <br><br> Windows_Server <br><br> If this
      # element is included in a request for an update, the value must match
      # the initial value. This value cannot be updated. <br><br> For more
      # information, see [Azure Hybrid Use Benefit for Windows
      # Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> Minimum api-version: 2015-06-15
      attr_accessor :license_type

      # @return [Plan] Specifies information about the marketplace image used
      # to create the virtual machine. This element is only used for
      # marketplace images. Before you can use a marketplace image from an API,
      # you must enable the image for programmatic use.  In the Azure portal,
      # find the marketplace image that you want to use and then click **Want
      # to deploy programmatically, Get Started ->**. Enter any required
      # information and then click **Save**.
      attr_accessor :plan

      # @return [Array<VirtualMachineExtension>] The virtual machine child
      # extension resources.
      attr_accessor :resources


      #
      # Mapper for VirtualMachineScaleSetVM class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetVM',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVM',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'instanceId',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              latest_model_applied: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.latestModelApplied',
                type: {
                  name: 'Boolean'
                }
              },
              vm_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.vmId',
                type: {
                  name: 'String'
                }
              },
              instance_view: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetVMInstanceView'
                }
              },
              hardware_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hardwareProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HardwareProfile'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              os_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'OSProfile'
                }
              },
              network_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkProfile'
                }
              },
              diagnostics_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsProfile'
                }
              },
              availability_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availabilitySet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
                }
              },
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtension'
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
