json.extract! character_info, :id, :name, :shsl, :height, :weight, :chest, :bloodtype, :birthday, :likes, :dislike, :eyecolor, :haircolor, :associates, :nicknames, :created_at, :updated_at
json.url character_info_url(character_info, format: :json)
