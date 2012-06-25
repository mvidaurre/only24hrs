class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :daadline
      t.integer :priority
      t.date :completion
      t.integer :status
      t.references :focus
      t.references :goal

      t.timestamps
    end
  end
end
