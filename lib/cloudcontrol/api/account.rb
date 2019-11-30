module CloudControl::API
  class Account < Core
    def myaccount()
      endpoint "/user/myUser"
      get_simple
    end

    def list()
      org_endpoint "/account"
      get
    end
  end
end
