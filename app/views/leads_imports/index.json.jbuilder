json.array!(@leads_imports) do |leads_import|
  json.extract! leads_import, :id, :title, :name, :first_name, :language, :description, :location, :email, :phone, :URL, :note, :image_URL, :role, :company, :from_date, :job_location, :job_desc, :industry, :cy_number, :cy_street, :cy_address_info, :zip, :PObox, :cy_state, :cy_country
  json.url leads_import_url(leads_import, format: :json)
end
