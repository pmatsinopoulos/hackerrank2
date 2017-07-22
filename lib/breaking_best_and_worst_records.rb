def breaking_best_and_worst_records(scores)
  return [] if scores.nil? || scores.empty?
  lowest = scores[0]
  highest = scores[0]
  break_lowest = 0
  break_highest = 0
  i = 1
  while i < scores.length
    if scores[i] < lowest
      lowest = scores[i]
      break_lowest += 1
    end
    if scores[i] > highest
      highest = scores[i]
      break_highest += 1
    end
    i += 1
  end
  [break_highest, break_lowest]
end

# n = gets.to_i
# scores = gets.chomp.split(' ').map(&:to_i)
# puts breaking_best_and_worst_records(scores).join(' ')
