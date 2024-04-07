class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :title
      t.string :document_type
      t.text :content
      t.string :status

      t.timestamps
    end
    add_index :documents, :user_id
  end
end
