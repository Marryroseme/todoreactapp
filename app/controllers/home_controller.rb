
class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins = JSON.parse(@response)
    @coins_arr = ["BTC", "LSK", "ETH", "ETC", "XRP"]
  end
  
  def about
  end
  
  def search
    
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins_search = JSON.parse(@response)
    
    
    @symbol = params[:sym]
    @name = params[:curr_name]