class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def withdraw amount
    @balance = @balance - amount.to_i
  end

  def deposit amount
    @balance = @balance + amount.to_i
  end
end