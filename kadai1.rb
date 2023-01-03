class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  
  def get_total_price(count)
    if count >= 3
      total_price = count*price - 10000
    else
      total_price = count*price
    end

   return "#{self.name} #{total_price}vnd"
 end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

# menu1に対してget_total_priceメソッドを呼び出してください
print ("Nhap count >")
count = gets.to_i
puts (menu1.get_total_price(count))
