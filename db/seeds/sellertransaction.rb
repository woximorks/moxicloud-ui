seller_transaction_attrs = [
    #Create Request
    "agent_uuid",
    "moxi_works_agent_id",
    "source_agent_id",
    "moxi_works_contact_id",
    "partner_contact_id",
    "transaction_name",
    "moxi_works_company_id",
    "parent_company_id",
    "notes",
    "address",
    "city",
    "state",
    "zip_code",
    "sqft",
    "beds",
    "baths",
    "is_mls_transaction",
    "mls_number",
    "start_timestamp",
    "commission_percentage",
    "commission_flat_fee",
    "sales_volume_percentage",
    "sales_volume_flat_fee",
    "target_price",
    "min_price",
    "max_price",

    #Create Response
    "agent_uuid",
    "moxi_works_agent_id",
    "moxi_works_transaction_id",
    "moxi_works_contact_id",
    "partner_contact_id",
    "transaction_name",
    "notes",
    "stage",
    "stage_name",
    "address",
    "city",
    "state",
    "zip_code",
    "sqft",
    "beds",
    "baths",
    "is_mls_transaction",
    "mls_number",
    "start_timestamp",
    "commission_percentage",
    "commission_flat_fee",
    "sales_volume_percentage",
    "sales_volume_flat_fee",
    "target_price",
    "min_price",
    "max_price",
    "closing_price",
    "closing_timestamp",
    "state_changed_at",

    #Update Request
    "agent_uuid",
    "moxi_works_agent_id",
    "source_agent_id",
    "moxi_works_transaction_id",
    "transaction_name",
    "moxi_works_company_id",
    "parent_company_id",
    "notes",
    "address",
    "city",
    "state",
    "zip_code",
    "sqft",
    "beds",
    "baths",
    "is_mls_transaction",
    "mls_number",
    "start_timestamp",
    "commission_percentage",
    "commission_flat_fee",
    "target_price",
    "min_price",
    "max_price",
    "closing_price",
    "closing_timestamp",
    "promote_transaction",

    #Update Response
    "agent_uuid",
    "moxi_works_agent_id",
    "moxi_works_transaction_id",
    "moxi_works_contact_id",
    "partner_contact_id",
    "transaction_name",
    "notes",
    "stage",
    "stage_name",
    "address",
    "city",
    "state",
    "zip_code",
    "sqft",
    "beds",
    "baths",
    "is_mls_transaction",
    "mls_number",
    "start_timestamp",
    "commission_percentage",
    "commission_flat_fee",
    "sales_volume_percentage",
    "sales_volume_flat_fee",
    "target_price",
    "min_price",
    "max_price",
    "closing_price",
    "closing_timestamp",
    "state_changed_at",

    #Show Request
    "agent_uuid",
    "moxi_works_agent_id",
    "source_agent_id",
    "moxi_works_transaction_id",
    "parent_company_id",
    "moxi_works_company_id",

    #Show Response
    "agent_uuid",
    "moxi_works_agent_id",
    "moxi_works_transaction_id",
    "moxi_works_contact_id",
    "partner_contact_id",
    "transaction_name",
    "notes",
    "stage",
    "stage_name",
    "address",
    "city",
    "state",
    "zip_code",
    "sqft",
    "beds",
    "baths",
    "is_mls_transaction",
    "mls_number",
    "start_timestamp",
    "commission_percentage",
    "commission_flat_fee",
    "sales_volume_percentage",
    "sales_volume_flat_fee",
    "target_price",
    "min_price",
    "max_price",
    "closing_price",
    "closing_timestamp",
    "state_changed_at",

    #Index Request
    "agent_uuid",
    "moxi_works_agent_id",
    "source_agent_id",
    "moxi_works_contact_id",
    "partner_contact_id",
    "moxi_works_company_id",
    "parent_company_id",
    "page_number",
    "timestamps_only",

    #Index Response
    "page_number",
    "total_pages",
    "transactions"
]

seller_transaction_attrs.each do |attr_title|
    associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
    
    existing_endpoints = associated_attr.associated_endpoints || []
  
    unless existing_endpoints.include?("SellerTransaction")
      new_endpoints = existing_endpoints + ["SellerTransaction"]
      associated_attr.update(associated_endpoints: new_endpoints)
    end
  end