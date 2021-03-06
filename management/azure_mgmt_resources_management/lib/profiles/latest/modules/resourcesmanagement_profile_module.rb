# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources_management'

module Azure::ResourcesManagement::Profiles::Latest
  module Mgmt
    ManagementGroups = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroups
    ManagementGroupSubscriptions = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroupSubscriptions
    Operations = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Operations
    Entities = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Entities

    module Models
      ManagementGroup = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroup
      ErrorDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorDetails
      OperationResults = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationResults
      OperationDisplayProperties = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationDisplayProperties
      EntityParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityParentGroupInfo
      OperationListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationListResult
      EntityInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityInfo
      TenantBackfillStatusResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::TenantBackfillStatusResult
      EntityListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityListResult
      ManagementGroupListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupListResult
      EntityHierarchyItem = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityHierarchyItem
      ManagementGroupDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupDetails
      PatchManagementGroupRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::PatchManagementGroupRequest
      ErrorResponse = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorResponse
      CreateParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateParentGroupInfo
      CheckNameAvailabilityResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
      CreateManagementGroupDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupDetails
      ParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ParentGroupInfo
      CreateManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupChildInfo
      Operation = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Operation
      CreateManagementGroupRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupRequest
      ManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupChildInfo
      CheckNameAvailabilityRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityRequest
      ManagementGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupInfo
      Reason = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Reason
      Status = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Status
      Type = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Type
    end

    #
    # ResourcesManagementManagementClass
    #
    class ResourcesManagementManagementClass
      attr_reader :management_groups, :management_group_subscriptions, :operations, :entities, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroupsAPI.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @management_groups = @client_0.management_groups
        @management_group_subscriptions = @client_0.management_group_subscriptions
        @operations = @client_0.operations
        @entities = @client_0.entities

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ResourcesManagement/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def management_group
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroup
      end
      def error_details
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorDetails
      end
      def operation_results
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationResults
      end
      def operation_display_properties
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationDisplayProperties
      end
      def entity_parent_group_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityParentGroupInfo
      end
      def operation_list_result
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationListResult
      end
      def entity_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityInfo
      end
      def tenant_backfill_status_result
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::TenantBackfillStatusResult
      end
      def entity_list_result
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityListResult
      end
      def management_group_list_result
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupListResult
      end
      def entity_hierarchy_item
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityHierarchyItem
      end
      def management_group_details
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupDetails
      end
      def patch_management_group_request
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::PatchManagementGroupRequest
      end
      def error_response
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorResponse
      end
      def create_parent_group_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateParentGroupInfo
      end
      def check_name_availability_result
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
      end
      def create_management_group_details
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupDetails
      end
      def parent_group_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ParentGroupInfo
      end
      def create_management_group_child_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupChildInfo
      end
      def operation
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Operation
      end
      def create_management_group_request
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupRequest
      end
      def management_group_child_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupChildInfo
      end
      def check_name_availability_request
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityRequest
      end
      def management_group_info
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupInfo
      end
      def reason
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Reason
      end
      def status
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Status
      end
      def type
        Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Type
      end
    end
  end
end
