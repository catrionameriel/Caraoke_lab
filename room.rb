class Room

  # ENTRY_FEE = 10 <- Why didn't this work?

  attr_reader :room_name, :guests, :songs, :capacity, :entry_fee

  def initialize(room_name, capacity)
    @room_name = room_name
    @guests = []
    @songs = []
    @capacity = capacity
    @entry_fee = 10
  end


  def enough_room?(room)
    room.guests.count < room.capacity
  end


  def check_in_guest(room, guest)
    return "Sorry, the room has reached its capacity of #{room.capacity}." if !(enough_room?(room))
    return "Sorry, you can't come in. Come back when you have more money" if !(guest.guest_has_entry_fee?(guest, room))

    room.guests << guest
    guest.pay_for_room(guest, room)
  end


  def check_out_guest(room, guest_checking_out)
    # find guest
    # push that guest into a new array
    # delete guest from room
    to_delete = []
    guest_to_remove = room.guests.find {|guest| guest == guest_checking_out}
    return "Sorry, that customer is not checked in" if guest_to_remove == nil

    to_delete << guest_to_remove
    room.guests.delete(guest_to_remove)
  end


  def add_songs(room, song)
    room.songs << song
  end




end
