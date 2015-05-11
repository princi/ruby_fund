print "Tell me your car model:"
car_model = gets.strip

output = case car_model
            when "fiesta" then "ford"
            when "cruze" then "corolla"
            when "swift" then "maruti"
            when "xuv" then "toyoto"
            else "unknown model"
            end

print "the car company for #{car_model} is ",output

