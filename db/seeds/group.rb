group_attrs = [   
#Create
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_group_id", #"String"
    "name", #"String"
    "contacts", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "moxi_works_group_name", #"String"
    "moxi_works_group_id", #"String"
    "partner_group_id", #"String"
    "transient", #"Boolean"
    "is_contact_removal", #"Boolean"
    "updated_contacts", #"Array"

#Update
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_group_id", #"String"
    "moxi_works_group_name", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "is_contact_removal", #"Boolean"
    "contacts", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "moxi_works_group_name", #"String"
    "moxi_works_group_id", #"String"
    "partner_group_id", #"String"
    "transient", #"Boolean"
    "is_contact_removal", #"Boolean"
    "updated_contacts", #"Array"

#Show
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_group_id", #"String"
    "moxi_works_group_name", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "page_number", #"Integer"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "moxi_works_group_name", #"String"
    "partner_group_id", #"String"
    "moxi_works_group_id", #"String"
    "transient", #"Boolean"
    "page_number", #"Integer"
    "total_pages", #"Integer"
    "contacts", #"Array"

#Index
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "name", #"String"
    "updated_since", #"Integer"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "moxi_works_group_name", #"String"
    "moxi_works_group_id", #"String"
    "partner_group_id", #"String"
    "transient" #"Boolean"
]

group_attrs.each do |attr_title|
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
    # Get existing endpoints or initialize an empty array
    existing_endpoints = associated_attr.associated_endpoints || []
  
    # Only append 'ActionLog' if it's not already present
    unless existing_endpoints.include?("Group")
      new_endpoints = existing_endpoints + ["Group"] # Append only if it doesn't exist
      associated_attr.update(associated_endpoints: new_endpoints)
    end
  end