require './spec/lib/selenium_helper'
class TutorialTest222 < Test::Unit::TestCase
def setup
@selenium_helper = SeleniumHelper.new
@tutorial_id = 222
@selenium_helper.set_up('base_url')
end
@selenium_helper.tear_down()
def test_playback_222
end
end
