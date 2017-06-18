require './spec/lib/selenium_helper'
class TutorialTest285 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 285
		pre_requisite_setup
	end
	def teardown
		pre_requisite_teardown
	end

	def pre_requisite_setup
		get_requisite_used_by_tutorial = @selenium_helper.fetch_pre_requisite_used_by_tutorial(@tutorial_id)
		if get_requisite_used_by_tutorial['status'] == 200
			pre_req_id = get_requisite_used_by_tutorial['tutorial_req_maps']['id']
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
			pre_req_id = get_requisite_used_by_tutorial['tutorial_req_maps']['id']
			require "./spec/pre_requisite_tests/Pre-requisite_Tutorial_Test_#{pre_req_id}_spec"
			PrerequisiteTutorialTest.teardown()
		else
			@selenium_helper.tear_down()
		end
	end
	def test_playback_285
		@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"change 111111111","text":"change 111111111","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"111111111","tagName":"INPUT","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1)","classes":["form-control"],"type":"text","class":"form-control","placeholder":"Search..."},"event":{"scrollTop":0,"timeStamp":176626.02500000002,"type":"change"},"guid":"74f3cf27-1821-25a2-68cc-62b545d7e0b8","page_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=15&url=https://d45ae4fe.ngrok.io","referrer_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=15&url=https://d45ae4fe.ngrok.io"}},{"id":"2","title":"click undefined","text":"click undefined","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) > I:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"tagName":"I","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) > I:nth-child(1)","classes":["fa","fa-search"],"class":"fa fa-search"},"event":{"scrollTop":9,"timeStamp":178242.05000000002,"type":"click","metaKey":false},"guid":"74f3cf27-1821-25a2-68cc-62b545d7e0b8","page_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=15&url=https://d45ae4fe.ngrok.io","referrer_url":"https://floower.bitbucket.io/pages/index.html?floower=recorder&user_id=15&url=https://d45ae4fe.ngrok.io"}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end