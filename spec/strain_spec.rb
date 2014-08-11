require 'rspec'
require 'strain'

describe "Strain" do
  it "should create a new strain" do
    new_strain = Strain.new("attributes")
    expect(new_strain).to be_an_instance_of Strain
  end

end
