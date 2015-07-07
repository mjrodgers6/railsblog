class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :identity
      t.string :power, :array => true
      t.string :contact
      t.timestamps null: false

    end
  end
end
