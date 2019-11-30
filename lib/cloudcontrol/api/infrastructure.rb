module CloudControl::API
    class Infrastructure < Core
        def list_regions(options = {})
            endpoint "/#{org_id}/infrastructure/geographicRegion"
            query_params options
            get
        end

        def list_datacenters(options = {})
          endpoint "/#{org_id}/infrastructure/datacenter"
          query_params options
          get
        end

    end
end