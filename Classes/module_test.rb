module Speak
  def speak(something)
    puts something
  end
end

class Person
  include Speak
end

nick = Person.new
nick.speak("Hello")