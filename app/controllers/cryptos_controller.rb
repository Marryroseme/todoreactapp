class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  # GET /cryptos
  # GET /cryptos.json
  def index
    @cryptos = Crypto.all
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins_search = JSON.parse(@response)
    @profit_loss = 0
  end

  # GET /cryptos/1
  # GET /cryptos/1.json
  def show
    @cryptos = Crypto.all
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins_search = JSON.parse(@response)
  end

  # GET /cryptos/new
  def new
    @crypto = Crypto.new
  end

  # GET /cryptos/1/edit
  def edit
    
  end
  


  # POST /cryptos
  # POST /cryptos.json
  def create
    @crypto = Crypto.new(crypto_params)

    respond_to do |format|
      if @crypto.save
        format.html { redirect_to @crypto, notice: 'Crypto was successfully created.' }
        format.json { render :show, status: :created, location: @crypto }
      else
        format.html { render :new }
        format.json { render json: @crypto.errors, status: :unprocessa