class UsersController < ApplicationController
  inherit_resources

  def update_all
    base_action {|record| record.update_attributes!(:name => :cool) }
  end

end
