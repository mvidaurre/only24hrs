class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.references :task
      t.time :starts
      t.time :ends
      t.integer :effort
      t.references :subject

      t.timestamps
    end
  end
end
