require 'spec_helper'

describe ApplicationHelper do
  it '01' do
    helper.for_select(:name, ah(:yes, :my_lord)).should ==
      "<select id=\"name\" name=\"name\"><option value=\"my_lord\">yes</option>
<option value=\"\" selected=\"selected\"></option></select>"
  end

end
