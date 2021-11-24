class HelloController < ApplicationController
  def index
    @hellos = Hello.all
  end
end
