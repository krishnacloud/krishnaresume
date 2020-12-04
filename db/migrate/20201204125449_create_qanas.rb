class CreateQanas < ActiveRecord::Migration[6.0]
  def change
    create_table :qanas do |t|
      t.string :topic
      t.string :question
      t.string :answer
      t.datetime :createddate
      t.string :version

      t.timestamps
    end
  end
end
