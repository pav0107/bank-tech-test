# frozen_string_literal: true

require_relative '../helper_functions.rb'
require_relative './transaction.rb'
require_relative './statement.rb'

class BankAccount
  INITIAL_BALANCE = 0

  attr_reader :statement

  def initialize(balance = INITIAL_BALANCE, statement = Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance += amount

    transaction = Transaction.new(current_date, amount, 0, @balance)

    @statement.history = transaction.details + @statement.history
  end

  def withdraw(amount)
    @balance -= amount

    transaction = Transaction.new(current_date, 0, amount, @balance)

    @statement.history = transaction.details + @statement.history

    # decimal_amount = to_2_decimal_places(amount)
    # decimal_balance = to_2_decimal_places(@balance)

    # @transactions = "#{current_date} || || #{decimal_amount} || #{decimal_balance}\n" + @transactions
  end

  def print_statement
    @statement.print
  end

  # def statement
  #   @statement
  # end
end
