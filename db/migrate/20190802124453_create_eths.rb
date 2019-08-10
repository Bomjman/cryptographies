class CreateEths < ActiveRecord::Migration[5.2]
  def change
    create_table :eths do |t|
      t.float :profit

      t.timestamps
    end
  end
end
