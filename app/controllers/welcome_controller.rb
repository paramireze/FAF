class WelcomeController < ApplicationController
  def index
    @heading = "Welcome World"
    @body = "this is the beginnings of a beautiful relationship"
    @categories = Category.all
    @paul = User.find(1)
  end
end