class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :