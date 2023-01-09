count = gets.to_i

class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def get_total_price(count)
    if count <= 0
      return '正の整数を入力する必要があります'
    elsif count < 3
      total_price = count * price
    elsif count >= 3
      total_price = count * price - 10_000
    end

    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
puts menu1.get_total_price(count)

# menu1に対してget_total_priceメソッドを呼び出してください
