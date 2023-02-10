class NumbersController < ApplicationController
  def index
    @numbers = Number.all
    @numbers_count = @numbers.length
  end

  def add
    Number.new(value: rand(1..1000)).save
    redirect_back(fallback_location: root_path)
  end
end
