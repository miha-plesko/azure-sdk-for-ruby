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
require '2017-03-30/generated/azure_mgmt_network/module_definition'
require 'ms_rest_azure'

module Azure::Network::Mgmt::V2017_03_30
  autoload :NetworkInterfaces,                                  '2017-03-30/generated/azure_mgmt_network/network_interfaces.rb'
  autoload :PublicIPAddresses,                                  '2017-03-30/generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :NetworkManagementClient,                            '2017-03-30/generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :Resource,                                           '2017-03-30/generated/azure_mgmt_network/models/resource.rb'
    autoload :ServiceEndpointPropertiesFormat,                    '2017-03-30/generated/azure_mgmt_network/models/service_endpoint_properties_format.rb'
    autoload :SubResource,                                        '2017-03-30/generated/azure_mgmt_network/models/sub_resource.rb'
    autoload :NetworkInterfaceListResult,                         '2017-03-30/generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :PublicIPAddressDnsSettings,                         '2017-03-30/generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :PublicIPAddressSku,                                 '2017-03-30/generated/azure_mgmt_network/models/public_ipaddress_sku.rb'
    autoload :PublicIPAddressListResult,                          '2017-03-30/generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :NetworkInterfaceDnsSettings,                        '2017-03-30/generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :ApplicationGatewayBackendAddress,                   '2017-03-30/generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :ApplicationSecurityGroup,                           '2017-03-30/generated/azure_mgmt_network/models/application_security_group.rb'
    autoload :ResourceNavigationLink,                             '2017-03-30/generated/azure_mgmt_network/models/resource_navigation_link.rb'
    autoload :Route,                                              '2017-03-30/generated/azure_mgmt_network/models/route.rb'
    autoload :SecurityRule,                                       '2017-03-30/generated/azure_mgmt_network/models/security_rule.rb'
    autoload :ApplicationGatewayBackendAddressPool,               '2017-03-30/generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :BackendAddressPool,                                 '2017-03-30/generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     '2017-03-30/generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :IPConfiguration,                                    '2017-03-30/generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :PublicIPAddress,                                    '2017-03-30/generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :NetworkInterfaceIPConfiguration,                    '2017-03-30/generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :NetworkInterface,                                   '2017-03-30/generated/azure_mgmt_network/models/network_interface.rb'
    autoload :NetworkSecurityGroup,                               '2017-03-30/generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :RouteTable,                                         '2017-03-30/generated/azure_mgmt_network/models/route_table.rb'
    autoload :Subnet,                                             '2017-03-30/generated/azure_mgmt_network/models/subnet.rb'
    autoload :RouteNextHopType,                                   '2017-03-30/generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :SecurityRuleProtocol,                               '2017-03-30/generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 '2017-03-30/generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              '2017-03-30/generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :TransportProtocol,                                  '2017-03-30/generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :IPAllocationMethod,                                 '2017-03-30/generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :IPVersion,                                          '2017-03-30/generated/azure_mgmt_network/models/ipversion.rb'
    autoload :PublicIPAddressSkuName,                             '2017-03-30/generated/azure_mgmt_network/models/public_ipaddress_sku_name.rb'
  end
end
