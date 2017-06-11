require './spec/lib/selenium_helper'
class TutorialTest85 < Test::Unit::TestCase
	def setup
		@selenium_helper = SeleniumHelper.new
		@tutorial_id = 85
		@selenium_helper.set_up('https://floower.bitbucket.io/pages/index.html')
	end
	def teardown
		@selenium_helper.tear_down()
	end
	def test_playback_85
		@selenium_helper.get_url('https://floower.bitbucket.io/pages/index.html')
		events_json = '{"defaults":{"classes":"shepherd-element shepherd-open shepherd-theme-arrows","showCancelLink":true},"steps":[{"id":"1","title":"change test1999","text":"change test1999","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"previousValue":"","value":"test1999","tagName":"INPUT","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1)","classes":["form-control"],"type":"text","class":"form-control","placeholder":"Search..."},"event":{"scrollTop":0,"timeStamp":6443.135000000001,"type":"change"},"guid":"3b5896e1-a3db-714d-ed17-3a3d7ae3749d","page_url":"https://floower.bitbucket.io/pages/index.html??floower=recorder&user_id=2","referrer_url":"https://floower.herokuapp.com/?utf8=%E2%9C%93&cname%3A+test+category=yes&commit=Apply+Filter"}},{"id":"2","title":"click undefined","text":"click undefined","attachTo":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) > I:nth-child(1) bottom","classes":"shepherd shepherd-open shepherd-theme-arrows shepherd-transparent-text","buttons":[{"text":"Cancel","classes":"shepherd-button-secondary","events":{}},{"text":"Save","classes":"shepherd-button-example-primary","events":{}}],"commonWeb":{"element":{"tagName":"I","path":"HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(3) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > SPAN:nth-child(2) > BUTTON:nth-child(1) > I:nth-child(1)","classes":["fa","fa-search"],"class":"fa fa-search"},"event":{"scrollTop":9,"timeStamp":8337.405,"type":"click","metaKey":false},"guid":"3b5896e1-a3db-714d-ed17-3a3d7ae3749d","page_url":"https://floower.bitbucket.io/pages/index.html??floower=recorder&user_id=2","referrer_url":"https://floower.herokuapp.com/?utf8=%E2%9C%93&cname%3A+test+category=yes&commit=Apply+Filter"}}]}'
		@selenium_helper.execute_events(events_json)
		@selenium_helper.patch_result(@tutorial_id)
	end
end
