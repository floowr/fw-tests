require './spec/lib/selenium_helper'
class PrerequisiteTutorialTest < Test::Unit::TestCase
	 def self.setup(selenium_helper)
		 @selenium_helper = selenium_helper
		 @selenium_helper.set_up("http://floowr.000webhostapp.com/login")
	 end
	 def self.teardown
		 @selenium_helper.tear_down()
	 end
	 def self.test_playback
		 @selenium_helper.get_url("http://floowr.000webhostapp.com/login")
		 @selenium_helper.execute_actions([{"id"=>0, "type"=>"change", "path"=>"HTML > #authentication > MAIN:nth-child(1) > #wrapper > DIV:nth-child(1) > #content-wrapper > #main > #content > SECTION:nth-child(1) > #login-form > SECTION:nth-child(1) > DIV:nth-child(2) > DIV:nth-child(2) > INPUT:nth-child(1)", "element_name"=>"email", "value"=>""}, {"id"=>1, "type"=>"change", "path"=>"HTML > #authentication > MAIN:nth-child(1) > #wrapper > DIV:nth-child(1) > #content-wrapper > #main > #content > SECTION:nth-child(1) > #login-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1)", "element_name"=>"password", "value"=>""}, {"id"=>2, "type"=>"click", "path"=>"HTML > #authentication > MAIN:nth-child(1) > #wrapper > DIV:nth-child(1) > #content-wrapper > #main > #content > SECTION:nth-child(1) > #login-form > FOOTER:nth-child(2) > BUTTON:nth-child(2)", "element_name"=>nil, "value"=>""}])
	 end
end
