# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Data