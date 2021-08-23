class CreateAutos < ActiveRecord::Migration[6.1]
  def change
    create_table :autos do |t|
      t.string :name
      t.string :city
      t.string :date

      t.timestamps
    end
  end
end
