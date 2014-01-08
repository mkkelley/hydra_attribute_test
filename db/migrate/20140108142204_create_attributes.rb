class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :entity_type
      t.string :backend_type
      t.integer :hydra_attr_id

      t.timestamps
    end
  end
end
