team_attrs = [
#Show
    #--Request
    "moxi_works_team_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "uuid", #"String"
    "name", #"String or null"
    "email", #"String or null"
    "address1", #"String or null"
    "address2", #"String or null"
    "city", #"String or null"
    "zipcode", #"String or null"
    "state", #"String or null"
    "phone", #"String or null"
    "fax", #"String or null"
    "logo_url", #"String or null"
    "photo_url", #"String or null"
    "description", #"String or null"
    "alt_phone", #"String or null"
    "alt_email", #"String or null"
    "website_url", #"String or null"
    "active", #"Boolean"

#Index
    #--Request
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "uuid", #"String"
    "name", #"String or null"
    "email", #"String or null"
    "address1", #"String or null"
    "address2", #"String or null"
    "city", #"String or null"
    "zipcode", #"String or null"
    "state", #"String or null"
    "phone", #"String or null"
    "fax", #"String or null"
    "logo_url", #"String or null"
    "photo_url", #"String or null"
    "description", #"String or null"
    "alt_phone", #"String or null"
    "alt_email", #"String or null"
    "website_url", #"String or null"
    "active" #"Boolean"
]

team_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("Team")
    new_endpoints = existing_endpoints + ["Team"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end