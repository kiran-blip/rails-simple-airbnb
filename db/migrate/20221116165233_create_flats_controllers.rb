class CreateFlatsControllers < ActiveRecord::Migration[7.0]
  def change
    create_table :flats_controllers do |t|

      t.timestamps
    end
  end
end
