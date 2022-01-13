json.extract! payment, :id, :date, :paid, :report_number, :description, :sum, :code_kfk, :code_kek, :created_at, :updated_at
json.url payment_url(payment, format: :json)
