class Account
  attr_accessor :balance

  def initialize(starting_balance = 0)
    @balance = starting_balance
  end

  def deposit(amount)
    raise "You cannot deposit more than 10,000" if amount > 10000
    @balance += amount
  end

  def withdraw(amount)
    raise "You cannot withdraw more than the available balance" if amount > @balance
    @balance -= amount
  end
end
