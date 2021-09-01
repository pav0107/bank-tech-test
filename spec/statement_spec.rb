# frozen_string_literal: true

require 'statement'

describe Statement do
  it 'prints just the header if no money is deposited or withdrawn' do
    expect(subject.print).to eq("date || credit || debit || balance")
  end
end
