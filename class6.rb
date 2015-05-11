class Car
  attr_reader :state
  def initialize engine,tires
    @engine = engine
    @tires = tires
  end
  def start
    @state = "Running"
    p "Car has started"

  end
  def stop
    @state = "Stopped"
    p "Car has stopped"
  end


end

car = Car.new "My beautiful engines", [1,2,3,4]

car.start
p "The current car status is #{car.state}"
car.stop
p "The current car status is #{car.state}"

