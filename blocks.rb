def form &block
  puts "<form>"
  yield
  puts "</form>"
end

def paragraph text
  puts "<p>" + text + "</p>"
end

def quote text
  puts "<quote>" + text + "<quote>"
end

form do
paragraph "This is paragraph."
quote "This is qoute"
end


