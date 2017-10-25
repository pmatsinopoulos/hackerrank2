# keywords is a space separated words.
# hotel_ids is an array that holds the hotel identifiers.
#   hotel_ids[0] is the hotel identifier for the first hotel.
#   hotel_ids[1] is the hotel identifier for the second hotel.
#
#
# reviews is an array of reviews and has the same size like the hotel_ids
#   reviews[0] is a review for the hotel with identifier stored in hotel_ids[0]
#   reviews[1] is a review for the hotel with identifier stored in hotel_ids[1]
#
#   hotel_ids[i] may contain the same value as another entry, In that case,
#   it means that I can have multiple reviews for this hotel id.
#
def sort_hotels(keywords, hotel_ids, reviews)
  result = {}
  # initialize with 0 sums
  hotel_ids.uniq.each do |hotel_id|
    result[hotel_id] = 0
  end

  reviews.each_with_index do |review, index|
    dictionary = review.split(/\W+/).reduce({}) do |res, element|
      element = element.downcase
      if res.has_key?(element)
        res[element] += 1
      else
        res[element] = 1
      end
      res
    end

    keywords.split(' ').each do |keyword|
      if dictionary.has_key?(keyword)
        result[hotel_ids[index]] += 1
      end
    end
  end
  result.to_a.sort {|a, b| a[1] == b[1] ? a[0] <=> b[0] : b[1] <=> a[1]}.map {|element| element.first}
end
