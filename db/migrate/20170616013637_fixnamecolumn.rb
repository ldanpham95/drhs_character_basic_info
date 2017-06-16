class Fixnamecolumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :character_infos, :dislike, :dislikes
  end
end
