require './spec/lib/selenium_helper'
class TutorialTest81 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 81
		@selenium_helper.set_up('https://floower.bitbucket.io/pages/index.html')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_81
		@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')
		@selenium_helper.type_by_xpath("/HTML/BODY/[@id='wrapper']/NAV:nth-child(1)/DIV:nth-child(3)/DIV:nth-child(1)/[@id='side-menu']/LI:nth-child(1)/DIV:nth-child(1)/INPUT:nth-child(1)","abc")
		@selenium_helper.click_by_xpath("/HTML/BODY/[@id='wrapper']/NAV:nth-child(1)/DIV:nth-child(3)/DIV:nth-child(1)/[@id='side-menu']/LI:nth-child(1)/DIV:nth-child(1)/SPAN:nth-child(2)/BUTTON:nth-child(1)")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
