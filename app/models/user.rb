# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  include DeviseTokenAuth::Concerns::User
end
