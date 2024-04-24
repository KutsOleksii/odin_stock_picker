EXAMPLE = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  @array = array || EXAMPLE
  max_profit_days = [0, 0]

  @array.size.times do |i|
    @array.size.times do |ii|
      next if ii <= i
      max_profit_days = [i, ii] if profit([i, ii]) > profit(max_profit_days)
    end
  end

  max_profit_days
end

def profit(days)
  res = @array[days.last] - @array[days.first]
end

# Usage: ruby stock_picker.rb "7, 12, 8, 4, 5, 6, 9"
p stock_picker(ARGV[0]&.split(",")&.map(&:to_i))
