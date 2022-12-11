module Api
  class MeController < BaseController
    def index
      render json: UserBlueprint.render(current_user)
    end
  end
end
