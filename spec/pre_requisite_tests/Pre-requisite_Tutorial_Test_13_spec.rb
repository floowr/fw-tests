require './spec/lib/selenium_helper'
class PrerequisiteTutorialTest < Test::Unit::TestCase
	 def self.setup(selenium_helper)
		 @selenium_helper = selenium_helper
		 @selenium_helper.set_up(base_url)
	 end
	 def self.teardown
		 @selenium_helper.tear_down()
	 end
	 def self.test_playback
		 @selenium_helper.get_url(base_url)
		 @selenium_helper.execute_actions(event_steps)
	 end
end
