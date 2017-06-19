require './spec/lib/selenium_helper'
class TutorialTest90 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 90
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
			 @selenium_helper.set_up('https://floower.bitbucket.io/pages/index.html')
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
	def test_playback_90
		@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"change POST test","text":"change POST test","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"POST test","tagName":"INPUT","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1)","classes":["form-control"],"type":"text","class":"form-control","placeholder":"Search..."},"event":{"scrollTop":0,"timeStamp":6914.81,"type":"change"},"guid":"2473f40d-58cf-5128-6bee-3545b06785b1","page_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=2","referrer_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=2"}},{"id":"2","title":"click \n                                    <i class=\"fa fa-search\"></i>\n                                ","text":"click \n                                    \n                                ","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"\n                                    <i class=\"fa fa-search\"></i>\n                                ","tagName":"BUTTON","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1)","classes":["btn","btn-default"],"class":"btn btn-default","type":"button"},"event":{"scrollTop":0,"timeStamp":8374.555,"type":"click","metaKey":false},"guid":"2473f40d-58cf-5128-6bee-3545b06785b1","page_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=2","referrer_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=2"}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
