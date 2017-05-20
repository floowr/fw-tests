require './spec/lib/selenium_helper'
class TutorialTest238 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 238
		@selenium_helper.set_up('https://floower.bitbucket.io/pages/index.html')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_238
	@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')	end
end
