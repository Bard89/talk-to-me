class CreateVoices < ActiveRecord::Migration[7.1]
  def change
    create_table :voices do |t|
      t.references :document, null: false, foreign_key: true
      t.binary :audio, null: false
      t.string :voice_type
      t.string :status

      t.timestamps
    end
  end
end
