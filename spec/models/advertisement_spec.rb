require 'rails_helper'

RSpec.describe Advertisement, type: :model do
    let(:my_ad) { Advertisement.create!(title: "New Ad", copy: "It's an Ad", price: 50) }

    describe "attribues" do
        it "has title, copy, and price attributes" do
            expect(my_ad).to have_attributes(title: "New Ad", copy: "It's an Ad", price: 50)
        end
    end
end
