=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module Kubernetes
  class LogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param logpath path to the log
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def log_file_handler(logpath, opts = {})
      log_file_handler_with_http_info(logpath, opts)
      return nil
    end

    # 
    # 
    # @param logpath path to the log
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def log_file_handler_with_http_info(logpath, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.log_file_handler ..."
      end
      # verify the required parameter 'logpath' is set
      if @api_client.config.client_side_validation && logpath.nil?
        fail ArgumentError, "Missing the required parameter 'logpath' when calling LogsApi.log_file_handler"
      end
      # resource path
      local_var_path = "/logs/{logpath}".sub('{' + 'logpath' + '}', logpath.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#log_file_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def log_file_list_handler(opts = {})
      log_file_list_handler_with_http_info(opts)
      return nil
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def log_file_list_handler_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.log_file_list_handler ..."
      end
      # resource path
      local_var_path = "/logs/"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#log_file_list_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
