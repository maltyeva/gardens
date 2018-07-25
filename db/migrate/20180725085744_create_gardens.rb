class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
