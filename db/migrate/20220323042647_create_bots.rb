class CreateBots < ActiveRecord::Migration[6.0]
  def change
    create_table :bots do |t|
      t.string :phrases
      t.string :avatar
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
