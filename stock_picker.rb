def stock_picker(stocks)
    newHash = {}
    stocks.each.with_index do |stock_b, b_idx|
        sell = stocks.last(stocks.length - b_idx)
        sell.each do |stock_s|
            key = stock_s - stock_b
            newHash[key] = [b_idx,stocks.index(stock_s)]
        end
    end
    newHash[newHash.keys.sort.last]
end
p stock_picker([17,3,6,9,15,8,6,1,10])