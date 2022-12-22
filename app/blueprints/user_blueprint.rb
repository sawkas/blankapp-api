# frozen_string_literal: true

class UserBlueprint < BaseBlueprint
  identifier :id

  fields :full_name, :email
end
