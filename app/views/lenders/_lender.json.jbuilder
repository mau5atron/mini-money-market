json.extract! lender, :id, :first_name, :last_name, :email, :phone, :street, :state, :zip, :created_at, :updated_at
json.url lender_url(lender, format: :json)
