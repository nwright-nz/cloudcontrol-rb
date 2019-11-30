module CloudControl::API
  class Drs < Core
    def list_consistency_groups(options = {})
      org_endpoint '/consistencyGroup/consistencyGroup'
      query_params options
      get_simple
    end

    def list_consistency_group_snaps(consistency_group_id, options={})
      org_endpoint '/consistencyGroup/snapshot'
      options[:consistencyGroupId] = consistency_group_id
      query_params options
      get_simple
    end
  end
end
