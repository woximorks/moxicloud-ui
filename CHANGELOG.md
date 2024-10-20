# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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