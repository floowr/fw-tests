require './spec/lib/selenium_helper'
class PrerequisiteTutorialTest < Test::Unit::TestCase
	 def self.setup(selenium_helper)
		 @selenium_helper = selenium_helper
		 @selenium_helper.set_up("https://floower.bitbucket.io/pages/index.html")
	 end
	 def self.teardown
		 @selenium_helper.tear_down()
	 end
	 def self.test_playback
		 @selenium_helper.get_url("https://floower.bitbucket.io/pages/index.html")
		 @selenium_helper.execute_actions([{"id"=>0, "type"=>"click", "path"=>"html > body > div#wrapper > nav.navbar.navbar-default.navbar-static-top > div.navbar-default.sidebar > div.sidebar-nav.navbar-collapse > ul#side-menu.nav > li.sidebar-search > div.input-group.custom-search-form > span.input-group-btn > button.btn.btn-default", "element_name"=>nil, "value"=>""}, {"id"=>1, "type"=>"click", "path"=>"html > body > div#wrapper > nav.navbar.navbar-default.navbar-static-top > div.navbar-default.sidebar > div.sidebar-nav.navbar-collapse > ul#side-menu.nav > li > a", "element_name"=>nil, "value"=>""}])
	 end
end
