# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  #
  # Creates an Azure Data Lake Analytics account management client.
  #
  class DataLakeStoreAccounts
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DataLakeStoreAccounts class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataLakeAnalyticsAccountManagementClient] reference to the DataLakeAnalyticsAccountManagementClient
    attr_reader :client

    #
    # Updates the specified Data Lake Analytics account to include the additional
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to add the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to add.
    # @param parameters [AddDataLakeStoreParameters] The details of the Data Lake
    # Store account.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def add(resource_group_name, account_name, data_lake_store_account_name, parameters = nil, custom_headers = nil)
      response = add_async(resource_group_name, account_name, data_lake_store_account_name, parameters, custom_headers).value!
      nil
    end

    #
    # Updates the specified Data Lake Analytics account to include the additional
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to add the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to add.
    # @param parameters [AddDataLakeStoreParameters] The details of the Data Lake
    # Store account.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_with_http_info(resource_group_name, account_name, data_lake_store_account_name, parameters = nil, custom_headers = nil)
      add_async(resource_group_name, account_name, data_lake_store_account_name, parameters, custom_headers).value!
    end

    #
    # Updates the specified Data Lake Analytics account to include the additional
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to add the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to add.
    # @param parameters [AddDataLakeStoreParameters] The details of the Data Lake
    # Store account.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_async(resource_group_name, account_name, data_lake_store_account_name, parameters = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'data_lake_store_account_name is nil' if data_lake_store_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/DataLakeStoreAccounts/{dataLakeStoreAccountName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'dataLakeStoreAccountName' => data_lake_store_account_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Updates the Data Lake Analytics account specified to remove the specified
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to remove the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to remove
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      response = delete_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers).value!
      nil
    end

    #
    # Updates the Data Lake Analytics account specified to remove the specified
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to remove the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to remove
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      delete_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers).value!
    end

    #
    # Updates the Data Lake Analytics account specified to remove the specified
    # Data Lake Store account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to remove the Data Lake Store account.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to remove
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'data_lake_store_account_name is nil' if data_lake_store_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/DataLakeStoreAccounts/{dataLakeStoreAccountName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'dataLakeStoreAccountName' => data_lake_store_account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets the specified Data Lake Store account details in the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to retrieve the Data Lake Store account details.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to retrieve
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataLakeStoreAccountInfo] operation results.
    #
    def get(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      response = get_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified Data Lake Store account details in the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to retrieve the Data Lake Store account details.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to retrieve
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      get_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers).value!
    end

    #
    # Gets the specified Data Lake Store account details in the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to retrieve the Data Lake Store account details.
    # @param data_lake_store_account_name [String] The name of the Data Lake Store
    # account to retrieve
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, data_lake_store_account_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'data_lake_store_account_name is nil' if data_lake_store_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/DataLakeStoreAccounts/{dataLakeStoreAccountName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'dataLakeStoreAccountName' => data_lake_store_account_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInfo.mapper()
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
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account for
    # which to list Data Lake Store accounts.
    # @param filter [String] OData filter. Optional.
    # @param top [Integer] The number of items to return. Optional.
    # @param skip [Integer] The number of items to skip over before returning
    # elements. Optional.
    # @param select [String] OData Select statement. Limits the properties on each
    # entry to just those requested, e.g.
    # Categories?$select=CategoryName,Description. Optional.
    # @param orderby [String] OrderBy clause. One or more comma-separated
    # expressions with an optional "asc" (the default) or "desc" depending on the
    # order you'd like the values sorted, e.g. Categories?$orderby=CategoryName
    # desc. Optional.
    # @param count [Boolean] The Boolean value of true or false to request a count
    # of the matching resources included with the resources in the response, e.g.
    # Categories?$count=true. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DataLakeStoreAccountInfo>] operation results.
    #
    def list_by_account(resource_group_name, account_name, filter = nil, top = nil, skip = nil, select = nil, orderby = nil, count = nil, custom_headers = nil)
      first_page = list_by_account_as_lazy(resource_group_name, account_name, filter, top, skip, select, orderby, count, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account for
    # which to list Data Lake Store accounts.
    # @param filter [String] OData filter. Optional.
    # @param top [Integer] The number of items to return. Optional.
    # @param skip [Integer] The number of items to skip over before returning
    # elements. Optional.
    # @param select [String] OData Select statement. Limits the properties on each
    # entry to just those requested, e.g.
    # Categories?$select=CategoryName,Description. Optional.
    # @param orderby [String] OrderBy clause. One or more comma-separated
    # expressions with an optional "asc" (the default) or "desc" depending on the
    # order you'd like the values sorted, e.g. Categories?$orderby=CategoryName
    # desc. Optional.
    # @param count [Boolean] The Boolean value of true or false to request a count
    # of the matching resources included with the resources in the response, e.g.
    # Categories?$count=true. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_account_with_http_info(resource_group_name, account_name, filter = nil, top = nil, skip = nil, select = nil, orderby = nil, count = nil, custom_headers = nil)
      list_by_account_async(resource_group_name, account_name, filter, top, skip, select, orderby, count, custom_headers).value!
    end

    #
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account for
    # which to list Data Lake Store accounts.
    # @param filter [String] OData filter. Optional.
    # @param top [Integer] The number of items to return. Optional.
    # @param skip [Integer] The number of items to skip over before returning
    # elements. Optional.
    # @param select [String] OData Select statement. Limits the properties on each
    # entry to just those requested, e.g.
    # Categories?$select=CategoryName,Description. Optional.
    # @param orderby [String] OrderBy clause. One or more comma-separated
    # expressions with an optional "asc" (the default) or "desc" depending on the
    # order you'd like the values sorted, e.g. Categories?$orderby=CategoryName
    # desc. Optional.
    # @param count [Boolean] The Boolean value of true or false to request a count
    # of the matching resources included with the resources in the response, e.g.
    # Categories?$count=true. Optional.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_account_async(resource_group_name, account_name, filter = nil, top = nil, skip = nil, select = nil, orderby = nil, count = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/DataLakeStoreAccounts/'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$skip' => skip,'$select' => select,'$orderby' => orderby,'$count' => count,'api-version' => @client.api_version},
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
            result_mapper = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult.mapper()
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
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataLakeAnalyticsAccountListDataLakeStoreResult] operation results.
    #
    def list_by_account_next(next_page_link, custom_headers = nil)
      response = list_by_account_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_account_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_account_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_account_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult.mapper()
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
    # Gets the first page of Data Lake Store accounts linked to the specified Data
    # Lake Analytics account. The response includes a link to the next page, if
    # any.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account for
    # which to list Data Lake Store accounts.
    # @param filter [String] OData filter. Optional.
    # @param top [Integer] The number of items to return. Optional.
    # @param skip [Integer] The number of items to skip over before returning
    # elements. Optional.
    # @param select [String] OData Select statement. Limits the properties on each
    # entry to just those requested, e.g.
    # Categories?$select=CategoryName,Description. Optional.
    # @param orderby [String] OrderBy clause. One or more comma-separated
    # expressions with an optional "asc" (the default) or "desc" depending on the
    # order you'd like the values sorted, e.g. Categories?$orderby=CategoryName
    # desc. Optional.
    # @param count [Boolean] The Boolean value of true or false to request a count
    # of the matching resources included with the resources in the response, e.g.
    # Categories?$count=true. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataLakeAnalyticsAccountListDataLakeStoreResult] which provide lazy
    # access to pages of the response.
    #
    def list_by_account_as_lazy(resource_group_name, account_name, filter = nil, top = nil, skip = nil, select = nil, orderby = nil, count = nil, custom_headers = nil)
      response = list_by_account_async(resource_group_name, account_name, filter, top, skip, select, orderby, count, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_account_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
