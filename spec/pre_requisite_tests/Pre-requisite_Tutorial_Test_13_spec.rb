require './spec/lib/selenium_helper'
class PrerequisiteTutorialTest < Test::Unit::TestCase
	 def self.setup(selenium_helper)
		 @selenium_helper = selenium_helper
		 @selenium_helper.set_up(https://floower.bitbucket.io/pages/index.html)
	 end
	 def self.teardown
		 @selenium_helper.tear_down()
	 end
	 def self.test_playback
		 @selenium_helper.get_url(https://floower.bitbucket.io/pages/index.html)
		 @selenium_helper.execute_actions([{"id"=>0, "type"=>"change", "path"=>"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1)", "element_name"=>nil, "value"=>"TEST THat it Fills in 888"}, {"id"=>1, "type"=>"click", "path"=>"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) > I:nth-child(1)", "element_name"=>nil, "value"=>nil}])
	 end
end
