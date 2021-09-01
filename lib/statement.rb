class Statement

  attr_accessor :history

  def initialize
    @row_title = "date || credit || debit || balance\n"
    @history = ""
  end

  def print
    @row_title + @history
  end
end