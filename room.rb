class Room

  attr_reader :room_name, :guests, :songs

  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @songs = []
  end



  def check_in_guest(room, guest)
    room.guests << guest
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
