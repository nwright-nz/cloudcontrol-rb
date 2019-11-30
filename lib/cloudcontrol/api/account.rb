module CloudControl::API
  class Account < Core
    def myaccount
      endpoint '/user/myUser'
      get_simple
    end

    def list(options = {})
      org_endpoint '/user/user'
      query_params options
      get_simple
    end
  end
end
