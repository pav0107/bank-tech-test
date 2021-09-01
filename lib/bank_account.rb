# frozen_string_literal: true

# require_relative '../helper_functions'
require_relative './transaction'
require_relative './statement'
require 'date'

class BankAccount
  INITIAL_BALANCE = 0

  attr_reader :statement, :transaction_history

  def initialize(balance = INITIAL_BALANCE, statement = Statement.new)
    @balance = balance
    @statement = statement
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new(current_date, amount, 0, @balance)
    @transaction_history.unshift(transaction.format_for_print)
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new(current_date, 0, amount, @balance)
    @transaction_history.unshift(transaction.format_for_print)
  end

  def print_statement
    @statement.print(@transaction_history)
  end

  def current_date
    date_day = "0#{Date.today.day}"[-2, 2]
    date_month = "0#{Date.today.month}"[-2, 2]
    date_year = Date.today.year
    "#{date_day}/#{date_month}/#{date_year}"
  end
end
