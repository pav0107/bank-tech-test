# frozen_string_literal: true
require_relative './bank_account'

class Statement
  attr_accessor :history

  def initialize
    @row_title = "date || credit || debit || balance"
    @history = []
  end

  def print(transaction_history)
    if transaction_history.length == 0
      @row_title
    else
      @row_title + "\n" + transaction_history.join("\n")
    end
  end
end
