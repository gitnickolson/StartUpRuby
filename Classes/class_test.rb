class MyCar
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def current_speed
    puts "You are going at a speed of #{@current_speed} mph."
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate to a speed of #{@current_speed} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You slacken down to #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "You shut the car off and decreased your speed to #{@current_speed} mph."
  end

  garry = MyCar.new("2014", "Opel", "Red")
end
