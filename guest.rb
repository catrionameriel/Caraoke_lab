class Guest

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_for_room(guest, room)
    room_fee = room.entry_fee
    if guest.wallet >= room_fee
      guest.wallet -= room_fee 
    else
      return "Sorry, you can't come in. Come back when you have more money"
    end
  end

end
