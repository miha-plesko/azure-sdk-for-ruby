# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  #
  # ApiManagement Client
  #
  class ApiIssueComment
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApiIssueComment class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, startswith, endswith |
    # | userId          | ge, le, eq, ne, gt, lt | substringof, startswith,
    # endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IssueCommentContract>] operation results.
    #
    def list_by_service(resource_group_name, service_name, api_id, issue_id, filter = nil, top = nil, skip = nil, custom_headers = nil)
      first_page = list_by_service_as_lazy(resource_group_name, service_name, api_id, issue_id, filter, top, skip, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, startswith, endswith |
    # | userId          | ge, le, eq, ne, gt, lt | substringof, startswith,
    # endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_with_http_info(resource_group_name, service_name, api_id, issue_id, filter = nil, top = nil, skip = nil, custom_headers = nil)
      list_by_service_async(resource_group_name, service_name, api_id, issue_id, filter, top, skip, custom_headers).value!
    end

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, startswith, endswith |
    # | userId          | ge, le, eq, ne, gt, lt | substringof, startswith,
    # endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_async(resource_group_name, service_name, api_id, issue_id, filter = nil, top = nil, skip = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/comments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$top' => top,'$skip' => skip},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentCollection.mapper()
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
    # Gets the entity state (Etag) version of the issue Comment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def get_entity_tag(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      response = get_entity_tag_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers).value!
      nil
    end

    #
    # Gets the entity state (Etag) version of the issue Comment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_entity_tag_with_http_info(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      get_entity_tag_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers).value!
    end

    #
    # Gets the entity state (Etag) version of the issue Comment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_entity_tag_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, 'comment_id is nil' if comment_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/comments/{commentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'commentId' => comment_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:head, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets the details of the issue Comment for an API specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCommentContract] operation results.
    #
    def get(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      response = get_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the details of the issue Comment for an API specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      get_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers).value!
    end

    #
    # Gets the details of the issue Comment for an API specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, service_name, api_id, issue_id, comment_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, 'comment_id is nil' if comment_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/comments/{commentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'commentId' => comment_id,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentContract.mapper()
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
    # Creates a new Comment for the Issue in an API or updates an existing one.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param parameters [IssueCommentContract] Create parameters.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCommentContract] operation results.
    #
    def create_or_update(resource_group_name, service_name, api_id, issue_id, comment_id, parameters, if_match = nil, custom_headers = nil)
      response = create_or_update_async(resource_group_name, service_name, api_id, issue_id, comment_id, parameters, if_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a new Comment for the Issue in an API or updates an existing one.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param parameters [IssueCommentContract] Create parameters.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, service_name, api_id, issue_id, comment_id, parameters, if_match = nil, custom_headers = nil)
      create_or_update_async(resource_group_name, service_name, api_id, issue_id, comment_id, parameters, if_match, custom_headers).value!
    end

    #
    # Creates a new Comment for the Issue in an API or updates an existing one.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param parameters [IssueCommentContract] Create parameters.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, service_name, api_id, issue_id, comment_id, parameters, if_match = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, 'comment_id is nil' if comment_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentContract.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/comments/{commentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'commentId' => comment_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentContract.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentContract.mapper()
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
    # Deletes the specified comment from an Issue.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, service_name, api_id, issue_id, comment_id, if_match, custom_headers = nil)
      response = delete_async(resource_group_name, service_name, api_id, issue_id, comment_id, if_match, custom_headers).value!
      nil
    end

    #
    # Deletes the specified comment from an Issue.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, service_name, api_id, issue_id, comment_id, if_match, custom_headers = nil)
      delete_async(resource_group_name, service_name, api_id, issue_id, comment_id, if_match, custom_headers).value!
    end

    #
    # Deletes the specified comment from an Issue.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param comment_id [String] Comment identifier within an Issue. Must be unique
    # in the current Issue.
    # @param if_match [String] ETag of the Issue Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, service_name, api_id, issue_id, comment_id, if_match, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, 'comment_id is nil' if comment_id.nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/comments/{commentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'commentId' => comment_id,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCommentCollection] operation results.
    #
    def list_by_service_next(next_page_link, custom_headers = nil)
      response = list_by_service_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_service_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_next_async(next_page_link, custom_headers = nil)
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IssueCommentCollection.mapper()
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
    # Lists all comments for the Issue assosiated with the specified API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, startswith, endswith |
    # | userId          | ge, le, eq, ne, gt, lt | substringof, startswith,
    # endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCommentCollection] which provide lazy access to pages of the
    # response.
    #
    def list_by_service_as_lazy(resource_group_name, service_name, api_id, issue_id, filter = nil, top = nil, skip = nil, custom_headers = nil)
      response = list_by_service_async(resource_group_name, service_name, api_id, issue_id, filter, top, skip, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_service_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
