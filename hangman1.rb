words = ["man", "women", "country", "world", "fizzy", "laptop", "bottle", "computer"]
total_chances = 12
wrong_try = 0
right_guess = ''
hanged = <<HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
HANG
survibed = <<WIN
   (@)
  ^\\|
    |/^
____|_____
WIN

word = words[rand(words.length) - 1]
puts word


def get_placeholder sample_word,guessed_words
  placeholder = ''
  sample_word.chars { |char|
    placeholder += (guessed_words.include? char)? char : '#'
     }

  placeholder
end

puts `clear`
puts "Guess what the number is:" + get_placeholder(word,'')


while true
  puts "Enter word [#{total_chances - wrong_try} chances left]:"
  char = gets.chomp
  puts `clear`

  if word.include? char
    if (right_guess.include? char)
      puts char + "in already added!"
      puts "try another:" + get_placeholder(word,right_guess)
    else
      right_guess = right_guess + char
      placeholder = get_placeholder(word,right_guess)

     puts "Great!" + placeholder

    end
      unless placeholder.include? '#'
        puts "You survibed"
        puts survibed
      break
      end

  else
      puts "Sorry! this #{char} is not valid"
      wrong_try += 1
  end

    if (wrong_try == total_chances)
      puts "You hanged!"
      puts hanged
    else
      puts "try another": get_placeholder(word,right_guess)
    end


end
