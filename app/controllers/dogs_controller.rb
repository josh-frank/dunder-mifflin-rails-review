class DogsController < ApplicationController
  
  def index
    @all_dogs = Dog.all
  end

  def show
    @this_dog = Dog.find( params[ :id ] )
  end

end
