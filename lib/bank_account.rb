# frozen_string_literal: true

require_relative '../helper_functions'
require_relative './transaction'
require_relative './statement'

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
  end

  def print_statement
    @statement.print
  end
end
