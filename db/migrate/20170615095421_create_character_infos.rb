class CreateCharacterInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :character_infos do |t|
      t.string :name
      t.string :shsl
      t.integer :height
      t.integer :weight
      t.integer :chest
      t.string :bloodtype
      t.string :birthday
      t.text :likes
      t.text :dislike
      t.string :eyecolor
      t.string :haircolor
      t.text :associates
      t.text :nicknames

      t.timestamps
    end
  end
end
