UPDATE associated_attrs
SET product_info = '{
    "ActionLog": {
        "Roster": ["Some info"],
        "Engage": ["Some info"],
        "API": ["Some other info"]
    },
    "Agent": {
        "Engage": ["Some info"],
        "Roster": ["Some other info"]
    },
    "Brand": {
        "Engage": ["Something"],
        "Roster": ["Something else"]
    },
    "BuyerTransaction": {
        "API": ["You could even", "add two paragraphs or whatever"],
        "Roster": ["The", "possibilities", "are", "only", "limited", "by", "your", "imagination"]
    },
    "Company": {
        "API": [""]
    },
    "Contact": {
        "API": [""]
    },
    "EmailCampaign": {
        "API": [""]
    },
    "Event": {
        "API": [""]
    },
    "Gallery": {
        "API": [""]
    },
    "Group": {
        "API": [""]
    },
    "LeadSource": {
        "API": [""]
    },
    "Listing": {
        "API": [""]
    },
    "Office": {
        "API": [""]
    },
    "PresentationLog": {
        "API": [""]
    },
    "SellerTransaction": {
        "API": [""]
    },
    "SoldListing": {
        "API": [""]
    },
    "Task": {
        "API": [""]
    },
    "Team": {
        "API": [""]
    },
    "WebUser": {
        "API": [""]
    }
}'
WHERE attr_title = 'agent_uuid';