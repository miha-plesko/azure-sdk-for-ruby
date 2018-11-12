# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  #
  # ServiceAssociationLink
  #
  class ServiceAssociationLink
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ServiceAssociationLink class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerInstanceManagementClient] reference to the ContainerInstanceManagementClient
    attr_reader :client

    #
    # Delete the container instance service association link for the subnet.
    #
    # Delete the container instance service association link for the subnet. This
    # operation unblocks user from deleting subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, virtual_network_name, subnet_name, custom_headers = nil)
      response = delete_async(resource_group_name, virtual_network_name, subnet_name, custom_headers).value!
      nil
    end

    #
    # Delete the container instance service association link for the subnet.
    #
    # Delete the container instance service association link for the subnet. This
    # operation unblocks user from deleting subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, virtual_network_name, subnet_name, custom_headers = nil)
      delete_async(resource_group_name, virtual_network_name, subnet_name, custom_headers).value!
    end

    #
    # Delete the container instance service association link for the subnet.
    #
    # Delete the container instance service association link for the subnet. This
    # operation unblocks user from deleting subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, virtual_network_name, subnet_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_network_name is nil' if virtual_network_name.nil?
      fail ArgumentError, 'subnet_name is nil' if subnet_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/providers/Microsoft.ContainerInstance/serviceAssociationLinks/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'virtualNetworkName' => virtual_network_name,'subnetName' => subnet_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
