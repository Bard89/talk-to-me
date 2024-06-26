class CreateTranscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :transcriptions do |t|
      t.integer :document_id
      t.string :title, null: false
      t.text :text

      t.timestamps
    end
  end
end
