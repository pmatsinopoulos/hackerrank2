OPENING_SYMBOLS = {
  '}' => '{',
  ')' => '(',
  ']' => '['
}

def balanced_brackets(input)
  i = 0
  stack = []
  while i < input.length
    if ['{', '(', '['].include?(input[i])
      stack.push(input[i])
    elsif ['}', ')', ']'].include?(input[i])
      opening = stack.pop
      unless opening == OPENING_SYMBOLS[input[i]]
        return 'NO'
      end
    end
    i += 1
  end
  stack.size.zero? ? 'YES' : 'NO'
end
