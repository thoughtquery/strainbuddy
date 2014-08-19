require 'spec_helper'
require 'dispensary'

describe "Dispensary" do
  it "Creates a new dispensary" do
    new_dispensary = Dispensary.new({name: "Green House"})
    expect(new_dispensary).to be_an_instance_of Dispensary
  end
end

describe ".save" do
  it "Saves a dispensary with a name and ID" do
    new_dispensary = Dispensary.new({name: "Green House"})
    new_dispensary.save
    expect(Dispensary.all.length).to eq 1

  end
end

describe ".all" do
  it "Returns all dispensaries" do
    new_dispensary = Dispensary.new({name: "Green House"})
    new_dispensary.save
    new_dispensary2 = Dispensary.new({name: "Garden of Weeden"})
    new_dispensary2.save
    expect(Dispensary.all.length).to eq 2
  end
end

describe "insert_dispense_strain" do
  it "Inserts a strain into a dispensary" do
    new_dispensary = Dispensary.new({name: "Green House"})
    new_dispensary.save
    new_strain = Strain.new(name: "Dark Knight", smells: "good", bloom: 14)
    new_strain.save
  end
end

describe "select_strains_by_dispensary" do
  it "lists all strains in a dispensary" do
    new_dispensary = Dispensary.new({name: "Value Village", id: 1})
    new_dispensary.save
    new_strain = Strain.new({name: "Stankapolics", smells: "Like the end", bloom: 7, id: 1})
    new_strain.save
    new_strain2 = Strain.new({name: "Poopstick", smells: "Like it tastes", bloom: 6, id: 2})
    new_strain2.save
    Dispensary.insert_dispense_strain(new_dispensary.id, new_strain.id)
    Dispensary.insert_dispense_strain(new_dispensary.id, new_strain2.id)   
    expect(Dispensary.select_strains_by_dispensary(new_dispensary.id).length).to eq 4
  end
end
