require_relative '../helper_functions.rb'
require_relative './bank_account.rb'
require_relative './statement.rb'


class Transaction
  def initialize(date, credit = 0, debit = 0, balance = 0)
    @date = date
    @credit = credit
    @debit = debit    
    @balance = balance
  end

  def details
    # @balance = @balance + @credit - @debit

    @credit != 0 ? decimal_credit = to_2_decimal_places(@credit) : decimal_credit = ""

    @debit != 0? decimal_debit = to_2_decimal_places(@debit) : decimal_debit == ""

    decimal_balance = to_2_decimal_places(@balance)

    "#{@date} || #{decimal_credit} || #{decimal_debit} || #{decimal_balance}\n"
  end
end