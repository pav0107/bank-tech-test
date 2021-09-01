# frozen_string_literal: true

# require_relative '../helper_functions'
require_relative './transaction'
require_relative './statement'
require 'date'

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
    @statement.history = @statement.history.unshift(transaction.details)
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new(current_date, 0, amount, @balance)
    @statement.history = @statement.history.unshift(transaction.details)
  end

  def print_statement
    @statement.print
  end

  def current_date
    date_day = "0#{Date.today.day}"[-2, 2]
    date_month = "0#{Date.today.month}"[-2, 2]
    date_year = Date.today.year
    "#{date_day}/#{date_month}/#{date_year}"
  end
end
