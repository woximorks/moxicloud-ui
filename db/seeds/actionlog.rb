actionlog_attrs = [
#Create
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "body", #"String"
    "moxi_works_contact_id", #"String"
    "partner_contact_id", #"String"
    "title", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "agent_action", #"String"
    "agent_action_address", #"String"
    "agent_action_address2", #"String"
    "agent_action_city", #"String"
    "agent_action_state", #"String"
    "agent_action_zip", #"String"
    #--Response--
    "agent_uuid", #"String"
    "moxi_works_agent_id",* #"String"
    "body", #"String"
    "moxi_works_contact_id", #"String"
    "partner_contact_id", #"String"
    "timestamp", #"Integer"
    "title", #"String"
    "agent_action", #"String"
    "agent_action_address", #"String"
    "agent_action_address2", #"String"
    "agent_action_city", #"String"
    "agent_action_state", #"String"
    "agent_action_zip", #"String"

#Delete
    #--Request
    "moxi_works_action_log_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response--
    "status", #"String"
    "deleted", #"String"
    "messages", #"Array"

#Index
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_contact_id", #"String"
    "partner_contact_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "date_min", #"Integer"
    "date_max", #"Integer"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "moxi_works_contact_id", #"String"
    "partner_contact_id", #"String"
    "actions", #Array {moxi_works_action_log_id, type, timestamp, log_data}
]

actionlog_attrs.each do |attr_title|
    # Find or initialize the attribute
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
    # Get existing endpoints or initialize an empty array
    existing_endpoints = associated_attr.associated_endpoints || []
  
    # Only append 'ActionLog' if it's not already present
    unless existing_endpoints.include?("ActionLog")
      new_endpoints = existing_endpoints + ["ActionLog"] # Append only if it doesn't exist
      associated_attr.update(associated_endpoints: new_endpoints)
    end
  end   