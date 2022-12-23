# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false

      t.string :full_name
      t.string :uid
      t.string :provider
      t.string :avatar_url

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, %i[uid provider], unique: true
  end
end
