class EtclassicsController < ApplicationController
	def index 
      require 'httparty'
      require 'cryptocompare'
        @difficulty2 = HTTParty.get('https://etc.2miners.com/api/stats')['nodes'].first['difficulty'].to_i
        @exchange2 = Cryptocompare::Price.find('ETC', 'USDT')['ETC']['USDT'].to_f

        b2 = 379/100
        l2 = 13.95
        d2 = @difficulty2
        e2 = @exchange2
        hrt2 = d2/l2
        h2 = 10**9
        t2 = 24*60*60
        @f = (((h2/hrt2)*b2*t2)/l2)*e2


        Etclassic.create(profit: @f)

        @etclassics = Etclassic.all
        @etclassics.each do |etclassic|
        @etclassics.map {|el| {created_at: el.created_at, profit: el.profit}}
      end
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

        @eths = Eth.all
        @eths.each do |eth|
        @eths.map {|el| {created_at: el.created_at, profit: el.profit}}
        end  
    end
  end
	