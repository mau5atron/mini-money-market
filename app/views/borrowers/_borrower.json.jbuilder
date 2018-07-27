json.extract! borrower, :id, :first_name, :last_name, :email, :phone, :street, :state, :zip, :company_name, :employer_street, :employer_state, :employer_zip, :current_position, :start_date, :salary, :created_at, :updated_at
json.url borrower_url(borrower, format: :json)
