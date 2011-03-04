require 'spec_helper'

describe UsersController do
  describe "current_identifier" do
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

  describe "base_action" do
    it '01' do
      ids = [Factory(:user), Factory(:user)].map(&:id)
      @request.env["HTTP_REFERER"] = users_path

      put :update_all, :ids => ids

      flash.notice.should == "The operation was successful"
    end
  end
end
