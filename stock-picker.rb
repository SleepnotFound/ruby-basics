def stock_picker(market)
    best = [0, 0]
    wallet = 0

    market.each_with_index do |buy, buy_date|
        market.each_with_index do |sell, sell_date|
            profit = sell - buy
            if profit >= wallet && sell_date > buy_date
                wallet = profit
                best = [buy_date, sell_date]
            end
        end
    end
    p best
end

stock_picker([17,3,6,9,15,8,6,1,10])