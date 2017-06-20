require './spec/lib/selenium_helper'
class TutorialTest93 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 93
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
			 @selenium_helper.set_up('http://localhost:8081/')
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
	def test_playback_93
		@selenium_helper.get_url('http://localhost:8081/')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"click Link","text":"click Link","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(2) > A:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Link","tagName":"A","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(2) > A:nth-child(1)","href":"#"},"event":{"scrollTop":0,"timeStamp":14887.465,"type":"click","metaKey":false},"guid":"38747256-8624-e51d-dcb4-74c43884da9f","page_url":"http://localhost:8081/","referrer_url":""}},{"id":"2","title":"click Dropdown ","text":"click Dropdown ","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(3) > A:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Dropdown ","tagName":"A","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(3) > A:nth-child(1)","classes":["dropdown-toggle","shepherd-target","shepherd-element-attached-top","shepherd-element-attached-center","shepherd-target-attached-bottom","shepherd-target-attached-center"],"href":"#","class":"dropdown-toggle shepherd-target shepherd-element-attached-top shepherd-element-attached-center shepherd-target-attached-bottom shepherd-target-attached-center","data-toggle":"dropdown","role":"button","aria-haspopup":"true","aria-expanded":"false"},"event":{"scrollTop":0,"timeStamp":19120.33,"type":"click","metaKey":false},"guid":"38747256-8624-e51d-dcb4-74c43884da9f","page_url":"http://localhost:8081/","referrer_url":""}},{"id":"3","title":"change here we go","text":"change here we go","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"here we go","form_values":[],"form":{"tagName":"FORM","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2)","classes":["navbar-form","navbar-left"],"class":"navbar-form navbar-left"},"tagName":"INPUT","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1)","classes":["form-control"],"type":"text","class":"form-control","placeholder":"Search"},"event":{"scrollTop":8,"timeStamp":29176.475000000002,"type":"change","metaKey":false},"guid":"38747256-8624-e51d-dcb4-74c43884da9f","page_url":"http://localhost:8081/","referrer_url":""}},{"id":"4","title":"click Submit","text":"click Submit","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > BUTTON:nth-child(2) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Submit","form_values":[],"form":{"tagName":"FORM","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2)","classes":["navbar-form","navbar-left"],"class":"navbar-form navbar-left"},"tagName":"BUTTON","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > BUTTON:nth-child(2)","classes":["btn","btn-default"],"type":"submit","class":"btn btn-default"},"event":{"scrollTop":8,"timeStamp":31867.430000000004,"type":"click","metaKey":false},"guid":"38747256-8624-e51d-dcb4-74c43884da9f","page_url":"http://localhost:8081/","referrer_url":""}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
