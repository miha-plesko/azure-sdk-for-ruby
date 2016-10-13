# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  #
  # ProviderOperationsMetadataOperations
  #
  class ProviderOperationsMetadataOperations
    include Azure::ARM::Authorization::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProviderOperationsMetadataOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AuthorizationManagementClient] reference to the AuthorizationManagementClient
    attr_reader :client

    #
    # Gets provider operations metadata
    #
    # @param resource_provider_namespace [String] Namespace of the resource
    # provider.
    # @param api_version [String]
    # @param expand [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProviderOperationsMetadata] operation results.
    #
    def get(resource_provider_namespace, api_version, expand = 'resourceTypes', custom_headers = nil)
      response = get_async(resource_provider_namespace, api_version, expand, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets provider operations metadata
    #
    # @param resource_provider_namespace [String] Namespace of the resource
    # provider.
    # @param api_version [String]
    # @param expand [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_provider_namespace, api_version, expand = 'resourceTypes', custom_headers = nil)
      get_async(resource_provider_namespace, api_version, expand, custom_headers).value!
    end

    #
    # Gets provider operations metadata
    #
    # @param resource_provider_namespace [String] Namespace of the resource
    # provider.
    # @param api_version [String]
    # @param expand [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_provider_namespace, api_version, expand = 'resourceTypes', custom_headers = nil)
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/providers/Microsoft.Authorization/providerOperations/{resourceProviderNamespace}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceProviderNamespace' => resource_provider_namespace},
          query_params: {'api-version' => api_version,'$expand' => expand},
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
            result_mapper = ProviderOperationsMetadata.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets provider operations metadata list
    #
    # @param api_version [String]
    # @param expand [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProviderOperationsMetadataListResult] which provide lazy access to
    # pages of the response.
    #
    def list_as_lazy(api_version, expand = 'resourceTypes', custom_headers = nil)
      response = list_async(api_version, expand, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

    #
    # Gets provider operations metadata list
    #
    # @param api_version [String]
    # @param expand [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ProviderOperationsMetadata>] operation results.
    #
    def list(api_version, expand = 'resourceTypes', custom_headers = nil)
      first_page = list_as_lazy(api_version, expand, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets provider operations metadata list
    #
    # @param api_version [String]
    # @param expand [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(api_version, expand = 'resourceTypes', custom_headers = nil)
      list_async(api_version, expand, custom_headers).value!
    end

    #
    # Gets provider operations metadata list
    #
    # @param api_version [String]
    # @param expand [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(api_version, expand = 'resourceTypes', custom_headers = nil)
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/providers/Microsoft.Authorization/providerOperations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => api_version,'$expand' => expand},
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
            result_mapper = ProviderOperationsMetadataListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets provider operations metadata list
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProviderOperationsMetadataListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets provider operations metadata list
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets provider operations metadata list
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = ProviderOperationsMetadataListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
