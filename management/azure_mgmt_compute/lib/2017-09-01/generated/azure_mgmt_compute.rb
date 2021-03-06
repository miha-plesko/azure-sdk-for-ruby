# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-09-01/generated/azure_mgmt_compute/module_definition'
require 'ms_rest_azure'

module Azure::Compute::Mgmt::V2017_09_01
  autoload :ResourceSkus,                                       '2017-09-01/generated/azure_mgmt_compute/resource_skus.rb'
  autoload :ComputeManagementClient,                            '2017-09-01/generated/azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :ResourceSkuRestrictions,                            '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_restrictions.rb'
    autoload :ResourceSkuCapacity,                                '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_capacity.rb'
    autoload :ResourceSkuLocationInfo,                            '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_location_info.rb'
    autoload :ResourceSkuCapabilities,                            '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_capabilities.rb'
    autoload :ResourceSku,                                        '2017-09-01/generated/azure_mgmt_compute/models/resource_sku.rb'
    autoload :ResourceSkuCosts,                                   '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_costs.rb'
    autoload :ResourceSkusResult,                                 '2017-09-01/generated/azure_mgmt_compute/models/resource_skus_result.rb'
    autoload :ResourceSkuRestrictionInfo,                         '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_restriction_info.rb'
    autoload :ResourceSkuCapacityScaleType,                       '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_capacity_scale_type.rb'
    autoload :ResourceSkuRestrictionsType,                        '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_restrictions_type.rb'
    autoload :ResourceSkuRestrictionsReasonCode,                  '2017-09-01/generated/azure_mgmt_compute/models/resource_sku_restrictions_reason_code.rb'
  end
end
