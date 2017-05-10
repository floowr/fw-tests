require "json" 
require "selenium-webdriver" 
require "test/unit" 
# gem "test-unit"

# https://docs.travis-ci.com/api#/jobs/:job_id/log
# https://docs.travis-ci.com/user/notifications/#Webhook-notification

class Playback_20170307221012099402001 < Test::Unit::TestCase
	def setup 
			@driver =Selenium::WebDriver.for :firefox
			@base_url ="https://floower.bitbucket.io/pages/index.html"
			@accept_next_alert =true
			@driver.manage.timeouts.implicit_wait =30
			@verification_errors =[]
	end
	def teardown
			@driver.quit 
			assert_equal [], @verification_errors
	end
	def test_playback_20170307221012099423001
		

			print('testname_testpass')

			@driver.get(@base_url)
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li[contains(@class, 'sidebar-search')]/div[contains(@class, 'input-group custom-search-form')]/input[contains(@class, 'form-control')]").send_keys "1qaz2wsx"
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li[contains(@class, 'sidebar-search')]/div[contains(@class, 'input-group custom-search-form')]/span[contains(@class, 'input-group-btn')]/button[contains(@class, 'btn btn-default')]").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a[contains(@class, 'active')]").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
			@driver.find_element(:xpath => "/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li/a").click
	end
end
