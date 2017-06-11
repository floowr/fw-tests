require './spec/lib/selenium_helper'
class TutorialTest83 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 84
		self_setup
	end
	def teardown
		self_teardown
	end
	def self_setup
		@selenium_helper.set_up('http://floowr.000webhostapp.com/login')
	end
	def self_teardown
		@selenium_helper.tear_down()
	end
	def pre_requisite_setup
	end
	def prequisite_teardown
	end
	def test_playback_83
		@selenium_helper.get_url('http://floowr.000webhostapp.com/login')
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/section/form/section/div[1]/div[1]/input","alfreidp@test.com")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/section/form/section/div[2]/div[1]/div/input","test123")
		@selenium_helper.click_by_xpath("/html/body/main/section/div/div/section/section/section/form/footer/button")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
