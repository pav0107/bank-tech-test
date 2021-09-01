# frozen_string_literal: true

require 'bank_account'
require_relative '../helper_functions'

describe BankAccount do
  it 'prints a statement that is blank apart from headings when a new account is opened' do
    expect(subject.print_statement).to eq("date || credit || debit || balance")
  end

  it 'shows a deposit can be received' do
    subject.deposit(10)
    expect(subject.print_statement).to eq("date || credit || debit || balance\n#{current_date} || 10.00 || || 10.00")
  end

  it 'shows a withdrawl can be made' do
    subject.deposit(10)
    subject.withdraw(4)
    new_statement = "date || credit || debit || balance\n#{current_date} || || 4.00 || 6.00\n#{current_date} || 10.00 || || 10.00"
    expect(subject.print_statement).to eq(new_statement)
  end
end
