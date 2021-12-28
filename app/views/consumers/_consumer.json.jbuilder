json.extract! consumer, :id, :fullName, :passportNumber, :identityCode, :house, :houseSection, :apartment, :created_at, :updated_at
json.url consumer_url(consumer, format: :json)
