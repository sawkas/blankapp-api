# frozen_string_literal: true

class AuthenticatedUserBaseController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :authenticate_user!
end
