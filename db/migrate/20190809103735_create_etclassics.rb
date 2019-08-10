class CreateEtclassics < ActiveRecord::Migration[5.2]
  def change
    create_table :etclassics do |t|

    	t.float :profit

      t.timestamps
    end
  end
end
