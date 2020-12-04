class CreateGrokkings < ActiveRecord::Migration[6.0]
  def change
    create_table :grokkings do |t|
      t.string :topic
      t.text :article
      t.datetime :creationdate

      t.timestamps
    end
  end
end
