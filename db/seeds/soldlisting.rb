sold_listing_attrs = [
#Show
    #--Request
    "moxi_works_listing_id", #"String"
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "underscore_response", #"Boolean"
    #--Response
    "LotSizeAcres", #"Float or null"
    "BathroomsFull", #"Integer or null"
    "BathroomsHalf", #"Integer or null"
    "BathroomsOneQuarter", #"Integer or null"
    "BathroomsPartial", #"Integer or null"
    "BathroomsThreeQuarter", #"Integer or null"
    "BathroomsTotalInteger", #"Integer or null"
    "BathroomsTotal", #"Float or null"
    "BedroomsTotal", #"Integer or null"
    "PublicTitle", #"String or null"
    "PublicRemarks", #"String or null"
    "ModificationTimestamp", #"String"
    "InternetAddressDisplayYN", #"Boolean or null"
    "DaysOnMarket", #"Integer"
    "ListingContractDate", #"String"
    "CreatedDate", #"String"
    "ElementarySchool", #"String or null"
    "GarageSpaces", #"Integer or null"
    "WaterfrontYN", #"Boolean or null"
    "HighSchool", #"String or null"
    "AssociationFee", #"Integer or null"
    "ListOfficeName", #"String or null"
    "ListPrice", #"Integer or null"
    "ListingID", #"String"
    "ListAgentFullName", #"String"
    "ListAgentUUID", #"String"
    "ListAgentOfficeID", #"String"
    "ListAgentMoxiWorksOfficeID", #"String"
    "SecondaryListAgentFullName", #"String or null"
    "SecondaryListAgentUUID", #"String or null"
    "SchoolDistrict", #"String or null"
    "Address", #"String or null"
    "Address2", #"String or null"
    "City", #"String or null"
    "CountyOrParish", #"String or null"
    "Latitude", #"String or null"
    "Longitude", #"String or null"
    "StateOrProvince", #"String or null"
    "PostalCode", #"String or null"
    "Community", #"String or null"
    "LotSizeSquareFeet", #"Integer or null"
    "InternetEntireListingDisplayYN", #"Boolean"
    "MiddleOrJuniorSchool", #"String or null"
    "ListOfficeAOR", #"String or null"
    "ListOfficeAORArea", #"String or null"
    "PoolYN", #"Boolean or null"
    "PropertyType", #"String or null"
    "TaxAnnualAmount", #"Integer or null"
    "TaxYear", #"Integer or null"
    "SingleStory", #"Boolean or null"
    "LivingArea", #"Integer or null"
    "ViewYN", #"Boolean or null"
    "YearBuilt", #"Integer or null"
    "OnMarket", #"Boolean or null"
    "Status", #"String or null"
    "MoxiWorksListingId", #"String"
    "AgentCreatedListing", #"Boolean"
    "VirtualTourURL", #"String or null"
    "TaxParcelId", #"String or null"
    "ListingURL", #"String or null"
    "CompanyListingAttributes", #"Array"
    "PropertyFeatures", #"Array"
    "OpenHouse", #"Array"
    "ImagesLastModified", #"String or null"
    "ListingImages", #"Array"
    "SoldDate", #"String"
    "SoldPrice", #"Integer"
    "BuyerAgentFullName", #"String"
    "BuyerAgentUUID", #"String"
    "BuyerAgentOfficeName", #"String"
    "BuyerAgentOfficeID", #"String"
    "BuyerAgentMoxiWorksOfficeID", #"String"

#Index
    #--Request
    "moxi_works_company_id", #"String"
    "parent_company_id", #"String"
    "sold_since", #"Integer"
    "sold_before", #"Integer"
    "agent_uuid", #"String"
    "moxi_works_agent_id", #"String"
    "source_agent_id", #"String"
    "moxi_works_office_id", #"String"
    "last_moxi_works_listing_id", #"String"
    "include_buyer_listings", #"String"
    "underscore_response", #"Boolean"
    #--Response
    "FinalPage", #"Boolean"
    "Listings" #"Array"
]

sold_listing_attrs.each do |attr_title|
  associated_attr = AssociatedAttr.find_or_initialize_by(attr_title: attr_title)
  
  # Get existing endpoints or initialize an empty array
  existing_endpoints = associated_attr.associated_endpoints || []

  # Only append 'ActionLog' if it's not already present
  unless existing_endpoints.include?("SoldListing")
    new_endpoints = existing_endpoints + ["SoldListing"] # Append only if it doesn't exist
    associated_attr.update(associated_endpoints: new_endpoints)
  end
end