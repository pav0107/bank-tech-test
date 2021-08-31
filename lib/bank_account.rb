class BankAccount

  attr_reader :balance

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end