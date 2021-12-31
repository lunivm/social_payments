json.extract! consumer, :id, :full_name, :passport_number, :identity_code, :street_id, :house, :house_section, :apartment, :created_at, :updated_at
json.url consumer_url(consumer, format: :json)
