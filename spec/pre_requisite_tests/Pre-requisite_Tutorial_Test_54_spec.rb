require "./spec/lib/selenium_helper"

class PrerequisiteTutorialTest < Test::Unit::TestCase
	def self.setup(selenium_helper)
		@selenium_helper = selenium_helper
		@pre_requisite_tutorial_id = 54
		@pre_requisite_tutorial_map = @selenium_helper.fetch_pre_requisite_map(@pre_requisite_tutorial_id)['tutorial_req_maps']['tutorial_req_detail_id']
		@pre_requisite_tutorial_details = @selenium_helper.fetch_pre_requisite_tutorial_details(@pre_requisite_tutorial_map)
		@selenium_helper.set_up(@pre_requisite_tutorial_details['base_url'])
	end
	def self.teardown
		@selenium_helper.tear_down()
	end
	def self.test_playback
		@selenium_helper.get_url(@pre_requisite_tutorial_details['base_url'])
		@selenium_helper.execute_actions(@pre_requisite_tutorial_details['event_steps'])
	end
end
