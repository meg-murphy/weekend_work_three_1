# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
 attr_accessor :power, :volume, :channel

   def initialize
     @power = false
     @volume = 0
     @channel = 1
   end

 end

class Remote
   attr_accessor :tv

   def initialize(tv)
     @tv = tv
   end

   def toggle_power
     if tv.power == false
        tv.power = true
     end
     if tv.power == true
        tv.power = false
     end
   end

   def increment_volume
     tv.volume += 1
   end

   def decrement_volume
     tv.volume -= 1
   end

   def set_channel(channel)
     tv.channel = channel
   end
end

my_tv = TV.new()
my_remote = Remote.new(my_tv)

puts my_tv.volume
my_remote.increment_volume
puts my_tv.volume

puts my_tv.power
my_remote.toggle_power
puts my_tv.power

3.times do
 my_remote.increment_volume
end
puts my_tv.volume
