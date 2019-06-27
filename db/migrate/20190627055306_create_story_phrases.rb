class CreateStoryPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :story_phrases do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
