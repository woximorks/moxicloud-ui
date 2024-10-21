# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.4] 2024/10/21
### Drilling down associated information - ActionLog as a template

## Changed
- product_info.sql
    - Overall structure established for product_info field
    - Template provided to quickly update a field as necessary
- update_product_info.rake
    - Single paragraph for the moment
- actionlog/index.html.erb
    - Displaying any related info on a product level
- README.md
    - Some updates to documentation, nothing fancy

## [1.2.3] 2024/10/21
### Easy as 123

## Changed
- README.md
    - Updated documentation related to this recently added product_info field, and other database related documentation also provided for clarity as to what the user can expect from each table
- product_info.sql
    - Correct update statement provided that can change the record as necessary

## [1.2.2] 2024/10/21
### Product Info displaying on front end for ActionLog

### Changed
- {#endpoint}/index.html.erb
    - Added section related to Product Info, that displays if exists

## [1.2.1] 2024/10/21
### Look ma' I can run rake tasks

### Added
- update_product_info.rake
    - This rake task pulls data from the associated_endpoints table

### Changed
- update_product_info.rake
    - pasted code generated from chatGPT :thumbsup:
    - This pulled all data from the associated_endpoints table, and generated the template necessary within the product_info column to quickly identify which fields need updates.

## [1.1.1] 2024/10/21
### Migration to add Product Associations, Adding postgreSQL update file, other minor patches

### Added
- product_info.sql
- migration files related to product_info migration

### Changed
- associated_attrs_controller.rb, show.html.erb
    - Removed ability to destroy attributes from the front end for now.
    - Also removed create action from the controller.
- product_info.sql
    - This command can be utilized to update the 'product_info' column of associated_attrs table from the database directly.

## [1.0.1] 2024/10/20
### Procfile

### Added
- Procfile

## [1.0.0] 2024/10/20
### Initial Database Structure

## Changed
- associated_attr_info.sql
    - nickname missing info altogether
- README.md
    - Initial documentation added

## [Unreleased] 2024/10/20
### associated_attr show updates based on new DB fields

### Changed
- associated_attrs/_associated_attr.html.erb
    - Updated to show string for each {#endpoint}_info field, if information exists.

## [Unreleased] 2024/10/20
### Continuing process to add endpoint related information to DB
#### PresentationLog -> WebUser
- {#endpoint}.html.erb
    - Updates made as necessary...
- associated_attr_info.sql
    - PresentationLog -> WebUser

## [Unreleased] 2024/10/20
### Continuing process to add endpoint related information to DB
#### Listing -> Office
- {#endpoint}.html.erb
    - Updates made as necessary...
- associated_attr_info.sql
    - Listing -> Office

## [Unreleased] 2024/10/20
### Continuing process to add endpoint related information to DB
#### EmailCampaign -> LeadSource

### Changed
- {#endpoint}.html.erb
    - emailcampaign updated to remove unnecessary comment
    - Updates made as necessary...
- associated_attr_info.sql
    - EmailCampaign -> LeadSource

## [Unreleased] 2024/10/20
### Continuing process from below update, found and sorted out a migration issue. Contact and EmailCampaign endpoint now have some basic info

### Added
- db/migrate/2024..._add_endpoint...
    - This is a new one that features emailcampaign_info instead of email_info

### Changed
- README.md
    - Added to documentation - initial setup, configuration info, etc
- associated_attr_info.sql
    - Contact base info added
- app/views/{#endpoint}.html.erb
    - Updated logic to display contents appropriately

### Deleted
- db/migrate/2024..._add_endpoint...
    - This is the old one that features email_info :thumbsdown:

## [Unreleased] 2024/10/19
### Migration to add endpoint specific information to DB, SQL statements to feed DB
#### ActionLog -> Company endpoints have some basic info

### Added
- associated_attr_info.sql
- db/migrate/202...add_endpoint_to...
    - updated DB to include any specific information for each endpoint that may not apply globally

### Changed
- associated_attr_info.sql
    - Added update statements for general_info field for all associated_attrs
    - Added endpoint specific statements for {#endpoint}_info on that file based on migration ran
- db/schema.rb
    - changed general_info to string
- views/{#endpoint}/index.html.erb
    - Updated to more appropriately reflect information displayed

## [Unreleased] 2024/10/19
### Separating each endpoint, and displaying related attributes, SellerTransaction missing

### Added
- views/{#endpoint}/index.html.erb
- {#endpoint}_controller.rb
- _nav.html.erb

### Changed
- views/{#endpoint}/index.html.erb
    - displays the associated attributes for each {#endpoint}
- routes.rb
    - set the route that displays each page to endpoints/{#endpoint}
- README.md
    - found a rather large hole

### Fixed
- company.rb
    - Was throwing stuff at ActionLog oopsies
- soldlistings.rb
    - That should be singular. All of that.

## [Unreleased] 2024/10/19
### 

### Added
- pg_search gem
    - Gemfile
    - Gemfile.lock

### Changed
- readme
    - referenced pg search as a dependency
- associated_attrs_controller.rb
    - search method to check DB against assocaiated_attrs -> attr_title
- associated_attrs/index.html.erb
    - search bar implemented
- routes.rb
    - updated to make pg_search work

## [Unreleased] 2024/10/19
### Other seed files now seed the db with '{#seed_file}' into associated_endpoint field

### Added
- 

### Changed
- 

### Fixed
- seeds/{#endpoint}.rb
    - This populates 'Associated Endpoints' DB field appropriately with the name of the Endpoint.
    - Checks to ensure data doesn't already exist with the same name (string value)
    - Does not overwrite any existing data when the update is made
- This changelog to have a correct title

## [Unreleased] 2024/10/19
### ActionLog now seeds with 'ActionLog' associated_endpoint

### Added
- associated_attrs scaffold
- seeds/{#endpoint}.rb

### Changed
- associated_attrs_controller.rb
    - removed edit, update actions
    - removed edit, update actions from before_action
- routes.rb
    - removed edit and update related routes
    - set index to associated_attrs
- seeds.rb
    - referencing /seeds/files
- seeds/{#endpoint}.rb
    - removed referenced fields that don't exist

### Fixed
- seeds/actionlog.rb
    - This populates 'Associated Endpoints' field appropriately
    - Checks to ensure data doesn't already exist with the same name (string value)
    - Does not overwrite any existing data when the update is made