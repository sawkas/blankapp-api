# frozen_string_literal: true

class GoogleSignInController < ApplicationController
  def auth
    user = Users::ProviderAuthenticateService.new(:google, params[:id_token]).call

    if user
      token = Knock::AuthToken.new(payload: { sub: user.id }).token

      render json: { token: token, user: UserBlueprint.render_as_hash(user) }
    else
      render :unauthorized
    end
  end
end
