require './spec/lib/selenium_helper'
class TutorialTest92 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 92
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
			 @selenium_helper.set_up('http://floowr.000webhostapp.com/my-account')
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
	def test_playback_92
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"identity-link-1","title":"click \n        <span class=\"link-item\">\n          <i class=\"material-icons\"></i>\n          Information\n        </span>\n      ","text":"click \n        \n          \n          Information\n        \n      ","attachTo":"HTML > BODY#my-account > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > DIV:nth-child(2) > DIV:nth-child(1) > A#identity-link bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"\n        <span class=\"link-item\">\n          <i class=\"material-icons\"></i>\n          Information\n        </span>\n      ","tagName":"A","path":"HTML > BODY#my-account > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > DIV:nth-child(2) > DIV:nth-child(1) > A#identity-link","classes":["col-lg-4","col-md-6","col-sm-6","col-xs-12"],"class":"col-lg-4 col-md-6 col-sm-6 col-xs-12","id":"identity-link","href":"http://floowr.000webhostapp.com/identity"},"event":{"scrollTop":0,"timeStamp":5236.67,"type":"click","metaKey":false},"guid":"7eda37db-3caa-e63f-8be9-364ed11f8d6f","page_url":"http://floowr.000webhostapp.com/my-account?floower=recorder&user_id=2","referrer_url":""}},{"id":"2","title":"change Alfreid","text":"change Alfreid","attachTo":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"Alfreid","value":"Alfreid","form_values":[{"name":"id_customer","value":"4"},{"name":"id_gender","value":"1"},{"name":"firstname","value":"Alfreid Test With Login"},{"name":"lastname","value":"Pascual"},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":""},{"name":"new_password","value":""},{"name":"birthday","value":"01/01/1990"},{"name":"submitCreate","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form","classes":["js-customer-form"],"action":"http://floowr.000webhostapp.com/identity","id":"customer-form","class":"js-customer-form","method":"post"},"tagName":"INPUT","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > SECTION:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(2) > INPUT:nth-child(1)","classes":["form-control"],"class":"form-control","name":"firstname","type":"text","required":""},"event":{"scrollTop":0,"timeStamp":11054.08,"type":"change"},"guid":"7eda37db-3caa-e63f-8be9-364ed11f8d6f","page_url":"http://floowr.000webhostapp.com/identity","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder&user_id=2"}},{"id":"3","title":"change Pascual","text":"change Pascual","attachTo":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > SECTION:nth-child(1) > DIV:nth-child(4) > DIV:nth-child(2) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"Pascual","value":"Pascual","form_values":[{"name":"id_customer","value":"4"},{"name":"id_gender","value":"1"},{"name":"firstname","value":"Alfreid Test With Login"},{"name":"lastname","value":"Pascual Test With Login"},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":""},{"name":"new_password","value":""},{"name":"birthday","value":"01/01/1990"},{"name":"submitCreate","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form","classes":["js-customer-form"],"action":"http://floowr.000webhostapp.com/identity","id":"customer-form","class":"js-customer-form","method":"post"},"tagName":"INPUT","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > SECTION:nth-child(1) > DIV:nth-child(4) > DIV:nth-child(2) > INPUT:nth-child(1)","classes":["form-control"],"class":"form-control","name":"lastname","type":"text","required":""},"event":{"scrollTop":0,"timeStamp":18164.08,"type":"change"},"guid":"7eda37db-3caa-e63f-8be9-364ed11f8d6f","page_url":"http://floowr.000webhostapp.com/identity","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder&user_id=2"}},{"id":"4","title":"click \n          Save\n        ","text":"click \n          Save\n        ","attachTo":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > FOOTER:nth-child(2) > BUTTON:nth-child(2) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"\n          Save\n        ","form_values":[{"name":"id_customer","value":"4"},{"name":"id_gender","value":"1"},{"name":"firstname","value":"Alfreid Test With Login"},{"name":"lastname","value":"Pascual Test With Login"},{"name":"email","value":"alfreid@alfreid.com"},{"name":"password","value":""},{"name":"new_password","value":""},{"name":"birthday","value":"01/01/1990"},{"name":"submitCreate","value":"1"}],"form":{"tagName":"FORM","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form","classes":["js-customer-form"],"action":"http://floowr.000webhostapp.com/identity","id":"customer-form","class":"js-customer-form","method":"post"},"tagName":"BUTTON","path":"HTML > BODY#identity > MAIN:nth-child(1) > SECTION#wrapper > DIV:nth-child(1) > DIV#content-wrapper > SECTION#main > SECTION#content > FORM#customer-form > FOOTER:nth-child(2) > BUTTON:nth-child(2)","classes":["btn","btn-primary","form-control-submit","pull-xs-right"],"class":"btn btn-primary form-control-submit pull-xs-right","data-link-action":"save-customer","type":"submit"},"event":{"scrollTop":810,"timeStamp":42280.48500000001,"type":"click","metaKey":false},"guid":"7eda37db-3caa-e63f-8be9-364ed11f8d6f","page_url":"http://floowr.000webhostapp.com/identity","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder&user_id=2"}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end