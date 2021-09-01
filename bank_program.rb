# frozen_string_literal: true

require './lib/bank_account'

account = BankAccount.new

loop do
  puts "Please select from the following:\nDeposit\nWithdraw\nPrint Statement\n"
  selection = gets.chomp.downcase

  case selection
  when 'deposit'
    puts 'How much would you like to deposit?'
    amount = gets.chomp.to_i
    if amount.zero?
      puts 'Error: not a valid amount'
    else
      account.deposit(amount)
      puts "You have deposited £#{amount}"
    end
  when 'withdraw'
    puts 'How much would you like to withdraw?'
    amount = gets.chomp.to_i
    if amount.zero?
      puts 'Error: not a valid amount'
    else
      account.withdraw(amount)
      puts "You have withdrawn £#{amount}"
    end
  when 'print statement'
    puts account.print_statement
  end
end
