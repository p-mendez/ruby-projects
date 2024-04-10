def stock_picker(days)
  # variables
  best_profit = 0
  best_buy_day = 0    # by index
  best_sell_day = 0   # by index

  # iterate through each day checking for if profit is bigger than best profit
  days.each_with_index do |buy_value, current_day|
    days_left = days[current_day..-1]   # as an array
    current_profit = days_left.map do |sell_value|
      sell_value - buy_value
    end.max                               # gets max value from array of all profits

    if current_profit > best_profit
      best_profit = current_profit
      best_buy_day = current_day
      best_sell_day = days_left.index(days_left.max) + current_day  # index + offset
    end
  end

  [best_buy_day, best_sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]   for a profit of $15 - $3 == $12
