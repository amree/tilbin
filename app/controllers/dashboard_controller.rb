class DashboardController < ApplicationController
  def index
    @tils = Til.all
  end
end
