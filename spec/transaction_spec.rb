# frozen_string_literal: true

require 'transaction'

describe Transaction do
  subject(:transaction1) { described_class.new('31/08/2021', 10, 0, 10)}
  subject(:transaction2) { described_class.new('01/09/2021', 0, 10, -10)}

  it 'shows that a deposit of £10 creates a transaction showing a credit of £10' do
    # transaction = Transaction.new('31/08/2021', 10, 0, 10)
    expect(transaction1.details).to eq("31/08/2021 || 10.00 ||  || 10.00\n")
  end

  it 'shows that a withdrawl of £5 creates a transaction showing a debit of £5' do
    # transaction = Transaction.new('01/09/2021', 0, 10, -10)
    expect(transaction2.details).to eq("01/09/2021 ||  || 10.00 || -10.00\n")
  end
end
