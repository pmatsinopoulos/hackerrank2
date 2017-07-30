def do_class?(k, arrival_times)
  arrival_times.select { |a| a <= 0 }.size >= k
end

number_of_test_cases = gets.to_i
number_of_test_cases.times do
  n, k = gets.chomp.split(' ').map(&:to_i)
  arrival_times = gets.chomp.split(' ').map(&:to_i)
  puts "#{do_class?(k, arrival_times) ? 'NO' : 'YES'}"
end
