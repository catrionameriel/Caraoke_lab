class Guest

  attr_reader :name, :favourite_song
  attr_accessor :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end


  def guest_has_entry_fee?(room)
    @wallet >= room.entry_fee
  end

  def pay_for_room(room)
      @wallet -= room.entry_fee
  end

  def hears_favourite_song(room)
    has_favourite_song = (room.songs).find {|song| song.title == @favourite_song}
    return "Yasssssss, this is my jam!" if has_favourite_song
  end

end
