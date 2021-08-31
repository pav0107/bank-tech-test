# frozen_string_literal: true

require 'date'

class BankAccount
  attr_reader :statement

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @statement_header = "date || credit || debit || balance\n"
    @transactions = ""
    @statement = @statement_header + @transactions
  end

  def deposit(amount)
    @balance += amount

    decimal_amount = to_2_decimal_places(amount)
    decimal_balance = to_2_decimal_places(@balance)

    @transactions = "#{current_date} || #{decimal_amount} || || #{decimal_balance}\n" + @transactions

    @statement = @statement_header + @transactions
  end

  def withdraw(amount)
    @balance -= amount

    decimal_amount = to_2_decimal_places(amount)
    decimal_balance = to_2_decimal_places(@balance)

    @transactions = "#{current_date} || || #{decimal_amount} || #{decimal_balance}\n" + @transactions

    @statement = @statement_header + @transactions
  end

  def current_date
    date_day = "0#{Date.today.day}"[-2, 2]
    date_month = "0#{Date.today.month}"[-2, 2]
    date_year = Date.today.year
    "#{date_day}/#{date_month}/#{date_year}"
  end

  def to_2_decimal_places(number)
    '%.2f' % number
  end

end
