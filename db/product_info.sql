UPDATE associated_attrs
SET product_info = '{
    "ActionLog": {
        "Roster": ["Some info"]
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
    }
}'
WHERE attr_title = 'test_attribute';