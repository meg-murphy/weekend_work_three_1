# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

test_reservation = HotelReservation.new(customer_name: "Meg", date: "11/22/16", room_number: 5)
puts "TESTING change room_number..."
# p test_reservation.room_number
test_reservation.room_number = 27
puts test_reservation.room_number

puts "TESTING add_a_fridge..."
# p test_reservation.amenities
test_reservation.add_a_fridge
puts test_reservation.amenities

puts "TESTING add_a_crib..."
# p test_reservation.amenities
test_reservation.add_a_crib
puts test_reservation.amenities

puts "TESTING add_a_custom_amenity"
# p test_reservation.amenities
test_reservation.add_a_custom_amenity("bed")
puts test_reservation.amenities
# p test_reservation.amenities
