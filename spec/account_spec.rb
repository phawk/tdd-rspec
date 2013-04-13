require_relative '../lib/account.rb'

describe "Bank account" do
  before(:each) do
    @account = Account.new(500)
  end

  it "should have a balance" do
    Account.new.should respond_to :balance
  end

  it "should take a starting balance" do
    Account.new(1045).balance.should == 1045
  end

  it "should allow deposits" do
    @account.deposit(50)
    @account.balance.should == 550
  end

  it "should not allow you to deposit more than 10000" do
    lambda { @account.deposit(10001) }.should raise_error
  end

  it "should allow withdrawls" do
    @account.withdraw(150)
    @account.balance.should == 350
  end

  it "should not allow you to withdraw more than 0" do
    lambda { @account.withdraw(501) }.should raise_error
  end

end
