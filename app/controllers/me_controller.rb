# frozen_string_literal: true

class MeController < ApplicationController
  before_action :authenticate_user

  def index
    render json: UserBlueprint.render(current_user)
  end
end
