class WelcomeController < ApplicationController
  def index
    @heading = "Welcome World"
    @body = "this is the beginnings of a great relationship"
  end
end