# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  context 'when a new account is opened' do
    it 'prints a statement that is blank apart from headings' do
      expect(subject.statement).to eq("date || credit || debit || balance\n")
    end
  end

  it 'shows a deposit can be received' do
    subject.deposit(10)
    expect(subject.statement).to eq("date || credit || debit || balance\n31/08/2021 || 10.00 || || 10.00\n")
  end

  it 'shows a withdrawl can be made' do
    subject.deposit(10)
    subject.withdraw(4)
    new_statement = "date || credit || debit || balance\n31/08/2021 || 10.00 || || 10.00\n31/08/2021 || || 4.00 || 6.00\n"
    expect(subject.statement).to eq(new_statement)
  end
end
