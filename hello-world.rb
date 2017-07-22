input = [8, 300, 41, 7]

puts input.permutation.map { |x| x.join.to_i }.max

