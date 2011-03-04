require 'spec_helper'

describe UsersController do
  it '01' do
    get :index
    @controller.send(:current_identifier).should == "user"
    @controller.send(:current_model).should == User
  end

  it '02' do
    Factory(:user)
    
    get :show, :id => 1
    @controller.send(:current_identifier).should == "user"
    @controller.send(:current_model).should == User
  end
end
