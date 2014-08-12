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

end
end
