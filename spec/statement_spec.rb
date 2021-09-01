# frozen_string_literal: true

require 'statement'

describe Statement do
  describe 'a new account' do
    it 'prints just the header if no money is deposited or withdrawn' do
      expect(subject.print([])).to eq("date || credit || debit || balance")
    end
  end

  let(:account) { double("account", :transaction_details => ["01/09/2021 || 10.00 || || 10.00"]) }
  describe 'depositing into an account' do
    it 'receives transaction history and prints statement' do
      expect(subject.print(["date || credit || debit || balance", "01/09/2021 || || 4.00 || 6.00"]))
    end
  end
end
