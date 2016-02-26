class CreateErrands < ActiveRecord::Migration
  def change
    create_table :errands do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
