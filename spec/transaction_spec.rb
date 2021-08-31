require 'transaction'

describe Transaction do
  it 'a deposit of £10 creates a transaction showing a credit of £10' do
    expect(subject.details)
  end
end