require './spec/lib/selenium_helper'
class TutorialTest76 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 76
		@selenium_helper.set_up('')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_76
		@selenium_helper.get_url('')
		@selenium_helper.patch_result(@tutorial_id)
	end
end
