class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cows = Cow.all.shuffle.first(3)
  end
end
