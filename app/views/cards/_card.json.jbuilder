json.extract! card, :id, :card_id, :user_id, :card_num, :created_at, :updated_at
json.url card_url(card, format: :json)
