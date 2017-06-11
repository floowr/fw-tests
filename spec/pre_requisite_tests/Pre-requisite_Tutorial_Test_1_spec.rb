require "./spec/lib/selenium_helper"

class PrerequisiteTutorialTest < Test::Unit::TestCase
	def self.setup(selenium_helper)
		@selenium_helper = selenium_helper
		@pre_requisite_tutorial_id = 1
		@pre_requisite_tutorial_details = @selenium_helper.fetch_pre_requisite_tutorial_details(@pre_requisite_tutorial_id)
		# @pre_requisite_tutorial_details = {"baseurl"=>"http://floowr.000webhostapp.com/login","events"=>[["type"=>"change","path"=>"/html/body/main/section/div/div/section/section/section/form/section/div[1]/div[1]/input","value"=>"alfreidp@test.com"],["type"=>"change","path"=>"/html/body/main/section/div/div/section/section/section/form/section/div[2]/div[1]/div/input","value"=>"test123"],["type"=>"click","path"=>"/html/body/main/section/div/div/section/section/section/form/footer/button","value"=>""],]}
		@selenium_helper.set_up(@pre_requisite_tutorial_details['baseurl'])
	end
	def self.teardown
		@selenium_helper.tear_down()
	end
	def self.test_playback
		@selenium_helper.get_url(@pre_requisite_tutorial_details['baseurl'])
		@selenium_helper.execute_actions(@pre_requisite_tutorial_details['events'])
	end
end
