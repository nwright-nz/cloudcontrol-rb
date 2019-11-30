module CloudControl::API
  class Image < Core
    def list(options = {})
      org_endpoint '/image/osImage'
      query_params options
      get_simple
    end

    def list_customer_images(options = {})
      org_endpoint '/image/customerImage'
      query_params options
      get_simple
    end

    def list_ovf_packages(options = {})
      # Api does not support filtering on this.
      org_endpoint '/image/ovfPackage'
      query_params options
      get_simple
    end

    def list_image_exports_inprogress(options = {})
      org_endpoint '/image/exportInProgress'
      query_params options
      get_simple
    end
  end
end
