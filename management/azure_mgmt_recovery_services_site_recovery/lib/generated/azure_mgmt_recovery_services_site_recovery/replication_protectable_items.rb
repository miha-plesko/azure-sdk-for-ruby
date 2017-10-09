# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  #
  # ReplicationProtectableItems
  #
  class ReplicationProtectableItems
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ReplicationProtectableItems class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SiteRecoveryManagementClient] reference to the SiteRecoveryManagementClient
    attr_reader :client

    #
    # Gets the details of a protectable item.
    #
    # The operation to get the details of a protectable item.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param protectable_item_name [String] Protectable item name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectableItem] operation results.
    #
    def get(fabric_name, protection_container_name, protectable_item_name, custom_headers = nil)
      response = get_async(fabric_name, protection_container_name, protectable_item_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the details of a protectable item.
    #
    # The operation to get the details of a protectable item.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param protectable_item_name [String] Protectable item name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(fabric_name, protection_container_name, protectable_item_name, custom_headers = nil)
      get_async(fabric_name, protection_container_name, protectable_item_name, custom_headers).value!
    end

    #
    # Gets the details of a protectable item.
    #
    # The operation to get the details of a protectable item.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param protectable_item_name [String] Protectable item name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(fabric_name, protection_container_name, protectable_item_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'protection_container_name is nil' if protection_container_name.nil?
      fail ArgumentError, 'protectable_item_name is nil' if protectable_item_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectableItems/{protectableItemName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'protectionContainerName' => protection_container_name,'protectableItemName' => protectable_item_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServicesSiteRecovery::Models::ProtectableItem.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ProtectableItem>] operation results.
    #
    def list_by_replication_protection_containers(fabric_name, protection_container_name, custom_headers = nil)
      first_page = list_by_replication_protection_containers_as_lazy(fabric_name, protection_container_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_replication_protection_containers_with_http_info(fabric_name, protection_container_name, custom_headers = nil)
      list_by_replication_protection_containers_async(fabric_name, protection_container_name, custom_headers).value!
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_replication_protection_containers_async(fabric_name, protection_container_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'protection_container_name is nil' if protection_container_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectableItems'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'protectionContainerName' => protection_container_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServicesSiteRecovery::Models::ProtectableItemCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectableItemCollection] operation results.
    #
    def list_by_replication_protection_containers_next(next_page_link, custom_headers = nil)
      response = list_by_replication_protection_containers_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_replication_protection_containers_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_replication_protection_containers_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_replication_protection_containers_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServicesSiteRecovery::Models::ProtectableItemCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of protectable items.
    #
    # Lists the protectable items in a protection container.
    #
    # @param fabric_name [String] Fabric name.
    # @param protection_container_name [String] Protection container name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectableItemCollection] which provide lazy access to pages of the
    # response.
    #
    def list_by_replication_protection_containers_as_lazy(fabric_name, protection_container_name, custom_headers = nil)
      response = list_by_replication_protection_containers_async(fabric_name, protection_container_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_replication_protection_containers_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end