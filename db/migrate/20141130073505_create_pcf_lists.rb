class CreatePcfLists < ActiveRecord::Migration
  def change
    create_table :pcf_lists do |t|
      t.string :title
      t.string :author
      t.datetime :Update_time
      t.text :content

      t.timestamps
    end
  end
end
