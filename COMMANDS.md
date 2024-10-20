rails g scaffold AssociatedAttr attr_title:string associated_endpoints:json general_info:json

rails g controller Actionlog index --skip-routes
rails g controller Agent index --skip-routes
rails g controller Brand index --skip-routes
rails g controller Buyertransaction index --skip-routes
rails g controller Company index --skip-routes
rails g controller Contact index --skip-routes
rails g controller Email index --skip-routes
rails g controller Event index --skip-routes
rails g controller Gallery index --skip-routes
rails g controller Group index --skip-routes
rails g controller Leadsource index --skip-routes
rails g controller listing index --skip-routes
rails g controller office index --skip-routes
rails g controller presentationlog index --skip-routes
rails g controller sellertransaction index --skip-routes
rails g controller soldlisting index --skip-routes
rails g controller task index --skip-routes
rails g controller team index --skip-routes
rails g controller webuser index --skip-routes

rails g migration addEndpointInfoToAssociatedAttrs actionlog_info agent_info brand_info buyertransaction_info company_info contact_info email_info event_info gallery_info group_info leadsource_info listing_info office_info presentationlog_info sellertransaction_info soldlisting_info task_info team_info webuser_info