event_attrs = [
#Create
    #--Request
    "partner_event_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "event_subject", #"String"
    "event_location", #"String"
    "note", #"String"
    "send_reminder", #"Boolean"
    "remind_minutes_before", #"Integer"
    "event_start", #"Integer"
    "event_end", #"Integer"
    "all_day", #"Boolean"
    "attendees", #"String"
    #--Response
    "partner_event_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "event_subject", #"String"
    "event_location", #"String"
    "note", #"String"
    "send_reminder", #"Boolean"
    "remind_minutes_before", #"Integer"
    "note", #"String"
    "all_day", #"Boolean"
    "event_start", #"Integer"
    "event_end", #"Integer"
    "attendees", #"String"

#Update
    #--Request
    "partner_event_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "event_subject", #"String"
    "event_location", #"String"
    "note", #"String"
    "send_reminder", #"Boolean"
    "remind_minutes_before", #"Integer"
    "event_start", #"Integer"
    "event_end", #"Integer"
    "all_day", #"Boolean"
    "attendees", #"String"
    #--Response
    "partner_event_id", #"String"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "event_subject", #"String"
    "event_location", #"String"
    "note", #"String"
    "send_reminder", #"Boolean"
    "remind_minutes_before", #"Integer"
    "all_day", #"Boolean"
    "event_start", #"Integer"
    "event_end", #"Integer"
    "attendees", #"String"

#Index
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "date_start", #"Integer"
    "date_end", #"Integer"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "date", #"String"
    "events", #"Array"

#Delete
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "partner_event_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "status", #"String"
    "deleted" #"Boolean"
]

event_attrs.each do |attr_title|
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
    # Get existing endpoints or initialize an empty array
    existing_endpoints = associated_attr.associated_endpoints || []
  
    # Only append 'ActionLog' if it's not already present
    unless existing_endpoints.include?("Event")
      new_endpoints = existing_endpoints + ["Event"] # Append only if it doesn't exist
      associated_attr.update(associated_endpoints: new_endpoints)
    end
  end