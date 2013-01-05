require "appsendr/version"
require "json"
require "rest-client"

module Appsendr  
  class App
    API_BASE_URL = "http://api.ota.dev:9393/"
    
    def self.create(file,icon=nil,identifier=nil)
      #File.new("test.apk", 'rb')
      
      params = {:app_data => file, :multipart => true}
      params[:icon] = icon if icon
      params[:identifier] = identifier if identifier
      
      begin
        response = RestClient.post _url("new"), params
        return JSON.parse response.to_str
      rescue => e
        return JSON.parse e.response unless e.response.empty?
      end
    end

    def self.destroy(id, token)
      params = {"token" => token}
    
      begin
        response = RestClient.delete _url(id, params)

        return (response.code == 204)
      rescue => e
        return false
      end
    end

    def self.details(id)
      begin
        response = RestClient.get _url(id)
        return JSON.parse response.to_str
      rescue => e
        return JSON.parse e.response
      end
    end
    
    
    private
    
    def self._url(path, params=nil)
      if params
        querystring = params.map{|k,v| "#{CGI.escape(k)}=#{CGI.escape(v)}"}.join("&")

        "#{API_BASE_URL}/v1/app/#{path}?#{querystring}"
      else
        "#{API_BASE_URL}/v1/app/#{path}"
      end

    end
  end
  
end
