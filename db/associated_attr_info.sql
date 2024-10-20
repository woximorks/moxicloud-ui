DO $$
begin

UPDATE associated_attrs SET general_info = 'This will be an RFC 4122 compliant UUID. If data is being pulled from The MoxiWorks Platform and integrating with your own system in a managed or automated fashion, then using agent_uuid request attribute is preferable. It is guaranteed to be unique and to never change for the lifetime of the account.' WHERE attr_title = 'agent_uuid';
UPDATE associated_attrs SET general_info = 'If you have already existing agent data, agent accounts and your own user interface that agents can use to integrate your account with their MoxiWorks Platform account then you should use the moxi_works_agent_id request attribute. It is intended for use cases where integration is managed by end-user interaction.' where attr_title = 'moxi_works_agent_id';
UPDATE associated_attrs SET general_info = 'If you have access to agent data from the same company source that MoxiWorks uses as an upstream data source then you should use the source_agent_id request attribute. This identifier will be unique only within the scope of a given company or parent_company, and must be used in conjunction with the moxi_works_company_id or parent_company_id request attributes. Please email partners@moxiworks.com for clarification about this request attribute.' where attr_title = 'source_agent_id';
UPDATE associated_attrs SET general_info = 'This can be any arbitrary plain-text string which would be practical for the agent to see in the history of events associated with a Contact. It must be greater than 0 and must be less than 5000 characters (including white space).' where attr_title = 'body';
UPDATE associated_attrs SET general_info = 'This will be an RFC 4122 compliant UUID, and is the same as the moxi_works_contact_id attribute of the Contact response.' where attr_title = 'moxi_works_contact_id';
UPDATE associated_attrs SET general_info = 'This is the unique identifer used in the system that will be connecting to the MoxiWorks platform.' where attr_title = 'partner_contact_id';
UPDATE associated_attrs SET general_info = 'This represents the title of the entity this attribute is associated with.' where attr_title = 'title';
UPDATE associated_attrs SET general_info = 'MoxiWorks Plaform Company entities are your entry-point for determining the established relationships for your organization to companies on the MoxiWorks Platform and for accessing data about those companies. Many requests require a moxi_works_company_id, which can be derived from the Company Index endpoint.' where attr_title = 'moxi_works_company_id';
UPDATE associated_attrs SET general_info = 'This provides for a broad scope by which partners may be afforded permissions to perform MoxiWorks Platform actions, in scenarios where a partner does business with a parent company in the MoxiWorks System. It also provides broad scope under which agents may be looked up using the source_agent_id request attribute in many scenarios across different MoxiWorks Platform endpoints and actions.' where attr_title = 'parent_company_id';
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'This is the human readable plain-text string which will be presented to the agent as the heading of the ActionLog entry. This can be any short, descriptive sentence which would be practical for the agent to see in the history of events associated with a Contact.' where attr_title = 'agent_action'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'If creating an agent_action that has a location component (‘inperson’ ‘other’) use this field to denote the street address of the agent_action.' where attr_title = 'agent_action_address'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'If creating an agent_action that has a location component (‘inperson’ ‘other’) use this field to denote the additonal street address info of the agent_action.' where attr_title = 'agent_action_address2'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'If creating an agent_action that has a location component (‘inperson’ ‘other’) use this field to denote the city or locale of the agent_action.' where attr_title = 'agent_action_city'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = ' If creating an agent_action that has a location component (‘inperson’ ‘other’) use this field to denote the state or province related info of the agent_action.' where attr_title = 'agent_action_state'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'If creating an agent_action that has a location component (‘inperson’ ‘other’) use this field to denote the postal code of the agent_action.' where attr_title = 'agent_action_zip'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'This is the Unix timestamp for the creation time of the ActionLog entry.' where attr_title = 'timestamp'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'This is the MoxiWorks Platform ID of the ActionLog entry to be deleted. This will be an RFC 4122 compliant UUID.' where attr_title = 'moxi_works_action_log_id';
UPDATE associated_attrs SET general_info = 'This will indicate the status of the submitted request / call.' where attr_title = 'status';
UPDATE associated_attrs SET general_info = 'In relation to the delete request submitted, this will indicate whether that request was successful.' where attr_title = 'deleted';
UPDATE associated_attrs SET general_info = 'This is an arrray of strings. Any messages associated with the delete request status will be contained in this array.' where attr_title = 'messages';
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'Only ActionLog records created later than this Unix timestamp will be included in the query. The upper bound of the time slice will be the 90 days higher than date_min value or the value of the the date_max; whichever is lower. If no timestamps are provided, ActionLogs from the last 90 days will be retrieved. The maximum timeframe for data is 90 days. date_min and date_max should be set in 90 day increments to retrieve the data from a specific historical point.' where attr_title = 'date_min'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'Only ActionLog records created earlier than this Unix timestamp will be included in the query. Should be no higher than 90 days past the date_min attribute if it is provided. The maximum timeframe for data is 90 days. date_min and date_max should be set in 90 day increments to retrieve the data from a specific historical point.' where attr_title = 'date_max'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, actionlog_info = 'This is an Array containing any ActionLog entries found for the Index request - [moxi_works_action_log_id, type, timestamp, log_data].' where attr_title = 'actions'; -- actionlog
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The access level of the agent. This can return one of the possible access levels, as seen within the products and permissions page. To include access level information for the agent in the response, pass true.' where attr_title = 'include_access_level'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This represents the Gross Commission Income goal, as seen throughout the Engage UI. This attribute will include agent’s GCI goals and commissions data in the response data if true is passed.' where attr_title = 'include_gci_goals'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'To include affiliate data associated with the agent in the response, pass true.' where attr_title = 'include_partners'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Referencing external agent reviews from platforms such as Zillow and Testimonial Tree. To include ratings and reviews associated with the agent in the response, pass true.' where attr_title = 'include_reviews'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of the agent, as utilized by their brokerage or company.' where attr_title = 'client_agent_id'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of the agent utilized by their primary MLS. This ID allows listings to associate with the User Account. This ID can be found on the Manage MLS Associations page of the agent or other User Account.' where attr_title = 'mls_agent_id'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the number of the license granted to the agent. Please see mls_agent_id for the actual agent MLS ID value, as utilized by the Moxi platform to associate listings and other related data in most instances.' where attr_title = 'license'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the name of the primary MLS for the agent. ' where attr_title = 'mls_name'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This name can be found on the Manage MLS Associations page of the agent or other User Account.' where attr_title = 'mls_abbreviation'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of this agent. This will be an integer.' where attr_title = 'agent_id'; -- agent
UPDATE associated_attrs SET general_info = 'This will be an RFC 4122 compliant UUID.' where attr_title = 'moxi_works_office_id';
UPDATE associated_attrs SET general_info = 'This is the MoxiWorks Platform ID of the office for the agent. This will be an RFC 4122 compliant UUID.' where attr_title = 'office_id'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of the office for the agent. This will be an integer.' where attr_title = 'client_office_id'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of the company for the agent. This will be an integer.' where attr_title = 'company_id'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the ID of the Company utilized by their brokerage or company.This is a client-specified identifier of the company which this Company object represents, or null if absent.' where attr_title = 'client_company_id'; -- agent
UPDATE associated_attrs SET general_info = 'This is the main associated physical street address where the office is located. It can be null if there is no data for this attribute.' where attr_title = 'office_address_street'; 
UPDATE associated_attrs SET general_info = 'This is the main associated secondary physical street address field, often populated with a suite or office number.' where attr_title = 'office_address_street2';
UPDATE associated_attrs SET general_info = 'The city where the office is located, as associated with the physical address.' where attr_title = 'office_address_city';
UPDATE associated_attrs SET general_info = 'The state where the office is located, as associated with the physical address.' where attr_title = 'office_address_state';
UPDATE associated_attrs SET general_info = 'The postal code associated with the office physical address.' where attr_title = 'office_address_zip';
UPDATE associated_attrs SET general_info = 'This is the associated mailing address where the office is located.' where attr_title = 'office_mailing_address_street';
UPDATE associated_attrs SET general_info = 'This is the associated secondary mailing street address field, often populated with a suite or office number.' where attr_title = 'office_mailing_address_street2';
UPDATE associated_attrs SET general_info = 'The city where the office receives mail, as associated with the mailing address.' where attr_title = 'office_mailing_address_city';
UPDATE associated_attrs SET general_info = 'The state where the office receives mail, as associated with the mailing address.' where attr_title = 'office_mailing_address_state';
UPDATE associated_attrs SET general_info = 'The postal code associated with the office mailing address.' where attr_title = 'office_mailing_address_zip';
UPDATE associated_attrs SET general_info = 'This name attribute is shared between several endpoints, and generally represents the full name of the entity.' where attr_title = 'name';
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The first name of the agent.' where attr_title = 'first_name'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The middle name of the agent.' where attr_title = 'middle_name'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The last name of the agent.' where attr_title = 'last_name'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s main phone number. This number should be considered the number the agent would like to be contacted by.' where attr_title = 'main_phone_number'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Mobile phone number of the agent. main_phone_number should be considered higher priority, if not the same.' where attr_title = 'mobile_phone_number'; -- agent 
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Alternate phone number for the agent. This should be considered second in priority to main_phone_number.' where attr_title = 'alt_phone_number'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s fax phone number.' where attr_title = 'fax_phone_number'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s office phone number.' where attr_title = 'office_phone_number'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s main email address. This email address should be considered the email address the agent would prefer to be contacted by.' where attr_title = 'primary_email_address'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s alternate email address. This email address should be considered the email address the agent would want to be contacted by only if the address in primary_email_address is not functional.' where attr_title = 'secondary_email_address'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The email_addresses Hash is a Dictionary object holding the email addresses associated with the agent record. These include [primary, display, alternate, moxi_sync, lead_routing, zillow]. Some of these will display on the About Me section of Roster, including primary, display, moxi sync.' where attr_title = 'email_addresses'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s lead routing email address. ' where attr_title = 'lead_routing_email_address'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the bio of the agent, as seen on the about me > web info page.' where attr_title = 'bio'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is a string that contains the agent’s designation(s), if any.' where attr_title = 'designations'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is an RFC 4122 compliant UUID. This UUID can be used as a unique identifier in determining associations between agent objects and Listing objects.' where attr_title = 'uuid'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Referring to each individual Moxi product offered, such as Engage, Present, Impress etc.' where attr_title = 'has_product_access'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Referencing the agent’s ability to access Engage as a product.' where attr_title = 'has_engage_access'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Related to the products and permissions page, specific to user account permissions section.' where attr_title = 'access_level'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The view level of the agent.' where attr_title = 'view_level'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Related to agent Teams, within My Account section.' where attr_title = 'teams'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The base url of the agent’s MoxiWorks agent website.' where attr_title = 'website_base_url'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s Twitter URL. Seen within About Me > Web Info.' where attr_title = 'twitter'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This will be null. Deprecated field related to a product that no longer exists, offered by Google many moons ago.' where attr_title = 'google_plus'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s Facebook page url. Seen within About Me > Web Info.' where attr_title = 'facebook'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s website domain. This will be returned without the HTTP(S) prefix.' where attr_title = 'home_page'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s associated profile image within About Me section.' where attr_title = 'profile_image_url'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s associated profile image within About Me section, thumbnail.' where attr_title = 'profile_thumb_url'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The region the agent’s office is in.' where attr_title = 'region'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the agent’s Gross Commission Income goal, as seen throughout the Engage UI.' where attr_title = 'gci_goal'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Percentage commission rate for the agent when acting as a buyer’s agent.' where attr_title = 'buyer_commission_rate'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Percentage commission rate for the agent when acting as a seller’s agent.' where attr_title = 'seller_commission_rate'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'A list of the lead service area zip codes covered by the agent.' where attr_title = 'service_area_zip_codes'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This includes the base_url and bio_page_slug of the agent MoxiWorks website.' where attr_title = 'agent_website'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'agent’s alternate offices, as seen within the additional offices page. The alternate_offices array contains Dictionary objects representing AlternateOffice entries. These include [moxi_works_office_id, office_id, office_address_street, office_address_street2, office_address_city, office_address_state, office_address_zip, office_phone_number].' where attr_title = 'alternate_offices'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'The available_mls Array contains Dictionary objects representing MLS entries. These include [name, display_name, mls_abbreviation, agent_id].' where attr_title = 'available_mls'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Existence of objects in the partners data structure is dependent upon external relationships existing between the agent represented by this agent and the affiliate. Documented entities in the `partners` data structure may or may not be returned based on agent relationship. Your logic should be engineered to handle cases where the entity you are interested in is returned and where an empty data structure is returned.' where attr_title = 'partners'; -- agent, company
UPDATE associated_attrs SET general_info = NULL, agent_info = 'A list of the company specific program names in which the agent participates or is a member.' where attr_title = 'company_programs'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'A list of the source-specific user identifiers.' where attr_title = 'source_metadata';
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the Unix timestamp representing the date that this agent was created in the MoxiWorks system.' where attr_title = 'created_timestamp'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This is the Unix timestamp representing the date that this agent was deactivated in the MoxiWorks system. This will be returned null if the agent is still active.This is the Unix timestamp representing the date that this agent was deactivated in the MoxiWorks system. This will be returned null if the agent is still active.' where attr_title = 'deactivated_timestamp'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Indicates the “Profile Visible Online” value for this agent within Roster. True corresponds to Yes (visible online); false corresponds to No (not visible online).' where attr_title = 'profile_visible_online'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This relates to external agent reviews from platforms such as Zillow and Testimonial Tree. Existence of objects in the user_reviews data structure is dependent upon external sources, i.e. Zillow, Testimonial Tree. Documented entities in the `user_reviews` data structure may or may not be returned when `include_reviews=true` is passed. Your logic should be engineered to handle cases where the entity you are interested in is returned and where an empty data structure is returned. Included in this - [source_name, agg_rating, reviews_count]' where attr_title = 'user_reviews'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Any agent objects updated after this Unix timestamp will be returned in the response. If no updated_since parameter is included in the request, by default only agent objects updated in the last seven days will be returned.' where attr_title = 'updated_since'; -- agent
UPDATE associated_attrs SET general_info = 'For queries with multi-page responses, use the page_number parameter to return data for specific pages. Data for page 1 is returned if this parameter is not included. Use this parameter if total_pages indicates that there is more than one page of data available.' where attr_title = 'page_number';
UPDATE associated_attrs SET general_info = NULL, agent_info = 'To find agent accounts deactivated within the specified timeframe, pass true for this boolean parameter.' where attr_title = 'deactivated'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'Any agent objects deactivated after this Unix timestamp will be returned in the response. If no deactivated_since parameter is included in the request, only agent objects deactivated in the last seven days will be returned.' where attr_title = 'deactivated_since'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'To include company specific programs associated with the agent in the response, pass true.' where attr_title = 'include_company_programs'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'To include the base url (website_base_url) of the agent’s MoxiWorks website pass true.' where attr_title = 'include_website'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'To include only agent objects associated with company specific programs pass true.' where attr_title = 'has_company_programs'; -- agent
UPDATE associated_attrs SET general_info = 'If supplied then the results will exclude all data except primary identifiers and a unix timestamp (last_updated) & iso8601 timestamp (modification_timestamp) of the last time this record was updated.' where attr_title = 'timestamps_only'; -- agent
UPDATE associated_attrs SET general_info = NULL, agent_info = 'This references the bio of the agent, as seen on the about me > web info page. To include the bio associated with the agent in the response, pass true.' where attr_title = 'include_bio'; -- agent
UPDATE associated_attrs SET general_info = NULL, brand_info = 'This is the logo associated with the Brokerage or Company.' where attr_title = 'image_logo';
UPDATE associated_attrs SET brand_info = 'Within a Presentation, this will be the accent color.' where attr_title = 'cma_authoring_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this will be the background color of a page.' where attr_title = 'background_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this is the font color intended to overlay the background_color attribute.' where attr_title = 'background_font_color_primary';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this is the background color of associated buttons.' where attr_title = 'button_background_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this is the font color intended to overlay the button_background_color attribute.' where attr_title = 'button_font_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this will be the copyright notice information.' where attr_title = 'copyright';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation, this is the name of the Brokerage or Company as displayed to the consumer.' where attr_title = 'display_name';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'This is specific to the background color that displays when sending an email from Present, for elements outside of the email body.' where attr_title = 'email_element_background_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'The font color for font that overlays email_element_background_color.' where attr_title = 'email_background_font_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation - specifically Print (PDF) format, this will be the Brokerage or Company logo that displays.' where attr_title = 'image_cma_pdf_logo_header';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Related to sent emails, this will be the Brokerage or Company logo as shown in email header.' where attr_title = 'image_email_logo_alt';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a presentation, this will be the favicon that displays related to the Brokerage or Company.' where attr_title = 'image_favicon';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation - specifically web view, this will be the Brokerage or Company logo.' where attr_title = 'image_pres_cover_logo';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation - specifically web view, this is the background color that displays.' where attr_title = 'pres_block_background_color';
UPDATE associated_attrs SET general_info = NULL, brand_info = 'Within a Presentation - specifically web view, this is the font color for related text.' where attr_title = 'pres_block_text_color';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'For Buyer Transactions, this will be the name or title of the transaction in question.' where attr_title = 'transaction_name';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'For Buyer Transactions, these will be the related notes.' where attr_title = 'notes';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this is the street address of the property being purchased.' where attr_title = 'address';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this will be the city or township of the property being purchased.' where attr_title = 'city';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this will be the state or province of the property being purchased.' where attr_title = 'state';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this will be the postal code of the property being purchased.' where attr_title = 'zip_code';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the minimum desired living area for prospective properties.' where attr_title = 'min_sqft';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the maximum desired living area for prospective properties.' where attr_title = 'max_sqft';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the minimum number of bedrooms for prospective properties.' where attr_title = 'min_beds';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the maximum number of bedrooms for prospective properties.' where attr_title = 'max_beds';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the minimum number of bathrooms for prospective properties.' where attr_title = 'min_baths';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the maximum number of bathrooms for prospective properties.' where attr_title = 'max_baths';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the name of a locality representing an area of interest for prospective properties.' where attr_title = 'area_of_interest';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this attribute indictates whether the property being purchased is listed on an MLS.' where attr_title = 'is_mls_transaction';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the MLS number of the the property being purchased.' where attr_title = 'mls_number';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this would be considered the date and time when the agent first initiated transaction discussions with the client.' where attr_title = 'start_timestamp';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the total commission for the transaction based on this percentage of the purchase price.' where attr_title = 'commission_percentage';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, this is the dollar amount of the total commission for the transaction.' where attr_title = 'commission_flat_fee';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the total commission for the transaction based on sales volume percentage.' where attr_title = 'sales_volume_percentage';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'In relation to a Buyer Transaction, the total commission for the transaction based on percentage of purchase price.' where attr_title = 'sales_volume_flat_fee';

UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'The desired purchase price for a property if using target rather than range.' where attr_title = 'target_price';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'The minimum price range for a property if using a price range rather than target price.' where attr_title = 'min_price';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'The maximum price range for a property if using a price range rather than target price.' where attr_title = 'max_price';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'The stage that the BuyerTransaction should be placed into.' where attr_title = 'stage';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'This is the MoxiWorks Platform ID of the BuyerTransaction which you have created. This will be an RFC 4122 compliant UUID. This ID should be recorded on response as it is the key ID for updating the BuyerTransaction.' where attr_title = 'moxi_works_transaction_id';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'For Buyer Transactions, this attribute displays the name or title that is associated with the current stage of the transaction.' where attr_title = 'stage_name';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'This is the closing price for the transaction.' where attr_title = 'closing_price';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'For a Buyer Transaction, this represents the point in time when the transaction was completed.' where attr_title = 'closing_timestamp';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'A Unix timestamp representing the point in time when the transaction for this BuyerTransaction object entered into its current state.' where attr_title = 'state_changed_at';
UPDATE associated_attrs SET general_info = NULL, buyertransaction_info = 'If this is set to true then The MoxiWorks Platform will promote this transaction to the next stage.' where attr_title = 'promote_transaction';
UPDATE associated_attrs SET general_info = NULL, company_info = 'This is the numeric company id that is interchangeable with the moxi_works_agent_id in all request scenarios.' where attr_title = 'numeric_id';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Exposed company attributes.' where attr_title = 'public_partner_attrs';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Number of companies records to return per page.' where attr_title = 'per_page';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Displays two additional attributes on response payload. Use for troubleshooting purposes only. Paging should be performed again the provided paging_complete attribute.' where attr_title = 'show_paging_totals';

