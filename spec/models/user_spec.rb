require 'spec_helper'

describe User do
  it 'regexp' do
    user1 = User.create(:info => "cool")
    user2 = User.create(:info => "hello")

    result = User.regexp(:info, "ll")

    debugger
    result.should have(1).user
    result.first.should == user2
    
  end
end
