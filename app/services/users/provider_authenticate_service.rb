module Users
  class ProviderAuthenticateService
    def initialize(provider, token)
      @provider = provider
      @token = token
    end

    def call
      case provider
      when :google
        authenticate_google(token)
      else
        raise 'Wrong provider'
      end
    end

    private

    def authenticate_google(token)
      payload = Google::AuthenticateService.new(token).get_payload

      User.find_or_create_by!(uid: payload[:sub], provider: :google) do |user|
        user.email = payload[:email]
        user.full_name = payload[:name]
        user.avatar_url = payload[:picture]
        user.password = Devise.friendly_token[0, 20]
      end
    end

    attr_reader :provider, :token
  end
end
