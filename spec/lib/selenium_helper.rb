require 'json'
require 'selenium-webdriver'
require 'test/unit'
require "test/unit/assertions"
require './spec/lib/api_helper'
include Test::Unit::Assertions


class SeleniumHelper


  def initialize
    @api_helper = ApiHelper.new
    @error_count = 0
    @error_log = []
  end


  def reset_error_count()
    @error_count = 0
    @error_count
  end

  def reset_error_log()
    @error_log = []
    @error_log
  end

  def increment_error_count()
    @error_count += 1
    @error_count
  end

  def get_error_count()
    @error_count
  end

  def get_error_log()
    @error_log
  end

  def log_error(log)
    @error_log << log
  end


  def set_up(base_url)
    @driver = Selenium::WebDriver.for :firefox
    @base_url = base_url
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  def tear_down()
    @driver.quit
    assert_equal [], @verification_errors
  end

  def get_url(url)
    begin
      @driver.get(url)
    rescue
      increment_error_count
      log_error("unable to navigate to #{url}")
    end
  end

  def find_element_by_xpath(xpath)
    # TODO: set time out and retry when finding element
    @driver.find_element(:xpath => xpath)
  end

  def find_element_by_id()

  end


  def click_by_id()

  end

  def click_by_xpath(xpath)
    begin
      element = find_element_by_xpath(xpath)
      element.click
    rescue
      increment_error_count
      log_error("unable to click #{xpath}")
    end
  end

  def type_by_xpath(xpath, value)
    begin
      element = find_element_by_xpath(xpath)
      element.send_keys value
    rescue
      increment_error_count
      log_error("unable to type #{value} on #{xpath}")
    end
  end

  def type_by_id(id, value)

  end

  def post_result(tutorial_id)
    status = 0
    status = -1 if get_error_count != 0
    @api_helper.post_result({'id' => tutorial_id, 'status' => status, 'errors' => get_error_log})
  end

end


