require 'json'
class EventActionHelper

  def initialize

  end

  def get_action_event_type(action)
    action['type']
  end

  def get_event_element_path(action)
    action['path']
  end

  def get_event_element_value(action)
    action['value']
  end

  def build_dom_xpath(dom)
    # HTML > BODY > DIV#wrapper > NAV:nth-child(1) > DIV:nth-child(2) > DIV:nth-child(1) > UL#side-menu > LI:nth-child(1) > DIV:nth-child(1) > INPUT:nth-child(1)"
    # reg_ex_id         i.e. DIV#wrapper
    # reg_ex_child      i.e. DIV:nth-child(3)
    # reg_ex_child_id   i.e. A#testingID1:nth-child(3)  will use child id for now
    # http://rubular.com/
    reg_ex_id           = /(.+)#(.+)/.match(dom)
    reg_ex_child        = /(.+):nth-child\(([0-9]+)\)/.match(dom)
    reg_ex_child_id     = /(.+)#(.+):nth-child\(([0-9]+)\)/.match(dom)
    if reg_ex_child_id
      return "#{reg_ex_child_id[1]}[#{reg_ex_child_id[3]}]"
    end
    if reg_ex_child
      child_id = reg_ex_child[2].to_i
      if child_id > 1
        child_id = child_id - 1
      end
      return "#{reg_ex_child[1]}[#{child_id}]"
    end
    if reg_ex_id
      return "#{reg_ex_id[1]}[@id='#{reg_ex_id[2]}']"
    end
    return dom
  end

  def parse_json(json)
    JSON.parse(json, symbolize_names: true)
  end

end


