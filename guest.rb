class Guest

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_for_room(guest, room)
    room_fee = room.entry_fee
    guest.wallet -= room_fee
  end

end
