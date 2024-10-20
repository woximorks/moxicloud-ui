company_attrs = [
#Show
    #--Request
    "moxi_works_company_id", #*
    #--Response
    "moxi_works_company_id", #"String"
    "name", #"String"
    "numeric_id", #"String"
    "client_company_id", #"String"
    "partners", #"Array"
    "public_partner_attrs", #"Hash or null"

#Index
    #--Request (no content)
    #--Response
    "moxi_works_company_id", #"String"
    "name", #"String"
    "numeric_id", #"String"
    "client_company_id", #"String"
    "public_partner_attrs", #"Hash or null"

#Search
    #--Request
    "per_page", #"Integer"
    "page_number", #"Integer"
    "parent_company_id", #"String"
    "show_paging_totals", #"Boolean"
    #--Response
    "name", #"String"
    "numeric_id", #"String"
    "client_company_id", #"String"
    "public_partner_attrs" #"Hash or null"
]

company_attrs.each do |attr_title|
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
    # Get existing endpoints or initialize an empty array
    existing_endpoints = associated_attr.associated_endpoints || []
  
    # Only append 'ActionLog' if it's not already present
    unless existing_endpoints.include?("Company")
      new_endpoints = existing_endpoints + ["Company"] # Append only if it doesn't exist
      associated_attr.update(associated_endpoints: new_endpoints)
    end
end