require 'bank_account'

describe BankAccount do
  it 'shows a balance of 0 when I open a new bank account' do
    expect(subject.balance).to eq 0
  end

  it 'shows a deposit can be received' do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end

  it 'shows a withdrawl can be made' do
    subject.deposit(10)
    subject.withdraw(4)
    expect(subject.balance).to eq 6
  end
end