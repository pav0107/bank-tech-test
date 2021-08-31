require 'bank_account'

describe BankAccount do
  it 'shows a balance of 0 when I open a new bank account' do
    expect(subject.balance).to eq 0
  end

end