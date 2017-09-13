json.extract! company, :id, :name, :owner_id, :company_number, :status, :ourgoal, :whatwedo, :created_at, :updated_at
json.url company_url(company, format: :json)
