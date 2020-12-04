class CreateAboutmes < ActiveRecord::Migration[6.0]
  def change
    create_table :aboutmes do |t|
      t.string :Name
      t.text :bio
      t.datetime :creationdateandtime

      t.timestamps
    end
  end
end
