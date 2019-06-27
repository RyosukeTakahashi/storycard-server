class CreateLogicalPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :logical_phrases do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
