require 'rspec'
require 'dispensary'

describe "Dispensary" do
  it "Creates a new dispensary" do
    new_dispensary = Dispensary.new("attributes")
    expect(new_dispensary).to be_an_instance_of Dispensary
  end
end
