require 'json'
require 'selenium-webdriver'
require 'test/unit'
require "test/unit/assertions"
require './spec/lib/api_helper'
require './spec/lib/event_action_helper'
include Test::Unit::Assertions


class SeleniumHelper

  def initialize
    @api_helper = ApiHelper.new
    @event_action_helper = EventActionHelper.new
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
    @driver.manage.timeouts.implicit_wait = 180
    @driver.manage().window().maximize()
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

  def execute_events(events_json)
    events_json = JSON.parse(events_json, symbolize_names: true)
    events_json[:steps].each do |step|
      event_type = step[:commonWeb][:event][:type]
      element_path = step[:commonWeb][:element][:path]
      lst_dom = element_path.split('>').compact.collect(&:strip)
      xpath = '/'
      lst_dom.each do |dom|
        xpath = xpath + @event_action_helper.build_dom_xpath(dom) + '/'
      end
      xpath = xpath.chomp('/')
      case event_type
        when 'click'
          click_by_xpath(xpath)
        when 'change'
          element_value = step[:commonWeb][:element][:value]
          type_by_xpath(xpath, element_value)
      end
    end
  end

  # TODO: this is for pre-requisite. to align with execute_events
  def execute_actions(events)
    events.each do |event|
      event_type = @event_action_helper.get_action_event_type(event[0])
      element_path = @event_action_helper.get_event_element_path(event[0])
      case event_type
        when 'click'
          click_by_xpath(element_path)
        when 'change'
          element_value = @event_action_helper.get_event_element_value(event[0])
          type_by_xpath(element_path, element_value)
      end

    end
  end

  # ============ API Calls to FW-App
  def fetch_pre_requisite_tutorial_details(pre_requisite_tutorial_id)
    response_content = @api_helper.fetch_pre_requisite_tutorial_details(pre_requisite_tutorial_id).body
    response_content = JSON.parse(response_content)
    tutorial_pre_requisite_details = response_content['tutorial_pre_requisite_details']['tutorial_prerequisite_details']
    # tutorial_pre_requisite_details = tutorial_pre_requisite_details.to_json
    # eval because JSON.parse(tutorial_pre_requisite_details, :quirks_mode => true) doesnt work
    eval(tutorial_pre_requisite_details)
  end

  def patch_result(tutorial_id)
    status = 1
    status = -1 if get_error_count != 0
    @api_helper.patch_result({:tutorial_id => tutorial_id, :tutorial_status => status, :tutorial_errors => get_error_log})
  end

end


