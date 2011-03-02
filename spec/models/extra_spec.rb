require 'spec_helper'

describe User do
  it 'helper' do
    user = User.new
    helpers = user.send(:helpers)
    helpers.send(:link_to, "cool", "/").should == "<a href=\"/\">cool</a>"

  end
end
