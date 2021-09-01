# frozen_string_literal: true

require_relative '../helper_functions'
require_relative './bank_account'
require_relative './statement'

class Transaction
  def initialize(date, credit = 0, debit = 0, balance = 0)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def details
    decimal_credit = @credit != 0 ? " #{to_2_decimal_places(@credit)} " : ' '

    decimal_debit = @debit != 0 ? " #{to_2_decimal_places(@debit)} " : ' '

    decimal_balance = to_2_decimal_places(@balance)

    "#{@date} ||#{decimal_credit}||#{decimal_debit}|| #{decimal_balance}"
  end
end
