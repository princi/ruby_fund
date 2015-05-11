age = gets.to_i

output = if age < 10
         "You are young"

        elsif age < 19
         "You are teenager"

        elsif age < 40
         "You are adult"

        elsif age < 80
         "You are old"

        else
         "Is That guy dead?"
        end

#variable = age<45 ? "adult" : "old"
#dosomething unless condition =+ false
puts output

