# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] 2024/10/19
### ActionLog now seeds with 'ActionLog' associated_endpoint

### Added
- 

### Changed
- 

### Fixed
- seeds/{#endpoint}.rb
    - This populates 'Associated Endpoints' field appropriately with the name of the Endpoint.
    - Checks to ensure data doesn't already exist with the same name (string value)
    - Does not overwrite any existing data when the update is made

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