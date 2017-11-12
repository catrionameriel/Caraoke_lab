class Guest

  attr_reader :name, :favourite_song
  attr_accessor :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end


  def guest_has_entry_fee?(guest, room)
    guest.wallet >= room.entry_fee
  end

  def pay_for_room(guest, room)
      guest.wallet -= room.entry_fee
  end

  def hears_favourite_song(room, guest)
    has_favourite_song = (room.songs).find {|song| song.title == guest.favourite_song}
    return "Yasssssss, this is my jam!" if has_favourite_song
  end

end
