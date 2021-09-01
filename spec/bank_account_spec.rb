# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:transaction1) { double("transaction", :details => "#{subject.current_date} || 10.00 || || 10.00") }
  let(:transaction2) { double("transaction", :details => "#{subject.current_date} || || 10.00 || -10.00") }

  it 'has an empty transaction history when initiated' do
    expect(subject.transaction_history).to eq []
  end

  it 'has a transaction in the transaction_history after a deposit' do
    subject.deposit(10)
    expect(subject.transaction_history).to eq [transaction1.details]
  end

  it 'has a transaction in the transaction_history after a withdrawl' do
    subject.withdraw(10)
    expect(subject.transaction_history).to eq [transaction2.details]
  end
end
