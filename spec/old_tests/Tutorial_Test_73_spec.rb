require './spec/lib/selenium_helper'
class TutorialTest73 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 73
		@selenium_helper.set_up('https://floower.bitbucket.io/pages/index.html')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_73
		@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')
		@selenium_helper.type_by_xpath("/html/body/div[@id='wrapper']/nav[contains(@class, 'navbar navbar-default navbar-static-top')]/div[contains(@class, 'navbar-default sidebar')]/div[contains(@class, 'sidebar-nav navbar-collapse')]/ul[@id='side-menu']/li[contains(@class, 'sidebar-search')]/div[contains(@class, 'input-group custom-search-form')]/input[contains(@class, 'form-control')]","aaa")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
