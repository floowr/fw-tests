require 'net/http'
require 'net/https'
require 'uri'
require 'json'


class ApiHelper

  def initialize
    # TUTORIAL_RESULT_URL = 'http://floower.herokuapp.com/tutorials'
    @TUTORIAL_RESULT_URL = 'https://b9518184.ngrok.io/tutorials'
    @uri = URI.parse(@TUTORIAL_RESULT_URL)
    @http = Net::HTTP.new(@uri.host, @uri.port)
    @http.use_ssl = (@uri.scheme == 'https')
    @http.ssl_version = :TLSv1
    @http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  end
  
  def post_result(params)
    send_api_request(params, 'POST')
  end

  def patch_result(params)

  end

  def send_api_request(params, method)

    request_header = {'Content-Type' => 'application/json', 'Accept' => 'application/json',}
    case method
      when 'POST'
        request = Net::HTTP::Post.new(@uri.request_uri, request_header)
      when 'PATCH'
        request = Net::HTTP::Patch.new(@uri.request_uri, request_header)
      when 'GET'
        request = Net::HTTP::Get.new(@uri.request_uri, request_header)
    end
    request.body = params.to_json

    # Send the request
    response = @http.request(request)
    response
  end

end