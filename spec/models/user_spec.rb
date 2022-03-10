require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: "Jack", email: "jsmith@sample.com", password_digest: "password")}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a email" do
    subject.email=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a password confirmation" do
    subject.password_digest=nil
    expect(subject).to_not be_valid
  end
end
