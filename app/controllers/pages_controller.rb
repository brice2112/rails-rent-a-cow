class PagesController < ApplicationController
  def home
    @cows = Cow.all.shuffle.first(3)
  end
end
