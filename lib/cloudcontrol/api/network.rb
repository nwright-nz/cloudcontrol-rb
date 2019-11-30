module CloudControl::API
  class Network < Core
    def list_domains(options = {})
      org_endpoint '/network/networkDomain'
      query_params options
      get_simple
    end

    def list_domains_byname(name, options = {})
      options[:name] = name
      single(list_domains(options))
    end

    def listvlans(options = {})
      org_endpoint '/network/vlan'
      query_params options
      get_simple
    end

    def listvlan_byname(name, options = {})
      options[:name] = name
      single(listvlans(options))
    end

    def list_publicipv4(network_domain_id, options = {})
      org_endpoint '/network/publicIpBlock'
      options[:networkDomain] = network_domain_id
      query_params options
      get_simple
    end

    def list_reserved_publicipv4(network_domain_id, options = {})
      org_endpoint '/network/reservedPublicIpv4Address'
      options[:networkDomain] = network_domain_id
      query_params options
      get_simple
    end

    def list_reserved_privateipv4(network_domain_id, options = {})
      org_endpoint '/network/reservedPrivateIpv4Address'
      options[:networkDomain] = network_domain_id
      query_params options
      get_simple
    end

    def list_reserved_ipv6(network_domain_id, options = {})
      org_endpoint '/network/reservedIpv6Address'
      options[:networkDomain] = network_domain_id
      query_params options
      get_simple
    end

    def list_staticroutes(network_domain_id, options = {})
      options[:networkDomain] = network_domain_id
      org_endpoint 'network/staticRoute'
      query_params options
      get_simple
    end

    def list_fw_rules(network_domain_id, options = {})
      org_endpoint '/network/firewallRule'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_ipaddress_lists(network_domain_id, options = {})
      org_endpoint '/network/ipAddressList'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_port_lists(network_domain_id, options = {})
      org_endpoint '/network/portList'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_nat_rules(network_domain_id, options = {})
      org_endpoint '/network/natRule'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_vip_nodes(options = {})
      org_endpoint '/networkDomainVip/node'
      query_params options
      get_simple
    end

    def list_vip_pools(options = {})
      org_endpoint '/networkDomainVip/pool'
      query_params options
      get_simple
    end

    def list_vip_pool_members(options = {})
      org_endpoint '/networkDomainVip/poolMember'
      query_params options
      get_simple
    end

    def list_virtual_listeners(options = {})
      org_endpoint '/networkDomainVip/virtualListener'
      query_params options
      get_simple
    end

    def list_ssl_certs(options = {})
      org_endpoint '/networkDomainVip/sslDomainCertificate'
      query_params options
      get_simple
    end

    def list_ssl_certchains(options = {})
      org_endpoint '/networkDomainVip/sslCertificateChain'
      query_params options
      get_simple
    end

    def list_ssl_offload_profile(options = {})
      org_endpoint '/networkDomainVip/sslOffloadProfile'
      query_params options
      get_simple
    end

    def list_default_healthmon(network_domain_id, options = {})
      org_endpoint '/networkDomainVip/defaultHealthMonitor'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_default_persistence(network_domain_id, options = {})
      org_endpoint '/networkDomainVip/defaultPersistenceProfile'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_default_irules(network_domain_id, options = {})
      org_endpoint '/networkDomainVip/defaultiRu'
      options[:networkDomainId] = network_domain_id
      query_params options
      get_simple
    end

    def list_security_groups(options = {})
      org_endpoint '/securityGroup/securityGroup'
      query_params options
      get_simple
    end
    # def create(name, description="", datacenter=@client.datacenter)
    #   org_endpoint "/networkWithLocation"
    #   xml_params(schema: "network", tag: "NewNetworkWithLocation", name: name, description: description, location: datacenter)
    #   post
    # end

    # def list_with_location
    #   org_endpoint "/networkWithLocation"
    #   get
    # end

    # def list_in_location(location_id)
    #   org_endpoint "/networkWithLocation/#{location_id}"
    #   get
    # end

    # def show(network_id)
    #   list_with_location.find {|n| n.id == network_id}
    # end

    # def show_by_name(name)
    #  list_with_location.find {|n| n.name == name}
    # end

    # def natrule_list(network_id)
    #   org_endpoint "/network/#{network_id}/natrule"
    #   get
    # end

    # # name = "10.147.15.11", source_ip = "10.147.15.11"
    # def natrule_create(network_id, name, source_ip)
    #   org_endpoint "/network/#{network_id}/natrule"
    #   xml_params(schema: "network", tag: "NatRule", name: name, source_ip: source_ip)
    #   post
    # end

    # def natrule_delete(network_id, natrule_id)
    #   org_endpoint "/network/#{network_id}/natrule/#{natrule_id}?delete"
    #   get
    # end

    # def aclrule_list(network_id)
    #   org_endpoint "/network/#{network_id}/aclrule"
    #   get
    # end

    # def aclrule_delete(network_id, aclrule_id)
    #   org_endpoint "/network/#{network_id}/aclrule/#{aclrule_id}?delete"
    #   get
    # end

    # def aclrule_create(network_id, name, position, inbound, protocol, port, allow)
    #   org_endpoint "/network/#{network_id}/aclrule"
    #   xml_params(schema: "network", tag: "AclRule", name: name, position: position, action: (allow ? "PERMIT" : "DENY"), protocol: protocol, source_ip_range: {}, destination_ip_range: {}, port_range: {type: "EQUAL_TO", port1: port}, type: (inbound ? "OUTSIDE_ACL" : "INSIDE_ACL"))
    #   post
    # end
  end
end
