class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :title
      t.string :document_type
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
