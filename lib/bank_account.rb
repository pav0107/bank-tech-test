require 'date'

class BankAccount

  attr_reader :statement

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = ("%.2f" % balance).to_f
    @statement = "date || credit || debit || balance\n"
  end

  def deposit(amount)
    @balance += amount

    decimal_amount = "%.2f" % amount
    decimal_balance = "%.2f" % @balance

    @statement += "#{current_date} || #{decimal_amount} || || #{decimal_balance}\n"
  end

  def withdraw(amount)
    @balance -= amount

    decimal_amount = "%.2f" % amount
    decimal_balance = "%.2f" % @balance

    @statement += "#{current_date} || || #{decimal_amount} || #{decimal_balance}\n"
  end

  def current_date
    if Date.today.day >= 10
      date_day = Date.today.day
    else
      date_day = "0#{Date.today.day}"
    end

    if Date.today.month >= 10
      date_month = Date.today.month
    else
      date_month = "0#{Date.today.month}"
    end

    date_year = Date.today.year

    date = "#{date_day}/#{date_month}/#{date_year}"
  end

  private

  def balance
    @balance
  end
end