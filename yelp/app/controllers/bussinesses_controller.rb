class BussinessesController < ApplicationController
  def index
    @bussinesses = Bussiness.all
  end
end