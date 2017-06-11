require 'net/http'
require 'net/https'
require 'uri'
require 'json'


class ApiHelper

  def initialize
    # @TUTORIAL_RESULT_URL = 'https://floower.herokuapp.com/tutorials_tests'
    @TUTORIAL_RESULT_URL = 'https://2936aea8.ngrok.io/tutorials_tests'
    # @TUTORIAL_RESULT_URL = 'https://floower-stg.herokuapp.com/tutorials_tests'

    @PRE_REQUISITE_TUTORIAL_URL = 'https://2936aea8.ngrok.io/tutorial_prerequisite_details'

    # @uri = URI.parse(@TUTORIAL_RESULT_URL)
    # @http = Net::HTTP.new(@uri.host, @uri.port)
    # @http.use_ssl = (@uri.scheme == 'https')
    # @http.ssl_version = :TLSv1
    # @http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  end
  
  def post_result(params)
    send_api_request(params, 'POST', @TUTORIAL_RESULT_URL)
  end

  def patch_result(params)  # put
    send_api_request(params, 'PUT', @TUTORIAL_RESULT_URL)
  end

  def fetch_pre_requisite_tutorial_details(pre_requisite_tutorial_id)
    uri = @PRE_REQUISITE_TUTORIAL_URL + '/' + pre_requisite_tutorial_id.to_s
    send_api_request('', 'GET', uri)
  end

  def send_api_request(params, method, url)

    request_header = {'Content-Type' => 'application/json', 'Accept' => 'application/json',}
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == 'https')
    http.ssl_version = :TLSv1
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    case method
      when 'POST'
        request = Net::HTTP::Post.new(uri.request_uri, request_header)
      when 'PUT'
        url = url + '/' + params[:tutorial_id].to_s
        request = Net::HTTP::Put.new(url, request_header)
      when 'GET'
        request = Net::HTTP::Get.new(uri.request_uri, request_header)
    end
    request.body = params.to_json

    # Send the request
    response = http.request(request)
    response
  end

end
