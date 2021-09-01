# frozen_string_literal: true

class Statement
  attr_accessor :history

  def initialize
    @row_title = "date || credit || debit || balance"
    @history = []
  end

  def print
    if @history.length == 0
      @row_title
    else
      @row_title + "\n" + @history.join("\n")
    end
  end
end
