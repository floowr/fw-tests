require './spec/lib/selenium_helper'
class TutorialTest358 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 358
		pre_requisite_setup
	end
	def teardown
		pre_requisite_teardown
	end
	def pre_requisite_setup
		 get_requisite_used_by_tutorial = @selenium_helper.fetch_pre_requisite_used_by_tutorial(@tutorial_id) 
		 if get_requisite_used_by_tutorial['status'] == 200 
			 pre_req_id = get_requisite_used_by_tutorial['tutorial_req_maps']['tutorial_req_detail_id'] 
			 require "./spec/pre_requisite_tests/Pre-requisite_Tutorial_Test_#{pre_req_id}_spec" 
			 PrerequisiteTutorialTest.setup(@selenium_helper) 
			 PrerequisiteTutorialTest.test_playback 
		 else 
			 @selenium_helper.set_up('')
		 end 
	end
	def pre_requisite_teardown
		 get_requisite_used_by_tutorial = @selenium_helper.fetch_pre_requisite_used_by_tutorial(@tutorial_id)
		 if get_requisite_used_by_tutorial['status'] == 200
			 pre_req_id = get_requisite_used_by_tutorial['tutorial_req_maps']['tutorial_req_detail_id']
			 require "./spec/pre_requisite_tests/Pre-requisite_Tutorial_Test_#{pre_req_id}_spec"
			 PrerequisiteTutorialTest.teardown()
		 else
			 @selenium_helper.tear_down()
		 end
	 end
	def test_playback_358
		@selenium_helper.get_url('')
		events_json = ''
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
