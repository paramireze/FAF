class JokesController < ApplicationController
  def index
    @joke = Joke.order('RANDOM()').first
  end
end