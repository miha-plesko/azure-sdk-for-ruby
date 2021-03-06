# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::CDN::Profiles::Latest
  module Mgmt
    Profiles = Azure::CDN::Mgmt::V2017_10_12::Profiles
    Endpoints = Azure::CDN::Mgmt::V2017_10_12::Endpoints
    Origins = Azure::CDN::Mgmt::V2017_10_12::Origins
    CustomDomains = Azure::CDN::Mgmt::V2017_10_12::CustomDomains
    ResourceUsageOperations = Azure::CDN::Mgmt::V2017_10_12::ResourceUsageOperations
    Operations = Azure::CDN::Mgmt::V2017_10_12::Operations
    EdgeNodes = Azure::CDN::Mgmt::V2017_10_12::EdgeNodes

    module Models
      OriginUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
      Sku = Azure::CDN::Mgmt::V2017_10_12::Models::Sku
      OriginListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
      ProfileListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
      PurgeParameters = Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
      SsoUri = Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
      LoadParameters = Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
      DeepCreatedOrigin = Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
      CidrIpAddress = Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
      EndpointListResult = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
      OperationsListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
      DeliveryRuleAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
      ProfileUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
      DeliveryRule = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
      EndpointUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
      CustomDomainParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
      EdgenodeResult = Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
      CustomDomainListResult = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
      ErrorResponse = Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
      ValidateCustomDomainInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
      IpAddressGroup = Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
      ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
      Resource = Azure::CDN::Mgmt::V2017_10_12::Models::Resource
      CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
      DeliveryRuleCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
      CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
      UrlPathConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
      ValidateProbeInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
      CacheExpirationActionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
      ValidateProbeOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
      GeoFilter = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
      ResourceUsage = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
      UrlFileExtensionConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
      ResourceUsageListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
      EndpointPropertiesUpdateParametersDeliveryPolicy = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      OperationDisplay = Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
      SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
      Operation = Azure::CDN::Mgmt::V2017_10_12::Models::Operation
      Profile = Azure::CDN::Mgmt::V2017_10_12::Models::Profile
      Endpoint = Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
      DeliveryRuleUrlPathCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
      DeliveryRuleUrlFileExtensionCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
      DeliveryRuleCacheExpirationAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
      Origin = Azure::CDN::Mgmt::V2017_10_12::Models::Origin
      ProxyResource = Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
      CustomDomain = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
      EdgeNode = Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
      TrackedResource = Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
      SkuName = Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
      ProfileResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
      OptimizationType = Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
      EndpointResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
      OriginResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
      CustomDomainResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
      CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
      ResourceType = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
    end

    #
    # CDNManagementClass
    #
    class CDNManagementClass
      attr_reader :profiles, :endpoints, :origins, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::CDN::Mgmt::V2017_10_12::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @profiles = @client_0.profiles
        @endpoints = @client_0.endpoints
        @origins = @client_0.origins
        @custom_domains = @client_0.custom_domains
        @resource_usage_operations = @client_0.resource_usage_operations
        @operations = @client_0.operations
        @edge_nodes = @client_0.edge_nodes

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/CDN/Mgmt'
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
      def origin_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
      end
      def sku
        Azure::CDN::Mgmt::V2017_10_12::Models::Sku
      end
      def origin_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
      end
      def profile_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
      end
      def purge_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
      end
      def sso_uri
        Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
      end
      def load_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
      end
      def deep_created_origin
        Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
      end
      def cidr_ip_address
        Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
      end
      def endpoint_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
      end
      def operations_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
      end
      def delivery_rule_action
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
      end
      def profile_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
      end
      def delivery_rule
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
      end
      def endpoint_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
      end
      def custom_domain_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
      end
      def edgenode_result
        Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
      end
      def custom_domain_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
      end
      def error_response
        Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
      end
      def validate_custom_domain_input
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
      end
      def ip_address_group
        Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
      end
      def validate_custom_domain_output
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
      end
      def resource
        Azure::CDN::Mgmt::V2017_10_12::Models::Resource
      end
      def check_name_availability_input
        Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
      end
      def delivery_rule_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
      end
      def check_name_availability_output
        Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
      end
      def url_path_condition_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
      end
      def validate_probe_input
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
      end
      def cache_expiration_action_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
      end
      def validate_probe_output
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
      end
      def geo_filter
        Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
      end
      def resource_usage
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
      end
      def url_file_extension_condition_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
      end
      def resource_usage_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
      end
      def endpoint_properties_update_parameters_delivery_policy
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      end
      def operation_display
        Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
      end
      def supported_optimization_types_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
      end
      def operation
        Azure::CDN::Mgmt::V2017_10_12::Models::Operation
      end
      def profile
        Azure::CDN::Mgmt::V2017_10_12::Models::Profile
      end
      def endpoint
        Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
      end
      def delivery_rule_url_path_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
      end
      def delivery_rule_url_file_extension_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
      end
      def delivery_rule_cache_expiration_action
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
      end
      def origin
        Azure::CDN::Mgmt::V2017_10_12::Models::Origin
      end
      def proxy_resource
        Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
      end
      def custom_domain
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
      end
      def edge_node
        Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
      end
      def tracked_resource
        Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
      end
      def sku_name
        Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
      end
      def profile_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
      end
      def optimization_type
        Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
      end
      def endpoint_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
      end
      def query_string_caching_behavior
        Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
      end
      def geo_filter_actions
        Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
      end
      def origin_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
      end
      def custom_domain_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
      end
      def custom_https_provisioning_state
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
      end
      def custom_https_provisioning_substate
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
      end
      def resource_type
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
      end
    end
  end
end
