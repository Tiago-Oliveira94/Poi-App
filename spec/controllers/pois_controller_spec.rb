require 'rails_helper'
describe PoisController, :type => :controller do  

    it "Sucessfuly calculate a Euclidean Distance" do
      expect(PoisController.new.euclidean_distance([12,8],[17,5])).to eq(5.83)
    end
  end
