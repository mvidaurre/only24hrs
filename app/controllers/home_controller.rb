class HomeController < ApplicationController
  def index
    if current_user
      render "home/todo"
    else
      render
    end
  end
end
