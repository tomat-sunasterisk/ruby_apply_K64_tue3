class Menu
  attr_accessor :name
  attr_accessor :price
  # attr_accessor :count
  # return "#{self.name} #{self.price}vnd"
  def get_total_price
    # total_price = price * count
    # if count >3
    #   total_price = total_price-10_000
    "#{name} #{price}vnd"
  end
end

class Drink < Menu
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

menu2 = Menu.new
menu2.name = 'Bún chả'
menu2.price = 40_000

menu3 = Menu.new
menu3.name = 'Bánh mì'
menu3.price = 20_000

drink1 = Drink.new
drink1.name = 'Trà(Sサイズ)'
drink1.price = 5_000

drink2 = Drink.new
drink2.name = 'Trà(Mサイズ)'
drink2.price = 10_000

puts menu1.get_total_price
puts menu2.get_total_price
puts menu3.get_total_price
puts drink1.get_total_price
puts drink2.get_total_price
