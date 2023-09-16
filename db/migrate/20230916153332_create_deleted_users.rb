class CreateDeletedUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :deleted_users do |t|
      t.string :name, null: false

      t.timestamps
      t.datetime :deleted_at, null: false
    end
  end
end