END
$$;


UPDATE associated_attrs SET general_info = NULL, company_info = 'This is the numeric company id that is interchangeable with the moxi_works_agent_id in all request scenarios.' where attr_title = 'numeric_id';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Exposed company attributes.' where attr_title = 'public_partner_attrs';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Number of companies records to return per page.' where attr_title = 'per_page';
UPDATE associated_attrs SET general_info = NULL, company_info = 'Page of companies records to return.' where attr_title = 'show_paging_totals';
UPDATE associated_attrs SET general_info = '' where attr_title = 'contact_name';
UPDATE associated_attrs SET general_info = '' where attr_title = 'primary_phone_number';
UPDATE associated_attrs SET general_info = '' where attr_title = 'secondary_phone_number';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_lead_source_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'original_lead_source';
UPDATE associated_attrs SET general_info = '' where attr_title = 'gender';
UPDATE associated_attrs SET general_info = '' where attr_title = 'label_name';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_street_address';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_city';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_state';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_zip';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_country';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_not_lead';
UPDATE associated_attrs SET general_info = '' where attr_title = 'skip_agent_notification';
UPDATE associated_attrs SET general_info = '' where attr_title = 'job_title';
UPDATE associated_attrs SET general_info = '' where attr_title = 'occupation';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_mls_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_street_address';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_city';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_state';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_zip';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_beds';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_baths';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_list_price';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_listing_status';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_photo_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_city';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_state';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_zip';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_baths';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_beds';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_price';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_max_price';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_sq_ft';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_max_sq_ft';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_lot_size';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_max_lot_size';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_min_year_built';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_max_year_built';
UPDATE associated_attrs SET general_info = '' where attr_title = 'search_property_types';
UPDATE associated_attrs SET general_info = '' where attr_title = 'note';
UPDATE associated_attrs SET general_info = '' where attr_title = 'websites';
UPDATE associated_attrs SET general_info = '' where attr_title = 'birthday';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_purchase_anniversaries';
UPDATE associated_attrs SET general_info = '' where attr_title = 'company';
UPDATE associated_attrs SET general_info = '' where attr_title = 'spouse_or_partner';
UPDATE associated_attrs SET general_info = '' where attr_title = 'category_names';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_deleted';
UPDATE associated_attrs SET general_info = '' where attr_title = 'middle_name';
UPDATE associated_attrs SET general_info = '' where attr_title = 'suffix';
UPDATE associated_attrs SET general_info = '' where attr_title = 'phone_numbers';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_new_contact';
UPDATE associated_attrs SET general_info = '' where attr_title = 'anniversary';
UPDATE associated_attrs SET general_info = '' where attr_title = 'home_purchase_anniversary';
UPDATE associated_attrs SET general_info = '' where attr_title = 'social_media_profiles';
UPDATE associated_attrs SET general_info = '' where attr_title = 'groups';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_origin_lead_source_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'email_address';
UPDATE associated_attrs SET general_info = '' where attr_title = 'phone_number';
UPDATE associated_attrs SET general_info = '' where attr_title = 'only_business_contacts';
UPDATE associated_attrs SET general_info = '' where attr_title = 'total_pages';
UPDATE associated_attrs SET general_info = '' where attr_title = 'contacts';
UPDATE associated_attrs SET general_info = '' where attr_title = 'result';
UPDATE associated_attrs SET general_info = '' where attr_title = 'subscription_type';
UPDATE associated_attrs SET general_info = '' where attr_title = 'subscribed_at';
UPDATE associated_attrs SET general_info = '' where attr_title = 'created_by';
UPDATE associated_attrs SET general_info = '' where attr_title = 'area';
UPDATE associated_attrs SET general_info = '' where attr_title = 'last_sent';
UPDATE associated_attrs SET general_info = '' where attr_title = 'next_scheduled';
UPDATE associated_attrs SET general_info = '' where attr_title = 'created_at';
UPDATE associated_attrs SET general_info = '' where attr_title = 'unsubscribed_at';
UPDATE associated_attrs SET general_info = '' where attr_title = 'unsubscribed_by';
UPDATE associated_attrs SET general_info = '' where attr_title = 'listed';
UPDATE associated_attrs SET general_info = '' where attr_title = 'sold';
UPDATE associated_attrs SET general_info = '' where attr_title = 'zipcode';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_subscription_type';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_min_price';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_max_price';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_min_beds';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_max_beds';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_min_baths';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_min_sqft';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_max_sqft';
UPDATE associated_attrs SET general_info = '' where attr_title = 'nn_property_type';
UPDATE associated_attrs SET general_info = '' where attr_title = 'partner_event_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'event_subject';
UPDATE associated_attrs SET general_info = '' where attr_title = 'event_location';
UPDATE associated_attrs SET general_info = '' where attr_title = 'send_reminder';
UPDATE associated_attrs SET general_info = '' where attr_title = 'remind_minutes_before';
UPDATE associated_attrs SET general_info = '' where attr_title = 'event_start';
UPDATE associated_attrs SET general_info = '' where attr_title = 'event_end';
UPDATE associated_attrs SET general_info = '' where attr_title = 'all_day';
UPDATE associated_attrs SET general_info = '' where attr_title = 'attendees';
UPDATE associated_attrs SET general_info = '' where attr_title = 'date_start';
UPDATE associated_attrs SET general_info = '' where attr_title = 'date_end';
UPDATE associated_attrs SET general_info = '' where attr_title = 'date';
UPDATE associated_attrs SET general_info = '' where attr_title = 'events';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListingID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListOfficeAOR';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListingImages';
UPDATE associated_attrs SET general_info = '' where attr_title = 'partner_group_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_group_name';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_group_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'transient';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_contact_removal';
UPDATE associated_attrs SET general_info = '' where attr_title = 'updated_contacts';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_partner_alias';
UPDATE associated_attrs SET general_info = '' where attr_title = 'is_partner_default';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_listing_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'underscore_response';
UPDATE associated_attrs SET general_info = '' where attr_title = 'LotSizeAcres';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsFull';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsHalf';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsOneQuarter';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsPartial';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsThreeQuarter';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsTotalInteger';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BathroomsTotal';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BedroomsTotal';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PublicTitle';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PublicRemarks';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ModificationTimestamp';
UPDATE associated_attrs SET general_info = '' where attr_title = 'StatusChangeDate';
UPDATE associated_attrs SET general_info = '' where attr_title = 'InternetAddressDisplayYN';
UPDATE associated_attrs SET general_info = '' where attr_title = 'DaysOnMarket';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListingContractDate';
UPDATE associated_attrs SET general_info = '' where attr_title = 'CreatedDate';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ElementarySchool';
UPDATE associated_attrs SET general_info = '' where attr_title = 'GarageSpaces';
UPDATE associated_attrs SET general_info = '' where attr_title = 'WaterfrontYN';
UPDATE associated_attrs SET general_info = '' where attr_title = 'HighSchool';
UPDATE associated_attrs SET general_info = '' where attr_title = 'AssociationFee';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListOfficeName';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListPrice';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListAgentFullName';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListAgentUUID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListAgentOfficeID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListAgentMoxiWorksOfficeID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SecondaryListAgentFullName';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SecondaryListAgentUUID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SchoolDistrict';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Address';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Address2';
UPDATE associated_attrs SET general_info = '' where attr_title = 'City';
UPDATE associated_attrs SET general_info = '' where attr_title = 'CountyOrParish';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Latitude';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Longitude';
UPDATE associated_attrs SET general_info = '' where attr_title = 'StateOrProvince';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PostalCode';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Community';
UPDATE associated_attrs SET general_info = '' where attr_title = 'LotSizeSquareFeet';
UPDATE associated_attrs SET general_info = '' where attr_title = 'InternetEntireListingDisplayYN';
UPDATE associated_attrs SET general_info = '' where attr_title = 'MiddleOrJuniorSchool';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListOfficeAORArea';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PoolYN';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PropertyType';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PropertyType';
UPDATE associated_attrs SET general_info = '' where attr_title = 'TaxYear';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SingleStory';
UPDATE associated_attrs SET general_info = '' where attr_title = 'LivingArea';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ViewYN';
UPDATE associated_attrs SET general_info = '' where attr_title = 'YearBuilt';
UPDATE associated_attrs SET general_info = '' where attr_title = 'OnMarket';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Status';
UPDATE associated_attrs SET general_info = '' where attr_title = 'MoxiWorksListingId';
UPDATE associated_attrs SET general_info = '' where attr_title = 'AgentCreatedListing';
UPDATE associated_attrs SET general_info = '' where attr_title = 'VirtualTourURL';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SharedPartnerData';
UPDATE associated_attrs SET general_info = '' where attr_title = 'TaxParcelId';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ListingURL';
UPDATE associated_attrs SET general_info = '' where attr_title = 'PropertyFeatures';
UPDATE associated_attrs SET general_info = '' where attr_title = 'CompanyListingAttributes';
UPDATE associated_attrs SET general_info = '' where attr_title = 'OpenHouse';
UPDATE associated_attrs SET general_info = '' where attr_title = 'ImagesLastModified';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerCommissionType';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerCommissionValue';
UPDATE associated_attrs SET general_info = '' where attr_title = 'last_moxi_works_listing_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'shared_partner_data_updated_since';
UPDATE associated_attrs SET general_info = '' where attr_title = 'market_status';
UPDATE associated_attrs SET general_info = '' where attr_title = 'property_types';
UPDATE associated_attrs SET general_info = '' where attr_title = 'only_agent_created';
UPDATE associated_attrs SET general_info = '' where attr_title = 'coming_soon';
UPDATE associated_attrs SET general_info = '' where attr_title = 'FinalPage';
UPDATE associated_attrs SET general_info = '' where attr_title = 'Listings';
UPDATE associated_attrs SET general_info = '' where attr_title = 'id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'common_name';
UPDATE associated_attrs SET general_info = '' where attr_title = 'image_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'address2';
UPDATE associated_attrs SET general_info = '' where attr_title = 'county';
UPDATE associated_attrs SET general_info = '' where attr_title = 'alt_phone';
UPDATE associated_attrs SET general_info = '' where attr_title = 'email';
UPDATE associated_attrs SET general_info = '' where attr_title = 'phone';
UPDATE associated_attrs SET general_info = '' where attr_title = 'timezone';
UPDATE associated_attrs SET general_info = '' where attr_title = 'office_website';
UPDATE associated_attrs SET general_info = '' where attr_title = 'mailing_address';
UPDATE associated_attrs SET general_info = '' where attr_title = 'mailing_address2';
UPDATE associated_attrs SET general_info = '' where attr_title = 'mailing_city';
UPDATE associated_attrs SET general_info = '' where attr_title = 'mailing_zip';
UPDATE associated_attrs SET general_info = '' where attr_title = 'mailing_state';
UPDATE associated_attrs SET general_info = '' where attr_title = 'logo_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'offices';
UPDATE associated_attrs SET general_info = '' where attr_title = 'created_after';
UPDATE associated_attrs SET general_info = '' where attr_title = 'created_before';
UPDATE associated_attrs SET general_info = '' where attr_title = 'updated_after';
UPDATE associated_attrs SET general_info = '' where attr_title = 'updated_before';
UPDATE associated_attrs SET general_info = '' where attr_title = 'include_times';
UPDATE associated_attrs SET general_info = '' where attr_title = 'type';
UPDATE associated_attrs SET general_info = '' where attr_title = 'presentations';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SoldDate';
UPDATE associated_attrs SET general_info = '' where attr_title = 'SoldPrice';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerAgentFullName';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerAgentUUID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerAgentOfficeName';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerAgentOfficeID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'BuyerAgentMoxiWorksOfficeID';
UPDATE associated_attrs SET general_info = '' where attr_title = 'sold_since';
UPDATE associated_attrs SET general_info = '' where attr_title = 'sold_before';
UPDATE associated_attrs SET general_info = '' where attr_title = 'include_buyer_listings';
UPDATE associated_attrs SET general_info = '' where attr_title = 'partner_task_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'due_at';
UPDATE associated_attrs SET general_info = '' where attr_title = 'duration';
UPDATE associated_attrs SET general_info = '' where attr_title = 'description';
UPDATE associated_attrs SET general_info = '' where attr_title = 'completed_at';
UPDATE associated_attrs SET general_info = '' where attr_title = 'due_date_start';
UPDATE associated_attrs SET general_info = '' where attr_title = 'due_date_end';
UPDATE associated_attrs SET general_info = '' where attr_title = 'tasks';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_team_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'address1';
UPDATE associated_attrs SET general_info = '' where attr_title = 'fax';
UPDATE associated_attrs SET general_info = '' where attr_title = 'photo_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'alt_email';
UPDATE associated_attrs SET general_info = '' where attr_title = 'website_url';
UPDATE associated_attrs SET general_info = '' where attr_title = 'active';
UPDATE associated_attrs SET general_info = '' where attr_title = 'has_agent_association';
UPDATE associated_attrs SET general_info = '' where attr_title = 'has_web_data';
UPDATE associated_attrs SET general_info = '' where attr_title = 'has_favorites';
UPDATE associated_attrs SET general_info = '' where attr_title = 'has_searches';
UPDATE associated_attrs SET general_info = '' where attr_title = 'moxi_works_user_id';
UPDATE associated_attrs SET general_info = '' where attr_title = 'associated_agent_uuid';
UPDATE associated_attrs SET general_info = '' where attr_title = 'favorite_listing_ids';
UPDATE associated_attrs SET general_info = '' where attr_title = 'saved_searches';