# frozen_string_literal: true

class MeController < AuthenticatedUserBaseController
  def index
    render json: UserBlueprint.render(current_user)
  end
end
