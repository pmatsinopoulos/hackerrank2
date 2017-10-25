require 'spec_helper'
require_relative "../lib/sort_hotels"

describe 'sort hotels' do
  [
      ["breakfast beach citycenter location metro view staff price",
       [1, 2, 1, 1, 2],

       ["This hotel has a nice view of the citycenter. The location is perfect.",
        "The breakfast is ok. Regarding location, it is quite far from citycenter but price is cheap so it is worth.",
        "Location is excellent, 5 minutes from citycenter. There is also a metro station very close to the hotel.",
        "They said I couldn't take my dog and there were other guests with dogs! That is not fair.",
        "Very friendly staff and good cost-benefit ratio. Its location is a bit far from citycenter."],

       [2, 1]],

      ["breakfast beach citycenter location metro view staff price",
       [1, 2, 1, 1, 2],

       ["This hotel has beach a nice view of the citycenter. The location is perfect.",
        "The breakfast is ok. Regarding location, it is quite far from citycenter but price is cheap so it is worth.",
        "Location is excellent, 5 minutes from citycenter. There is also a metro station very close to the hotel.",
        "They said I couldn't take my dog and there were other guests with dogs! That is not fair.",
        "Very friendly staff and good cost-benefit ratio. Its location is a bit far from citycenter."],

       [1, 2]],

      ["foobar",
       [1, 2, 1, 1, 2],

       ["This hotel has beach a nice view of the citycenter. The location is perfect.",
        "The breakfast is ok. Regarding location, it is quite far from citycenter but price is cheap so it is worth.",
        "Location is excellent, 5 minutes from citycenter. There is also a metro station very close to the hotel.",
        "They said I couldn't take my dog and there were other guests with dogs! That is not fair.",
        "Very friendly staff and good cost-benefit ratio. Its location is a bit far from citycenter."],

       [1, 2]]

  ].each_with_index do |(keywords, hotel_ids, reviews, output), index|
    it "for index #{index} the output should be #{output}" do
      expect(sort_hotels(keywords, hotel_ids, reviews)).to eq(output)
    end
  end
end
