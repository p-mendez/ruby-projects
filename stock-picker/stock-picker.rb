# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing
# the best day to buy and the best day to sell. Days start at 0.

# In my own words: Write a method that takes an array, and returns a pair representing
# the best day to buy and the best day to sell.
# Constraints:
#   Buying has to happen before selling.
#   Must sell
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or
# the highest day is the first day.

# Steps I will take:
  # initialize hash with max_profit, buy_day, sell_day
  # for each day,
    # starting with the day and moving forward from that day, get the difference for each
    # subsequent day. if it's higher than the max_profit, mark the day.
    # if any day has higher profit than max, save profit, buy_day, sell_day
  # return array with buy and sell day

def stock_picker(days)
  best_so_far = { max_profit: 0 }

  days.each_index do |buy_day|
    days.each_index do |sell_day|
      profit = days[sell_day] - days[buy_day]
      if buy_day < sell_day && profit > best_so_far[:max_profit]
        best_so_far = { max_profit: profit, buy_day: buy_day, sell_day: sell_day}
      end
    end
  end

  [best_so_far[:buy_day], best_so_far[:sell_day]]
end

print stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
