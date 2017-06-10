require './spec/lib/selenium_helper'
class TutorialTest84 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 84
		@selenium_helper.set_up('http://floowr.000webhostapp.com/my-account')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_84
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
		@selenium_helper.click_by_xpath("/HTML/[@id='my-account']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/DIV:nth-child(2)/DIV:nth-child(1)/[@id='identity-link']")
		@selenium_helper.type_by_xpath("/HTML/[@id='identity']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/[@id='customer-form']/SECTION:nth-child(1)/DIV:nth-child(3)/DIV:nth-child(2)/INPUT:nth-child(1)","Alfreid")
		@selenium_helper.type_by_xpath("/HTML/[@id='identity']/MAIN:nth-child(1)/[@id='wrapper']/DIV:nth-child(1)/[@id='content-wrapper']/[@id='main']/[@id='content']/[@id='customer-form']/SECTION:nth-child(1)/DIV:nth-child(4)/DIV:nth-child(2)/INPUT:nth-child(1)","Pascual")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
