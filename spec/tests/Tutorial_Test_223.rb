require './spec/lib/selenium_helper'
class TutorialTest223 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 223
		@selenium_helper.set_up('base_url')
	end
	def teardown		@selenium_helper.tear_down()
	end
	def test_playback_223
	end
end
