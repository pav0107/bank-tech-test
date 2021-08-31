require './lib/bank_account.rb'

account = BankAccount.new

while true 
  puts "Please select from the following:\nDeposit\nWithdraw\nPrint Statement\n"
  selection = gets.chomp.downcase

  case selection
  when "deposit"
    puts "How much would you like to deposit?"
    amount = gets.chomp.to_i
    if amount == 0
      puts "Error: not a valid amount"
    else 
      account.deposit(amount)
      puts "Thank you for depositing #{amount}"
    end
  when "withdraw"
    puts "How much would you like to withdraw?"
    amount = gets.chomp.to_i
    if amount == 0
      puts "Error: not a valid amount"
    else
      account.withdraw(amount)
      puts "Thank you for withdrawing #{amount}"
    end
  when "print statement"
    puts account.statement
  end
end

