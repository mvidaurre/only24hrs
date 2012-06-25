class HomeController < ApplicationController
  def index
    if current_user
      redirect_to dashboard_index_path
    else
      render
    end
  end
end
