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
		 @selenium_helper.execute_actions([{"id"=>0, "type"=>"change", "path"=>"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(2) > DIV:nth-child(2) > INPUT:nth-child(1)", "element_name"=>"email", "value"=>"alfreid@alfreid.comINVALID"}, {"id"=>1, "type"=>"change", "path"=>"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1)", "element_name"=>"password", "value"=>"test123"}, {"id"=>2, "type"=>"click", "path"=>"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > FOOTER:nth-child(2) > BUTTON:nth-child(2)", "element_name"=>nil, "value"=>nil}])
	 end
end
