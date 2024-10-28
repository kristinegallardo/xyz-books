# README

### Things you need to install before cloning repo:

* Ruby version - `"3.1.2"`
* Rails version - `"~> 7.0.8", ">= 7.0.8.5"`
* PostgreSQL -  `"1.5.8"`

### Clone repo, run: `git clone: git@github.com:kristinegallardo/xyz-books.git`

### Other gem installed and included in gemset
  * `"tailwindcss-rails", "~> 2.0"` - for UI integration
  * `"isbn-tools"` - for ISBN convertion and validation
  * `"rspec-rails"` - for test scripting
  * `'factory_bot_rails'` - for creating dummy data used in test scripts
  * `'faker'` - for setting values on each attributes in creating test scripts
  
### Before Running the application, please run the following commands for rails gemset, UI setup and database creation and seeding of sample data.
  * `bundle install` - for configuring specified gemset in Gemfile
  * `./bin/rails tailwindcss:install` - for installing tailwindcss needed for UI display
  * `rails assets:precompile` - precompiling assets
  * `bundle exec rake assets:clean` - cleaning assets
  * `rails db:create db:migrate db:seed` - creating database, migrating schema, and seeding initial records in database
 
### Accessing the app
  * Run server: `bin/dev`
  * Go to: `http://localhost:3000` for landing page

  <img width="1726" alt="Screenshot 2024-10-28 at 18 39 36" src="https://github.com/user-attachments/assets/0821c6c4-36d3-491e-946f-18838c5f2f74">

### Accessing Endpoints (sample images are from Postman app)
  * Search Endpoint: `http://localhost:3000/search`
  - accepts parameters:
     * `api: true` - for JSON response format and 
     * `isbn: <ISBN-NUMBER>` - can be ISBN-10 or ISBN-13

  `SUCCESSFUL RESPONSE WITH ISBN-13`
  
  <img width="1384" alt="Screenshot 2024-10-28 at 18 33 24" src="https://github.com/user-attachments/assets/77744f50-1194-4c0c-b747-e202cc27935d">

  `SUCCESSFUL RESPONSE WITH ISBN-10`
  <img width="1384" alt="Screenshot 2024-10-28 at 18 34 20" src="https://github.com/user-attachments/assets/1b2b4012-b348-4651-bf7d-48224d7c5ef5">
  

  `ERROR RESPONSE WITH VALID ISBN BUT IS NOT SAVED IN DATABASE`
  
  <img width="1371" alt="Screenshot 2024-10-28 at 18 26 27" src="https://github.com/user-attachments/assets/9b11fce5-4d9a-4aac-8349-1e79e653df23">

  `ERROR RESPONSE WITH INVALID ISBN`
  
  <img width="1395" alt="Screenshot 2024-10-28 at 18 27 24" src="https://github.com/user-attachments/assets/00536285-2618-4d69-aa11-359a3a93f01a">

  `ERROR RESPONSE WITH EMPTY ISBN`
  
  <img width="1380" alt="Screenshot 2024-10-28 at 18 32 13" src="https://github.com/user-attachments/assets/edead640-5748-45f0-910e-d4540125764b">

### UI View for Book Details and Invalid Message Display

  `SUCCESSFUL RESPONSE WITH SEARCH RESULT WITH ISBN-13`
  
  <img width="1727" alt="Screenshot 2024-10-28 at 18 42 20" src="https://github.com/user-attachments/assets/4735a4e8-3d1f-451d-bc56-1edb47631a18">

  `SUCCESSFUL RESPONSE WITH SEARCH RESULT WITH ISBN-10`
  
  <img width="1721" alt="Screenshot 2024-10-28 at 18 41 42" src="https://github.com/user-attachments/assets/f47c00cd-bbdc-4198-81c6-27abef65f8d7">

  `ERROR RESPONSE WITH VALID ISBN-13 BUT IS NOT SAVED IN DATABASE`
  
  <img width="1728" alt="Screenshot 2024-10-28 at 18 41 14" src="https://github.com/user-attachments/assets/6dd2d9d5-91ae-4add-b399-338535fda0d9">

  `ERROR RESPONSE WITH INVALID ISBN`
  
  <img width="1709" alt="Screenshot 2024-10-28 at 18 41 24" src="https://github.com/user-attachments/assets/163925c2-d3b3-4766-89ba-fe1ed6d0945d">
 
