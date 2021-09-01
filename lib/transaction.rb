# frozen_string_literal: true

# require_relative '../helper_functions'
require_relative './bank_account'
require_relative './statement'

class Transaction
  def initialize(date, credit = 0, debit = 0, balance = 0)
    @info = {
      date: date,
      credit: credit,
      debit: debit,
      balance: balance
    }
  end

  def format_for_print
    decimal_credit = @info[:credit] != 0 ? " #{'%.2f' % @info[:credit]} " : ' '
    decimal_debit = @info[:debit] != 0 ? " #{'%.2f' % @info[:debit]} " : ' '
    decimal_balance = '%.2f' % @info[:balance]

    "#{@info[:date]} ||#{decimal_credit}||#{decimal_debit}|| #{decimal_balance}"
  end
end
