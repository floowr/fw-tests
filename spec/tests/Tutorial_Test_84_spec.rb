require './spec/lib/selenium_helper'

class TutorialTest84 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 84
		pre_requisite_setup
	end

	def teardown
		prequisite_teardown
	end

	def self_setup
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
	end

	def self_teardown
		@selenium_helper.tear_down()
	end

	def pre_requisite_setup
		require './spec/pre_requisite_tests/Pre-requisite_Tutorial_Test_83_spec'
		PrerequisiteTutorialTest83.setup(@selenium_helper)
		PrerequisiteTutorialTest83.test_playback_83
	end

	def prequisite_teardown
		PrerequisiteTutorialTest83.teardown
	end

	def test_playback_84
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
		@selenium_helper.click_by_xpath("/html/body/main/section/div/div/section/section/div/div/a[1]/span")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/form/section/div[2]/div[1]/input","Alfreid Test")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/form/section/div[3]/div[1]/input","Pascual Test")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
