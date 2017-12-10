class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.text :description
      t.text :languages
      t.integer :screenshots
    end
  end
end
