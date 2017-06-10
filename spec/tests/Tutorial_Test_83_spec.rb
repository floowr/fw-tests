require './spec/lib/selenium_helper'
class TutorialTest83 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 83
		@selenium_helper.set_up('http://floowr.000webhostapp.com/login')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_83
		@selenium_helper.get_url('http://floowr.000webhostapp.com/login')
		@selenium_helper.type_by_xpath("/HTML/[@id='authentication']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/SECTION:nth-child(1)/[@id='login-form']/SECTION:nth-child(1)/DIV:nth-child(2)/DIV:nth-child(2)/INPUT:nth-child(1)","")
		@selenium_helper.type_by_xpath("/HTML/[@id='authentication']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/SECTION:nth-child(1)/[@id='login-form']/SECTION:nth-child(1)/DIV:nth-child(3)/DIV:nth-child(2)/DIV:nth-child(1)/INPUT:nth-child(1)","")
		@selenium_helper.click_by_xpath("/HTML/[@id='authentication']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/SECTION:nth-child(1)/[@id='login-form']/FOOTER:nth-child(2)/BUTTON:nth-child(2)")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
