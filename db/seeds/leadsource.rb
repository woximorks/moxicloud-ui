lead_source_attrs = [
#Index
    #--Request (no data)
    #--Response
    "moxi_works_lead_source_id", #"String"
    "name", #"String"
    "is_partner_alias", #"Boolean"
    "is_partner_default" #"Boolean"
]

lead_source_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("LeadSource")
    new_endpoints = existing_endpoints + ["LeadSource"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end