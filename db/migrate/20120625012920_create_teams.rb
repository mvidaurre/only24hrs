class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :user
      t.references :goal

      t.timestamps
    end
  end
end
