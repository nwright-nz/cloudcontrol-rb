module CloudControl::API
  class Server < Core
    def list(options = {})
      org_endpoint '/server/server'
      query_params options
      get_simple
    end

    def list_anti_affinity_rules(options = {})
      org_endpoint '/server/antiAffinityRule'
      query_params options
      get_simple
    end

    def list_snapshots(server_id, options = {})
      org_endpoint '/snapshot/snapshot'
      options[:serverId] = server_id
      query_params options
      get_simple
    end

    def list_nics(vlan_id, options = {})
      org_endpoint '/server/nic'
      options[:vlanId] = vlan_id
      query_params options
      get_simple
    end

    # def show(server_id, options = {})
    #   org_endpoint "/server/server/#{server_id}"
    #   get_simple
    # end

    # def show_by_name(name, options = {})
    #   options[:name] = name
    #   single(list(options))
    # end

    # def show_by_id(id, options = {})
    #   options[:id] = id
    #   single(list(options))
    # end

    # def show_by_ip(ip, options = {})
    #   options[:private_ip] = ip
    #   single(list(options))
    # end

    # def create(name,
    #            description,
    #            network_id,
    #            image_id,
    #            administrator_password=@client.default_password)
    #   org_endpoint "/server"

    #   xml_params(
    #     tag: "Server",
    #     schema: "server",
    #     name: name,
    #     description: description,
    #     vlan_resource_path: "/oec/#{org_id}/network/#{network_id}",
    #     image_resource_path: "/oec/base/image/#{image_id}",
    #     is_started: 'true',
    #     administrator_password: administrator_password
    #   )
    #   post
    # end

    # def delete(server_id)
    #   org_endpoint "/server/#{server_id}?delete"
    #   get
    # end

    # # memory in MB, ust be multiple of 1024
    # def modify(server_id, name = nil, description = nil, cpu_count = nil, memory = nil)
    #   query_params(
    #     name: name,
    #     description: description,
    #     cpu_count: cpu_count,
    #     memory: memory
    #   )
    #   org_endpoint "/server/#{server_id}"
    #   post
    # end

    # def start(server_id)
    #   org_endpoint "/server/#{server_id}?start"
    #   get
    # end

    # def shutdown(server_id)
    #   org_endpoint "/server/#{server_id}?shutdown"
    #   get
    # end

    # def poweroff(server_id)
    #   org_endpoint "/server/#{server_id}?poweroff"
    #   get
    # end

    # def reboot(server_id)
    #   org_endpoint "/server/#{server_id}?reboot"
    #   get
    # end

    # def reset(server_id)
    #   org_endpoint "/server/#{server_id}?reset"
    #   get
    # end

    # # amount is # of GBs
    # def add_storage(server_id, amount)
    #   org_endpoint "/server/#{server_id}?addLocalStorage"
    #   query_params(amount: amount)
    #   get
    # end

    # def remove_storage(server_id, disk_id)
    #   org_endpoint "/server/#{server_id}/disk/#{disk_id}?delete"
    #   get
    # end
  end
end
