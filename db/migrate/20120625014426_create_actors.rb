class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.references :task
      t.references :subject, :polymorphic => true

      t.timestamps
    end
  end
end
