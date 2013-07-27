class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :name
      t.string :criteria

      t.timestamps
    end
  end
end
