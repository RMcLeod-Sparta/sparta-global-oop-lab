require_relative '../house'
require_relative '../room_type/rooms'
# Our dog class/template will inherit from animal and be affected by animal types
class Bedroom < House
  include Rooms

  def clean
    puts "The house got cleaned."
  end

  def number_of_rooms
    DinningRoom.eatingRoom
  end

  def roof(arg1, arg2)
    puts "This is the 1st my super_duper instance method which we inherit from house."
    puts "Args in super class #{arg1 ? arg1 : "noarg1"} #{arg2 ? arg2 : "noarg2"}"

    super
  end


end

pieCottage = Bedroom.new
pieCottage.clean
pieCottage.number_of_rooms
pieCottage.roof("This is arg1", "This is arg2")
