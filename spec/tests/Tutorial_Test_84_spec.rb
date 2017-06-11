require './spec/lib/selenium_helper'

class TutorialTest84 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 84
		pre_requisite_setup
	end

	def teardown
		prequisite_teardown
	end

	def self_setup
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
	end

	def self_teardown
		@selenium_helper.tear_down()
	end

	def pre_requisite_setup
		# TODO: create selenium helper method to check from tutorial_prerequisite modal
		# return the pre-requisite tutorial id as pre_req_id = SeleniumHelper.get_tutorial_map(@tutorial_id)
		pre_req_id = 1
		require "./spec/pre_requisite_tests/Pre-requisite_Tutorial_Test_#{pre_req_id}_spec"
		PrerequisiteTutorialTest.setup(@selenium_helper)
		PrerequisiteTutorialTest.test_playback
	end

	def prequisite_teardown
		PrerequisiteTutorialTest1.teardown
	end

	def test_playback_84
		@selenium_helper.get_url('http://floowr.000webhostapp.com/my-account')
		# events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"identity-link-1","title":"click \\n \u003cspan class=\\"link-item\\"\u003e\\n \u003ci class=\\"material-icons\\"\u003e\u003c/i\u003e\\n Information\\n \u003c/span\u003e\\n ","text":"click \\n \\n \\n Information ","attachTo":"HTML \u003e #my-account \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e DIV:nth-child(2) \u003e DIV:nth-child(1) \u003e #identity-link bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"text":"\\n \u003cspan class=\\"link-item\\"\u003e\\n \u003ci class=\\"material-icons\\"\u003e\u003c/i\u003e\\n Information\\n \u003c/span\u003e\\n ","tagName":"A","path":"HTML \u003e #my-account \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e DIV:nth-child(2) \u003e DIV:nth-child(1) \u003e #identity-link","classes":["col-lg-4","col-md-6","col-sm-6","col-xs-12"],"class":"col-lg-4 col-md-6 col-sm-6 col-xs-12","id":"identity-link","href":"http://floowr.000webhostapp.com/identity"},"event":{"scrollTop":16,"timeStamp":17150.815000000002,"type":"click","metaKey":false},"guid":"8a41ff2b-f0e7-9174-66d0-e506bbf652f5","page_url":"http://floowr.000webhostapp.com/my-account?floower=recorder\u0026user_id=2","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder\u0026user_id=2"}},{"id":"2","title":"change Alfreid","text":"change Alfreid Test","attachTo":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form \u003e SECTION:nth-child(1) \u003e DIV:nth-child(3) \u003e DIV:nth-child(2) \u003e INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"Alfreid","value":"Alfreid","form_values":[{"name":"id_customer","value":"2"},{"name":"id_gender","value":"1"},{"name":"firstname","value":"Alfreid Test"},{"name":"lastname","value":"Pascual"},{"name":"email","value":"alfreidp@test.com"},{"name":"password","value":""},{"name":"new_password","value":""},{"name":"birthday","value":"01/01/1990"},{"name":"submitCreate","value":"1"}],"form":{"tagName":"FORM","path":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form","classes":["js-customer-form"],"action":"http://floowr.000webhostapp.com/identity","id":"customer-form","class":"js-customer-form","method":"post"},"tagName":"INPUT","path":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form \u003e SECTION:nth-child(1) \u003e DIV:nth-child(3) \u003e DIV:nth-child(2) \u003e INPUT:nth-child(1)","classes":["form-control"],"class":"form-control","name":"firstname","type":"text","required":""},"event":{"scrollTop":0,"timeStamp":28314.370000000003,"type":"change"},"guid":"8a41ff2b-f0e7-9174-66d0-e506bbf652f5","page_url":"http://floowr.000webhostapp.com/identity","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder\u0026user_id=2"}},{"id":"3","title":"change Pascual","text":"change Pascual Test","attachTo":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form \u003e SECTION:nth-child(1) \u003e DIV:nth-child(4) \u003e DIV:nth-child(2) \u003e INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"Pascual","value":"Pascual","form_values":[{"name":"id_customer","value":"2"},{"name":"id_gender","value":"1"},{"name":"firstname","value":"Alfreid Test"},{"name":"lastname","value":"Pascual Test"},{"name":"email","value":"alfreidp@test.com"},{"name":"password","value":""},{"name":"new_password","value":""},{"name":"birthday","value":"01/01/1990"},{"name":"submitCreate","value":"1"}],"form":{"tagName":"FORM","path":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form","classes":["js-customer-form"],"action":"http://floowr.000webhostapp.com/identity","id":"customer-form","class":"js-customer-form","method":"post"},"tagName":"INPUT","path":"HTML \u003e #identity \u003e MAIN:nth-child(1) \u003e #wrapper \u003e DIV:nth-child(1) \u003e #content-wrapper \u003e #main \u003e #content \u003e #customer-form \u003e SECTION:nth-child(1) \u003e DIV:nth-child(4) \u003e DIV:nth-child(2) \u003e INPUT:nth-child(1)","classes":["form-control"],"class":"form-control","name":"lastname","type":"text","required":""},"event":{"scrollTop":0,"timeStamp":40498.33500000001,"type":"change"},"guid":"8a41ff2b-f0e7-9174-66d0-e506bbf652f5","page_url":"http://floowr.000webhostapp.com/identity","referrer_url":"http://floowr.000webhostapp.com/my-account?floower=recorder\u0026user_id=2"}}]}","created_at":"2017-06-10T08:38:10.194Z","updated_at":"2017-06-10T08:39:02.151Z","user_id":2,"categories":null}}'
		# @selenium_helper.execute_events(events_json)
		@selenium_helper.click_by_xpath("/html/body/main/section/div/div/section/section/div/div/a[1]/span")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/form/section/div[2]/div[1]/input","Alfreid Test")
		@selenium_helper.type_by_xpath("/html/body/main/section/div/div/section/section/form/section/div[3]/div[1]/input","Pascual Test")
		@selenium_helper.patch_result(@tutorial_id)
	end
end
