require 'spec_helper'

describe Poi do
  
  context "Create Poi" do
    it "Sucessfuly create a Poi" do
      poi = Poi.new( name: 'Joalheria', x: 15, y: 2)
      expect(poi).to be_valid
    end
  end
end
