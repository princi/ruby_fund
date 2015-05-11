fruit = ->(str){["banana","apple","grape"].include? str}
vegetable = ->(str){["potato","carrot","brinjal","turnip"].include? str}
meat = ->(str){["veel","pork","chicken"].include? str}
["potato", "apple", "chicken", "mack"].each do |food|
  case food
  when fruit
    puts food + " is a fruit"
  when vegetable
    puts food + " is a vegetable"
  when meat
    puts food + " is a meat"
  else
    puts "i don't know what " + food + "is"
  end
end
