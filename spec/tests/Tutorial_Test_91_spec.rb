require './spec/lib/selenium_helper'
class TutorialTest91 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 91
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
			 @selenium_helper.set_up('http://floowr.000webhostapp.com/login')
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
	def test_playback_91
		@selenium_helper.get_url('http://floowr.000webhostapp.com/login')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"change undefined","text":"change undefined","attachTo":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(2) > DIV:nth-child(2) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"","form_values":[{"name":"back","value":""},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":""},{"name":"submitLogin","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form","id":"login-form","action":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","method":"post"},"tagName":"INPUT","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(2) > DIV:nth-child(2) > INPUT:nth-child(1)","classes":["form-control"],"class":"form-control","name":"email","type":"email","required":""},"event":{"scrollTop":0,"timeStamp":18146.715,"type":"change"},"guid":"7b579267-164a-215b-acef-37feeed126e2","page_url":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","referrer_url":""}},{"id":"2","title":"change undefined","text":"change undefined","attachTo":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"","form_values":[{"name":"back","value":""},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":"test123"},{"name":"submitLogin","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form","id":"login-form","action":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","method":"post"},"tagName":"INPUT","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > DIV:nth-child(1) > INPUT:nth-child(1)","classes":["form-control","js-child-focus","js-visible-password"],"class":"form-control js-child-focus js-visible-password","name":"password","type":"password","pattern":".{5,}","required":""},"event":{"scrollTop":0,"timeStamp":32188.790000000005,"type":"change"},"guid":"7b579267-164a-215b-acef-37feeed126e2","page_url":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","referrer_url":""}},{"id":"3","title":"click \n            Sign in\n          ","text":"click \n            Sign in\n          ","attachTo":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > FOOTER:nth-child(2) > BUTTON:nth-child(2) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"\n            Sign in\n          ","form_values":[{"name":"back","value":""},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":"test123"},{"name":"submitLogin","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form","id":"login-form","action":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","method":"post"},"tagName":"BUTTON","path":"HTML > BODY#authentication > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > SECTION:nth-child(1) > FORM#login-form > FOOTER:nth-child(2) > BUTTON:nth-child(2)","classes":["btn","btn-primary"],"class":"btn btn-primary","data-link-action":"sign-in","type":"submit"},"event":{"scrollTop":174,"timeStamp":35703.155,"type":"click","metaKey":false},"guid":"7b579267-164a-215b-acef-37feeed126e2","page_url":"http://floowr.000webhostapp.com/login?floower=recorder&user_id=2","referrer_url":""}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
