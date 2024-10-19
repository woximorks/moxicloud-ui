 web_user_attrs = [
#Index
    #--Request
    "moxi_works_company_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "parent_company_id", #"String"
    "has_agent_association", #"Boolean"
    "has_web_data", #"Boolean"
    "has_favorites", #"Boolean"
    "has_searches", #"Boolean"
    "page_number", #"Integer"
    "updated_after", #"Integer"
    "updated_before", #"Integer"
    #--Response
    "moxi_works_user_id", #"String"
    "first_name", #"String or null"
    "last_name", #"String or null"
    "email", #"String or null"
    "associated_agent_uuid", #"String or null"
    "favorite_listing_ids", #"Array"
    "saved_searches" #"Array"
]

web_user_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("WebUser")
    new_endpoints = existing_endpoints + ["WebUser"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end