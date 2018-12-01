# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::ContainerRegistry::Profiles::Latest
  module Mgmt
    Registries = Azure::ContainerRegistry::Mgmt::V2017_10_01::Registries
    Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
    Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
    Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks

    module Models
      WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
      WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
      RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
      QuarantinePolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
      ImportSource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
      TrustPolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
      RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
      RegistryPolicies = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
      OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
      RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
      OperationMetricSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
      OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
      Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
      ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
      StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
      ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
      NetworkRuleSet = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::NetworkRuleSet
      Resource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
      RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
      WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
      RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
      WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
      RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
      WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
      ImportSourceCredentials = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
      EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
      OperationServiceSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
      CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
      Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
      EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
      RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
      Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
      RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
      Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
      OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
      RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
      Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
      EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
      VirtualNetworkRule = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::VirtualNetworkRule
      EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
      ImportImageParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
      EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
      Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
      Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
      Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
      Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
      ImportMode = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
      SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
      SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
      ProvisioningState = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
      DefaultAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::DefaultAction
      PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
      RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
      PolicyStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
      TrustPolicyType = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
      Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
    end

    #
    # ContainerRegistryManagementClass
    #
    class ContainerRegistryManagementClass
      attr_reader :registries, :operations, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @registries = @client_0.registries
        @operations = @client_0.operations
        @replications = @client_0.replications
        @webhooks = @client_0.webhooks

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ContainerRegistry/Mgmt'
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
      def webhook_action
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
      end
      def webhook_status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
      end
      def registry_usage_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
      end
      def quarantine_policy
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
      end
      def import_source
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
      end
      def trust_policy
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
      end
      def registry_name_check_request
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
      end
      def registry_policies
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
      end
      def operation_display_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
      end
      def registry_name_status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
      end
      def operation_metric_specification_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
      end
      def operation_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
      end
      def sku
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
      end
      def replication_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
      end
      def storage_account_properties
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
      end
      def replication_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
      end
      def network_rule_set
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::NetworkRuleSet
      end
      def resource
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
      end
      def registry_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
      end
      def webhook_create_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
      end
      def registry_password
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
      end
      def webhook_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
      end
      def regenerate_credential_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
      end
      def webhook_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
      end
      def import_source_credentials
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
      end
      def event_info
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
      end
      def operation_service_specification_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
      end
      def callback_config
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
      end
      def target
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
      end
      def event_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
      end
      def registry_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
      end
      def request
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
      end
      def registry_usage
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
      end
      def actor
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
      end
      def operation_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
      end
      def registry_list_credentials_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
      end
      def status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
      end
      def event_content
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
      end
      def virtual_network_rule
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::VirtualNetworkRule
      end
      def event_request_message
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
      end
      def import_image_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
      end
      def event_response_message
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
      end
      def registry
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
      end
      def replication
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
      end
      def webhook
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
      end
      def event
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
      end
      def import_mode
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
      end
      def sku_name
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
      end
      def sku_tier
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
      end
      def provisioning_state
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
      end
      def default_action
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::DefaultAction
      end
      def password_name
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
      end
      def registry_usage_unit
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
      end
      def policy_status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
      end
      def trust_policy_type
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
      end
      def source
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
      end
    end
  end
end
