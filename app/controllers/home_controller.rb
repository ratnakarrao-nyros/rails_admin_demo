class HomeController < ApplicationController
  # GET /organizations
  # GET /organizations.json
  def index
    redirect_to '/admin'
  end

end
