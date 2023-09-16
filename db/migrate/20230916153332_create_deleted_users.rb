class CreateDeletedUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :deleted_users do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
