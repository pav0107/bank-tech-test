require 'bank_account'

describe BankAccount do
  context 'when a new account is opened' do
    it 'shows a balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'prints a statement that is blank apart from headings' do
      expect(subject.statement).to eq("date || credit || debit || balance")
    end
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