describe "Transaction" do
  it "01" do
    param = mock.blank? {true}
    User.each_with_transaction(param).should == :empty
  end

  it '02' do
    5.times { Factory(:user) }
    ids = User.all.map(&:id)
    ids << (ids.last + 10)

    User.each_with_transaction(ids).should == :error
    
  end

  it '03' do
    5.times { Factory(:user) }
    ids = User.all.map(&:id)

    User.each_with_transaction(ids) do |user|
      user.update_attributes(:name => "cool")
    end.should == :success

    User.all.map(&:name).all? {|name| name == "cool"}.should be_true
  end



  it '04' do
    user = Factory(:user, :name => "i" * 100)
    user.should be_persisted

    params = {:name => "cool"}
    mock.instance_of(User).update_attributes(params) { false }
    

    User.each_with_transaction([user.id]) do |user|
      user.update_attributes(params)
    end.should == :error
  end



end
