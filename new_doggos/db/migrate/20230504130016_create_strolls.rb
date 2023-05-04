class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.timestamps
    end
    add_reference :strolls, :dog, foreign_key: true
    add_reference :strolls, :dogsitter, foreign_key: true
  end
end
