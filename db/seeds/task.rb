task_attrs = [
#Create
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_task_id", #"String"
    "partner_contact_id", #"String"
    "name", #"String"
    "due_at", #"Integer"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "duration", #"Integer"
    "description", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "partner_contact_id", #"String"
    "name", #"String or null"
    "description", #"String or null"
    "due_at", #"Integer"
    "duration", #"Integer or null"
    "status", #"String or null"
    "created_at", #"Integer"
    "completed_at", #"Integer or null"

#Update
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_task_id", #"String"
    "partner_contact_id", #"String"
    "name", #"String"
    "due_at", #"Integer"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "duration", #"Integer"
    "description", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "partner_contact_id", #"String"
    "name", #"String or null"
    "description", #"String or null"
    "due_at", #"Integer"
    "duration", #"Integer or null"
    "status", #"String or null"
    "created_at", #"Integer"
    "completed_at", #"Integer or null"

#Show
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_task_id", #"String"
    "partner_contact_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "partner_contact_id", #"String"
    "partner_task_id", #"String"
    "name", #"String or null"
    "description", #"String or null"
    "due_at", #"Integer"
    "duration", #"Integer or null"
    "status", #"String or null"
    "created_at", #"Integer"
    "completed_at", #"Integer or null"

#Index
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "due_date_start", #"Integer"
    "due_date_end", #"Integer"
    "partner_contact_id", #"String"
    "page_number", #"Integer"
    #--Response
    "page_number", #"Integer"
    "total_pages", #"Integer"
    "tasks" #"Array"
]

task_attrs.each do |attr_title|
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
    # Get existing endpoints or initialize an empty array
    existing_endpoints = associated_attr.associated_endpoints || []
  
    # Only append 'ActionLog' if it's not already present
    unless existing_endpoints.include?("Task")
      new_endpoints = existing_endpoints + ["Task"] # Append only if it doesn't exist
      associated_attr.update(associated_endpoints: new_endpoints)
    end
  end