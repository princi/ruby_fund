array=["a","b","c","b","b","c","a","c","d","b"]

bash = Hash.new(0)

array.each do |v|
  bash[v] += 1
end

bash.each do |k, v|
  puts "#{k} => #{v}"
end
