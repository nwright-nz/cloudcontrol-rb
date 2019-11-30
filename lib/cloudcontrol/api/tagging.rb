module CloudControl::API
  class Tagging < Core
    def list_tag_keys(options = {})
      org_endpoint '/tag/tagKey'
      query_params options
      get_simple
    end

    def list_tags(options = {})
      org_endpoint '/tag/tag'
      query_params options
      get_simple
    end
  end
end
