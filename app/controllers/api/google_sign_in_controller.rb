# frozen_string_literal: true

module Api
  class GoogleSignInController < DeviseTokenAuth::SessionsController
    def auth
      @resource = Users::ProviderAuthenticateService.new(:google, params[:id_token]).call

      if @resource
        create_and_assign_token

        sign_in(:user, @resource, store: false, bypass: false)

        render_create_success
      else
        render_create_error_bad_credentials
      end
    end

    private

    def devise_mapping
      :user
    end
  end
end
