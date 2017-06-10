require './spec/lib/selenium_helper'

class PrerequisiteTutorialTest83 < Test::Unit::TestCase
	def self.setup(selenium_helper)
		@selenium_helper = selenium_helper
		@tutorial_id = 83
		@selenium_helper.set_up('http://floowr.000webhostapp.com/login')
	end
	def self.teardown
		@selenium_helper.tear_down()
	end
	def self.test_playback_83
		@selenium_helper.get_url('http://floowr.000webhostapp.com/login')
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/section/form/section/div[1]/div[1]/input","alfreidp@test.com")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/section/form/section/div[2]/div[1]/div/input","test123")
		@selenium_helper.click_by_xpath("/html/body/main/section/div/div/section/section/section/form/footer/button")
	end
end
