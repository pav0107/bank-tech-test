# frozen_string_literal: true

require 'bank_account'
require_relative '../helper_functions.rb'

describe BankAccount do
  context 'when a new account is opened' do
    it 'prints a statement that is blank apart from headings' do
      expect(subject.print_statement).to eq("date || credit || debit || balance\n")
    end
  end

  it 'shows a deposit can be received' do
    subject.deposit(10)
    expect(subject.print_statement).to eq("date || credit || debit || balance\n#{current_date} || 10.00 ||  || 10.00\n")
  end

  it 'shows a withdrawl can be made' do
    subject.deposit(10)
    subject.withdraw(4)
    new_statement = "date || credit || debit || balance\n#{current_date} ||  || 4.00 || 6.00\n#{current_date} || 10.00 ||  || 10.00\n"
    expect(subject.print_statement).to eq(new_statement)
  end
end
