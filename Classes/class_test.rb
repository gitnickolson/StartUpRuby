module Towable
  def can_tow(pounds)
    pounds < 2000
  end
end

class Student
  attr_accessor :name

  def initialize(name, grade)
  @name = name
  @grade = grade
  end

  def better_grade_than(name)
    if name.get_grade > @grade
      puts "Well done! #{name}: #{name.get_grade}, #{@name}: #{@grade}"
    end
  end

  def to_s
    "#{name}"
  end

protected

  def get_grade
    @grade
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  @@vehicle_count = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@vehicle_count += 1
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
    puts "You shut the vehicle off and decreased your speed to #{@current_speed} mph."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def spray_paint(color)
    previous = self.color
    self.color = color
    puts "You changed the color of your vehicle from #{previous} to #{self.color}"
  end

  def to_s
    "#{year}, #{model}, #{color}"
  end

  def self.how_many_vehicles?
    puts "There are currently #{@@vehicle_count} active instances of the Vehicle class"
  end

  def age
    determine_time
  end

  private

  def determine_time
    puts Time.now.year - self.year
  end
end

class MyCar < Vehicle
  TYPE = "Car"

  def initialize(year, model, color)
    super
  end
end

class MyTruck < Vehicle
  include Towable
  TYPE = "Truck"

  def initialize(year, model, color)
    super
  end
end

garry = MyCar.new(2014, "Opel", "Red")
sponge = MyTruck.new(2008, "Mitsubishi", "Black")
garry.speed_up(20)
garry.brake(11)
garry.shut_off
garry.spray_paint("White")
sponge.speed_up(169)
sponge.brake(22)
sponge.shut_off
sponge.spray_paint("Blue")
garry.current_speed
sponge.current_speed
Vehicle.how_many_vehicles?

MyCar.gas_mileage(41, 1231)
MyTruck.gas_mileage(23, 234)
puts garry
puts sponge

puts "--- MyCar method lookup ---"
p MyCar.ancestors
puts "--- MyTruck method lookup ---"
p MyTruck.ancestors
puts "--- Vehicle method lookup ---"
p Vehicle.ancestors

sponge.age

mike = Student.new("mike", 2)
jarry = Student.new("jarry", 5)

puts mike
puts jarry
mike.better_grade_than(jarry)

# Wohin mit dem initializer?
# ich habe "self-struggles"
# warum will age nicht?
# @@, @?
# protected