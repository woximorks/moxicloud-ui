email_campaign_attrs = [
#Index
    #--Request
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_contact_id", #"String"
    "partner_contact_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    #--Response
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "subscription_type", #"String"
    "email_address", #"String"
    "subscribed_at", #"Integer"
    "created_by", #"String"
    "area", #"String"
    "last_sent", #"Integer"
    "next_scheduled", #"Integer"
    "created_at", #"String"
    "unsubscribed_at", #"String"
    "unsubscribed_by", #"String"
    "listed", #"Boolean"
    "sold", #"Boolean"
    "zipcode", #"String"
    "nn_subscription_type", #"String"
    "nn_min_price", #"Integer"
    "nn_max_price", #"Integer"
    "nn_min_beds", #"Integer"
    "nn_max_beds", #"Integer"
    "nn_min_baths", #"Integer"
    "nn_min_sqft", #"Integer"
    "nn_max_sqft", #"Integer"
    "nn_property_type" #"String"
]

email_campaign_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("EmailCampaign")
    new_endpoints = existing_endpoints + ["EmailCampaign"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end