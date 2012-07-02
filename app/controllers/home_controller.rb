class HomeController < ApplicationController
  def index
    if current_user || current_admin
      redirect_to dashboard_index_path
    else
      render
    end
  end
end
