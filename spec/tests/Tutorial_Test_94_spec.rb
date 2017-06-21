require './spec/lib/selenium_helper'
class TutorialTest94 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 94
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
			 @selenium_helper.set_up('http://localhost:8080/')
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
	def test_playback_94
		@selenium_helper.get_url('http://localhost:8080/')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"click Link (current)","text":"click Link (current)","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(1) > A:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Link (current)","tagName":"A","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(1) > A:nth-child(1)","href":"#"},"event":{"scrollTop":0,"timeStamp":1876.8650000000002,"type":"click","metaKey":false},"guid":"f797e2b0-622a-a547-f503-635d9766c78d","page_url":"http://localhost:8080/","referrer_url":"http://localhost:8080/"}},{"id":"2","title":"click Link","text":"click Link","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(2) > A:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Link","tagName":"A","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > UL:nth-child(1) > LI:nth-child(2) > A:nth-child(1)","href":"#"},"event":{"scrollTop":0,"timeStamp":3402.775,"type":"click","metaKey":false},"guid":"f797e2b0-622a-a547-f503-635d9766c78d","page_url":"http://localhost:8080/","referrer_url":"http://localhost:8080/"}},{"id":"3","title":"click Submit","text":"click Submit","attachTo":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > BUTTON:nth-child(2) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"Submit","form_values":[],"form":{"tagName":"FORM","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2)","classes":["navbar-form","navbar-left"],"class":"navbar-form navbar-left"},"tagName":"BUTTON","path":"HTML > BODY > NAV:nth-child(1) > DIV:nth-child(1) > DIV#bs-example-navbar-collapse-1 > FORM:nth-child(2) > BUTTON:nth-child(2)","classes":["btn","btn-default"],"type":"submit","class":"btn btn-default"},"event":{"scrollTop":8,"timeStamp":5077.625,"type":"click","metaKey":false},"guid":"f797e2b0-622a-a547-f503-635d9766c78d","page_url":"http://localhost:8080/","referrer_url":"http://localhost:8080/"}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
