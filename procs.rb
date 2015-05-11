def form & block
  puts "<form>"
  yield
  puts "</form>"
end

def form_with_proc p
  puts "<p>"
  p.call true
  puts "</p>"
end

def paragraph text
  puts "<p>" + text + "</p>"
end

def quote text
  puts "<quote>" + text + "</quote>"
end

#form do
 # paragraph "this is para"
 # quote "this is quote"
#end

myproc = lambda do |only_quotes|
  p only_quotes
  paragraph "this is para" unless only_quotes
  quote "this is quote"
end

form_with_proc myproc

