require 'rails_helper'

RSpec.describe Company, :type => :model do
  let(:company) { Company.new(name: "Enron") }

  it "is valid" do
    expect(company).to be_valid
  end

  it "is requires a name to be valid" do
    company = Company.new(name: nil)
    expect(company).to_not be_valid
  end

end
