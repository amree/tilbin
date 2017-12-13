class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @tils = Til.all
  end
end
