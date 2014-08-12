require 'spec_helper'
require 'strain'

describe "Strain" do

  it "should create a new strain" do
    new_strain = Strain.new(name: "Dark Knight", smells: "good", bloom: 14)
    expect(new_strain).to be_an_instance_of Strain
  end
end

describe ".save" do

  it "saves a new strain with a name, smells, and bloom" do
    new_strain = Strain.new(name: "Dark Knight", smells: "good", bloom: 14)
    new_strain.save
    expect(Strain.all.length).to eq 1

  end
end

describe ".all" do
  it "returns all strains" do
    new_strain = Strain.new(name: "Dark Knight", smells: "good", bloom: 14)
    new_strain.save
    new_strain2 = Strain.new(name: "Superman OG", smells: "dank", bloom: 10)
    new_strain2.save
    expect(Strain.all.length). to eq 2
  end
end
