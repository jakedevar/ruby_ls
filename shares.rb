def shares(price_of_share, money_to_buy)
	how_many_shares = 0
	amount_of_money_left = money_to_buy
	loop do 
		break if amount_of_money_left.round(7) <= 0
		amount_of_money_left -= price_of_share
		how_many_shares += 1
	end
	puts ">> you have #{how_many_shares} shares of SHIB at #{price_of_share} <<".center(80)
	puts ""
	how_many_shares
end

def current_return_on_investment(price_of_share, money_to_buy, todays_price)
	shares = shares(price_of_share, money_to_buy)
	puts ">> #{(shares * todays_price).round(2)} <<".center(80)
end



current_return_on_investment(0.000007316, 100, 0.50)