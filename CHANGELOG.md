# [1.2.0+3](https://github.com/esmaeil-ahmadipour/clean_architecture_example/pull/6)

### Feature
- **userDetails**: Added and created the `user_details` module:
  - Separated route files for better organization.
  - Changed shared preferences key for improved clarity.
  - Created the `user_details` module with a mocked API call.
  - Added some customized widgets to enhance user interaction.

### Chore
- Added the `shimmer` package to improve UI loading animations.

### Test
- **core:base:services**: Added safety test for the care API:
  - Ensured the care API call always uses the real API.
  - Excluded mock API during the pipeline execution.

# [1.1.0+2](https://github.com/esmaeil-ahmadipour/clean_architecture_example/pull/4)

### Feature
- Integrated phone number validation in the login screen:
  - Added phone number validator.
  - Updated submit button behavior based on validation status.
  - Displayed error messages for invalid input.
- Redesigned login screen UI and implemented the login feature.
- Fixed splash screen UI and improved routing in the app.

### Chore
- Added RxDart as a validator tool.
- Installed essential dependencies:
  - `dartz`: To handle success or error states in the UI.
  - `dio`: For API structure.
  - `rxdart`: To enhance validation performance.
  - `build_runner/json_serializable`: For serialization automation.
- Added Linux module support to Flutter development.

# [1.0.0+1](https://github.com/esmaeil-ahmadipour/clean_architecture_example/pull/2)

### Feature  
  - Implemented `login`, `splash`, and `details` screens with `go_router` navigation.  
  - Added `AppRouteManager` and `AppRoute` enum for centralized route management.  
  - Integrated `shared_preferences` for login state persistence.  
  - Created a centralized file for UI text and strings to improve maintainability.  
  - Added `SharedPreferencesKeys` and `SharedPreferencesUtil` for streamlined shared preferences management.  
  - Enabled Flutter web export by adding the web module.  

### Update  
- Added initial project files to establish the base structure.  
- Updated CI pipeline to check linter, tests, and code style.  

### Chore  
- Configured linter rules using `analysis_options.yaml`.  
- Installed essential packages for project setup:  
  - `go_router`, `shared_preferences`, `get_it`, `flutter_bloc`, `equatable`, `freezed`, and `freezed_annotation`.  

### Documentation  
- Added project description to the `README`.  

### Test  
- Added a sample test to verify the initial setup.  

### Style  
- Reformatted and re-arranged code styles to align with project standards. 
