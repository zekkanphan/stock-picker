def stock_picker (stock_prices)
  best_day = 0
  best_buy_price = 0
  best_day_2 = 0
  best_sell_price = 0
  best_profit = 0
  stock_prices.each_with_index do |price, index|
    stock_prices.each_with_index do |price_2, index_2|
      if index_2 > index
        if price_2 - price > best_profit
          best_day = index
          best_buy_price = price
          best_day_2 = index_2
          best_sell_price = price_2
          best_profit = price_2 - price
        end
      end
    end
  end
  buy_sell = [best_day, best_day_2]
  return buy_sell
end

def get_stock_prices 
  puts "Please enter the stock prices separated by a space. Press enter when you are done."
  stock_prices = gets.chomp.split(" ")
  stock_prices.map! {|price| price.to_i}
  p stock_prices
  return stock_prices
end

p stock_picker(get_stock_prices)
