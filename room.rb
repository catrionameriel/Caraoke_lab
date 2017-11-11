class Room

  attr_reader :room_name, :guests, :songs, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @guests = []
    @songs = []
    @capacity = capacity
  end



  def check_in_guest(room, guest)
    if room.guests.count < room.capacity
      room.guests << guest
    else
      return "Sorry, the room has reached its capacity of #{room.capacity}."
    end
  end

  def check_out_guest(room, guest_checking_out)
    # find guest
    # push that guest into a new array
    # delete guest from room
    to_delete = []
    guest_to_remove = room.guests.find {|guest| guest == guest_checking_out}
    if guest_to_remove == nil
      return "Sorry, that customer is not checked in"
    else
    to_delete << guest_to_remove
    room.guests.delete(guest_to_remove)
    end
  end

  def add_songs(room, song)
    room.songs << song
  end



end
