require 'spec_helper'
require 'dispensary'

describe "Dispensary" do
  it "Creates a new dispensary" do
    new_dispensary = Dispensary.new({name: "Green House"})
    expect(new_dispensary).to be_an_instance_of Dispensary
  end
end

describe ".save" do
  it "saves a dispensary with a name and ID" do
    new_dispensary = Dispensary.new({name: "Green House"})
    new_dispensary.save
    expect(Dispensary.all.length).to eq 1

  end
end

describe ".all" do
  it "returns all dispensaries" do
    new_dispensary = Dispensary.new({name: "Green House"})
    new_dispensary.save
    new_dispensary2 = Dispensary.new({name: "Garden of Weeden"})
    new_dispensary2.save
    expect(Dispensary.all.length).to eq 2
  end
end
