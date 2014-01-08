class CreateEmployees < ActiveRecord::Migration
  def up
    create_hydra_entity :employees do |t|

      t.timestamps
    end
  end

  def down
    drop_hydra_entity :employees
  end
end
