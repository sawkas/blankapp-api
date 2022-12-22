module Google
  class AuthenticateService
    GOOGLE_CLIENT_ID = ENV['GOOGLE_OAUTH_CLIENT_ID']

    def initialize(id_token)
      @id_token = id_token
    end

    def get_payload
      @payload ||= validator.check(id_token, GOOGLE_CLIENT_ID).with_indifferent_access
    rescue GoogleIDToken::ValidationError => e
      false
    end

    private

    attr_reader :id_token

    def validator
      @validator ||= GoogleIDToken::Validator.new
    end
  end
end
