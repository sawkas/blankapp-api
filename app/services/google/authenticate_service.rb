# frozen_string_literal: true

module Google
  class AuthenticateService
    def initialize(id_token)
      @id_token = id_token
    end

    def get_payload
      @payload ||= JWT.decode(id_token, nil, false)[0]&.with_indifferent_access
    rescue GoogleIDToken::ValidationError => e
      false
    end

    private

    attr_reader :id_token
  end
end
