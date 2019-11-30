module CloudControl
  class Client
    include CloudControl::Connection
    include CloudControl::Params
    # include CloudControl::XML

    attr_reader :api_base, :org_id, :username, :password
    attr_reader :image, :network, :server, :account, :report
    attr_reader :datacenter, :default_password

    ### FILTERS
    # client.page_size = 10
    # client.page_number = 1
    # client.order_by = 'location,created.DESCENDING'
    # client.filter_with = {location: %w(NA1 NA2), key: 'value'}
    attr_accessor :silent, :colors # log setting
    attr_accessor :page_size, :page_number, :order_by, :filter_with

    IMAGES = {suse_ent_64: "d4edfe22-e2f0-11e2-84e5-180373fb68df", ubuntu_14_04: "abef3a94-3361-4ce4-a937-5e587042586a", ubuntu_12_04: "d4ed6d40-e2f0-11e2-84e5-180373fb68df", ubuntu_10_04: "d4edba02-e2f0-11e2-84e5-180373fb68df"}
    API_URL = {na: "https://api-na.dimensiondata.com/caas/2.8", 
               eu: "https://api-eu.dimensiondata.com/caas/2.8", 
               au: "https://api-au.dimensiondata.com/caas/2.8", 
               mea: "https://api-mea.dimensiondata.com/caas/2.8", 
               ap: "https://api-ap.dimensiondata.com/caas/2.8"}


    def initialize(api_base, org_id, username, password, colors = true, silent = true)
      @api_base = api_base
      @org_id       = org_id
      @username     = username
      @password     = password
      @colors = colors
      @silent = silent

      if @colors
        require 'colorize'
      end
    end

    # def directory
    #   CloudControl::API::Directory.new(self)
    # end

    def image
      CloudControl::API::Image.new(self)
    end

    def network
      CloudControl::API::Network.new(self)
    end

    def server
      CloudControl::API::Server.new(self)
    end

    def account
      CloudControl::API::Account.new(self)
    end

    def report
      CloudControl::API::Report.new(self)
    end

    def vip
      CloudControl::API::VIP.new(self)
    end

    def filter_params
      params = {}
      params[:page_size] = @page_size if @page_size.present?
      params[:page_number] = @page_number if @page_number.present?
      params[:order_by] = @order_by if @order_by.present?

      if @filter_with.present?
        @filter_with.each do |k, val|
          params[k.to_sym] = val
        end
      end
      params
    end

    # mode: bold, underscore, default
    def log_error(message, color=nil, mode=nil)
	log message, color, mode, true
    end
    def log(message, color = nil, mode = nil, error=nil)
      return if (@silent && (not error))
      if @colors
        color = color.to_sym if color
        mode = mode.to_sym if mode
        puts message.colorize(:color => color, :mode => mode)
      else
        puts message
      end
    end
  end
end
