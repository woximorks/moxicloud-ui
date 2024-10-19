gallery_attrs = [
#Show
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"

    #--Response
    "ListingID", #"String"
    "ListOfficeAOR", #"String or null"
    "ListingImages" #"Array"
]

gallery_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("Gallery")
    new_endpoints = existing_endpoints + ["Gallery"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end