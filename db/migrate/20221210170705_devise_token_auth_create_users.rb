# frozen_string_literal: true

class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tokens, :json
  end
end
