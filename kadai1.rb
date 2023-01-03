class Menu
  attr_accessor :name
  attr_accessor :price
   # get_total_priceメソッドを定義してください
 
 def get_total_price(count)
   if count<3
     total_price = self.price * count
   else count>=3
     total_price = self.price * count - 10000
     end
    #  puts "Phở: #{total_price} vnd"
    return "#{self.name} #{total_price}vnd"
  end
 end
 puts "pho.....kudasai"
 count = gets.to_i
 
 menu1 = Menu.new
 menu1.name = "Phở"
 menu1.price = 30000


# menu1に対してget_total_priceメソッドを呼び出してください

puts menu1.get_total_price(count)