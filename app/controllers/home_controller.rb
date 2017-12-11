class HomeController < ApplicationController
  def index
    @tils = Til.all
  end
end
