require 'spec_helper'

describe(Band) do 
  it { should have_and_belong_to_many(:venues) }

  it("capitalizes the first word of each band entered") do 
    band = Band.create({:name => "gza"})
    expect(band.name).to(eq("Gza"))
  end

  it("validates presence of a band name") do 
    band = Band.new({:name => ""})
    expect(band.save).to(eq(false))
  end
end

  