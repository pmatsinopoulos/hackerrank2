def the_birthday_bar(squares, day_of_month, month_of_year)
  result = 0
  i = 0
  while i < squares.length - month_of_year + 1
    result += 1 if squares[i, month_of_year].reduce(&:+) == day_of_month
    i += 1
  end
  result
end
