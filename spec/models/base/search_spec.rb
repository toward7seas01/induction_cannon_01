require 'spec_helper'

describe User do
  describe 'regexp' do
    it '01' do
      user1 = User.create(:info => "cool")
      user2 = User.create(:info => "hello")

      result = User.regexp(:info, "ll")

      result.should have(1).user
      result.first.should == user2
    
    end
  
    it '02' do
      User.create(:info => "cool")
      User.create(:info => "hello")

      result = User.regexp(:info, "olo")

      result.should have(0).user
    end
  end

  describe 'fuzzy search' do
    it '01' do
      user1 = User.create(:info => "cool")
      user2 = User.create(:info => "hello")

      result = User.fuzzy(User => {:info => "ll"})
      result.should have(1).user
      result.first.should == user2

    end
    
    it '02' do
      User.create(:info => "cool")
      User.create(:info => "hello")

      result = User.fuzzy(User => {:info => "olo"})
      result.should have(0).user

    end

    it '03' do
      User.create(:info => "cool")
      User.create(:info => "hello")

      result = User.fuzzy(User => {:info => "l"})

      User.all.should have(2).user
      result.should have(2).user
    end
    
    it '04' do
      user = User.create(:info => "cool")
      User.create(:info => "hello")
      user.blogs.create(:title => "yeah")

      result = User.includes(:blogs).fuzzy(User => {:info => "lll"}, Blog => {:title => "y"})

      result.should have(1).user
    end




  end


end
