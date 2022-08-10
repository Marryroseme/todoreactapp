class CreateCryptos < ActiveRecord::Migration
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.