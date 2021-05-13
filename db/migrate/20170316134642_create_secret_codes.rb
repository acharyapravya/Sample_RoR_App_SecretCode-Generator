class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
      t.string :code
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :secret_codes, :users
  end
end
