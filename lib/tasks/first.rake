
desc "first task"

task :hello do 
	 def bingo
       require 'httparty'
       require 'cryptocompare'
        @difficulty = HTTParty.get('https://eth.ezil.me/api/stats')['nodes'].first['difficulty'].to_i
        @exchange = Cryptocompare::Price.find('ETH', 'USDT')['ETH']['USDT'].to_f

        b = 2
        l = 13.48
        d = @difficulty
        e = @exchange
        hrt = d/l
        h = 10**9
        t = 24*60*60
        @p = (((h/hrt)*b*t)/l)*e


         Eth.create(profit: @p)
    
        
    end
end
