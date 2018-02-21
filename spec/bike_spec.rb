require './lib/bike'

describe Bike do
  it { should respond_to(:is_working?) }

  it {expect(subject.is_working?).to be(true)}
end
