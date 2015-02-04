require 'spec_helper'

describe(Band) do 
  it { should have_and_belong_to_many(:venues) }

  it("capitalizes the first word of each band entered") do 
    band = Band.create({:name => "gza"})
    expect(band.name).to(eq("Gza"))
  end
end

  