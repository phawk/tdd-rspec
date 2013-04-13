require_relative '../lib/account.rb'

describe "Bank account" do
  it "should have a balance" do
    Account.new.should respond_to :balance
  end
  it "should allow deposits"
  it "should not allow you to deposit more than 10000"
  it "should allow withdrawls"
  it "should not allow you to withdraw more than 0"
end