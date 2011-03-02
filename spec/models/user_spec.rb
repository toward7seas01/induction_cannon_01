describe User do
  it 'is valid' do
    Factory(:user).should be_persisted
  end
end
