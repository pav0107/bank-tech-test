require 'date'

class BankAccount

  attr_reader :statement

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @statement = "date || credit || debit || balance\n"
  end

  def deposit(amount)
    @balance += amount

    decimal_amount = to_2_decimal_places(amount)
    decimal_balance = to_2_decimal_places(@balance)

    @statement += "#{current_date} || #{decimal_amount} || || #{decimal_balance}\n"
  end

  def withdraw(amount)
    @balance -= amount

    decimal_amount = to_2_decimal_places(amount)
    decimal_balance = to_2_decimal_places(@balance)

    @statement += "#{current_date} || || #{decimal_amount} || #{decimal_balance}\n"
  end

  def current_date
    date_day = "0#{Date.today.day}"[-2,2]
    date_month = "0#{Date.today.month}"[-2,2]
    date_year = Date.today.year
    date = "#{date_day}/#{date_month}/#{date_year}"
  end

  def to_2_decimal_places(number)
    "%.2f" % number
  end

  private

  def balance
    @balance
  end
end