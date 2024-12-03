class CreateAdminCatagories < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_catagories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
