class HomeController < ApplicationController
  def index
    render json: { success: true, response: { test: :test } }
  end
end
