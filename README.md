# Wildlife Tracker Challenge

###### The Forest Service is considering a proposal to place in conservancy a forest of virgin Douglas fir just outside of Portland, Oregon. Before they give the go ahead, they need to do an environmental impact study. They've asked you to build an API the rangers can use to report wildlife sightings.

## Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

 <!-- rails new rails_api_rangers_wildlife -d postgresql -T
 cd rails_api_rangers_wildlife
 rails db:create
 git remote add origin https://github.com/learn-academy-2023-foxtrot/wildlife-tracker-XenaSit.git
 git add .
 git commit -m "initial commit to the wild life of the ranger"
 git push origin main
 code .
 git branch

 git checkout -b animal-crud-actions -->
### Branch: animal-crud-actions 
<!-- bundle add rspec-rails
rails g rspec:install -->

Acceptance Criteria

Create a resource for animal with the following information: 

<!-- rails g resource WildLife common_name:string scientific_binomial:string
rails db:migrate
rails routs -E
rails c -->

Can see the data response of all the animals

Can create a new animal in the database
<!-- 
WildLife.create(common_name: 'Lion', scientific_binomial: 'Panthera leo')
WildLife.create(common_name: 'House mouse', scientific_binomial: 'Mus musculus')
WildLife.create(common_name: 'Mute Swan', scientific_binomial: 'Cygnus olor')
WildLife.create(common_name: 'Screaming hairy armadillo', scientific_binomial: 'Chaetophractus vellerosus')
WildLife.create(common_name: 'Hellbender salamander', scientific_binomial: 'Cryptobranchus alleganiensis') -->

Can update an existing animal in the database

Can remove an animal entry in the database



learnacademy@MacBook-Air-5 rails_api_rangers_wildlife % rails routes -E
--[ Route 1 ]------------------------------------------------------------------------------------------------------------
Prefix            | wild_lives
Verb              | GET
URI               | /wild_lives(.:format)
Controller#Action | wild_lives#index
--[ Route 2 ]------------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | POST
URI               | /wild_lives(.:format)
Controller#Action | wild_lives#create
--[ Route 3 ]------------------------------------------------------------------------------------------------------------
Prefix            | new_wild_life
Verb              | GET
URI               | /wild_lives/new(.:format)
Controller#Action | wild_lives#new
--[ Route 4 ]------------------------------------------------------------------------------------------------------------
Prefix            | edit_wild_life
Verb              | GET
URI               | /wild_lives/:id/edit(.:format)
Controller#Action | wild_lives#edit
--[ Route 5 ]------------------------------------------------------------------------------------------------------------
Prefix            | wild_life
Verb              | GET
URI               | /wild_lives/:id(.:format)
Controller#Action | wild_lives#show
--[ Route 6 ]------------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | PATCH
URI               | /wild_lives/:id(.:format)
Controller#Action | wild_lives#update
--[ Route 7 ]------------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | PUT
URI               | /wild_lives/:id(.:format)
Controller#Action | wild_lives#update
--[ Route 8 ]------------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | DELETE
URI               | /wild_lives/:id(.:format)
Controller#Action | wild_lives#destroy
--[ Route 9 ]------------------------------------------------------------------------------------------------------------
Prefix            | turbo_recede_historical_location
Verb              | GET
URI               | /recede_historical_location(.:format)
Controller#Action | turbo/native/navigation#recede
--[ Route 10 ]-----------------------------------------------------------------------------------------------------------
Prefix            | turbo_resume_historical_location
Verb              | GET
URI               | /resume_historical_location(.:format)
Controller#Action | turbo/native/navigation#resume
--[ Route 11 ]-----------------------------------------------------------------------------------------------------------
Prefix            | turbo_refresh_historical_location
Verb              | GET
URI               | /refresh_historical_location(.:format)
Controller#Action | turbo/native/navigation#refresh
--[ Route 12 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_postmark_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/postmark/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/postmark/inbound_emails#create
--[ Route 13 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_relay_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/relay/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/relay/inbound_emails#create
--[ Route 14 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_sendgrid_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/sendgrid/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/sendgrid/inbound_emails#create
--[ Route 15 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_mandrill_inbound_health_check
Verb              | GET
URI               | /rails/action_mailbox/mandrill/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/mandrill/inbound_emails#health_check
--[ Route 16 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_mandrill_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/mandrill/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/mandrill/inbound_emails#create
--[ Route 17 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_mailgun_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)
Controller#Action | action_mailbox/ingresses/mailgun/inbound_emails#create
--[ Route 18 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_conductor_inbound_emails
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#index
--[ Route 19 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | POST
URI               | /rails/conductor/action_mailbox/inbound_emails(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#create
--[ Route 20 ]-----------------------------------------------------------------------------------------------------------
Prefix            | new_rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/new(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#new
--[ Route 21 ]-----------------------------------------------------------------------------------------------------------
Prefix            | edit_rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#edit
--[ Route 22 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#show
--[ Route 23 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | PATCH
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#update
--[ Route 24 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | PUT
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#update
--[ Route 25 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | DELETE
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#destroy
--[ Route 26 ]-----------------------------------------------------------------------------------------------------------
Prefix            | new_rails_conductor_inbound_email_source
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails/sources#new
--[ Route 27 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_conductor_inbound_email_sources
Verb              | POST
URI               | /rails/conductor/action_mailbox/inbound_emails/sources(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails/sources#create
--[ Route 28 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_conductor_inbound_email_reroute
Verb              | POST
URI               | /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)
Controller#Action | rails/conductor/action_mailbox/reroutes#create
--[ Route 29 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_conductor_inbound_email_incinerate
Verb              | POST
URI               | /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)
Controller#Action | rails/conductor/action_mailbox/incinerates#create
--[ Route 30 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_service_blob
Verb              | GET
URI               | /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/redirect#show
--[ Route 31 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_service_blob_proxy
Verb              | GET
URI               | /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/proxy#show
--[ Route 32 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | GET
URI               | /rails/active_storage/blobs/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/redirect#show
--[ Route 33 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_blob_representation
Verb              | GET
URI               | /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/redirect#show
--[ Route 34 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_blob_representation_proxy
Verb              | GET
URI               | /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/proxy#show
--[ Route 35 ]-----------------------------------------------------------------------------------------------------------
Prefix            | 
Verb              | GET
URI               | /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/redirect#show
--[ Route 36 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_disk_service
Verb              | GET
URI               | /rails/active_storage/disk/:encoded_key/*filename(.:format)
Controller#Action | active_storage/disk#show
--[ Route 37 ]-----------------------------------------------------------------------------------------------------------
Prefix            | update_rails_disk_service
Verb              | PUT
URI               | /rails/active_storage/disk/:encoded_token(.:format)
Controller#Action | active_storage/disk#update
--[ Route 38 ]-----------------------------------------------------------------------------------------------------------
Prefix            | rails_direct_uploads
Verb              | POST
URI               | /rails/active_storage/direct_uploads(.:format)
Controller#Action | active_storage/direct_uploads#create

## Story 2: In order to track wildlife sightings, as a user of the API, I need to manage animal sightings.

Branch: sighting-crud-actions

Acceptance Criteria

Create a resource for animal sightings with the following information: latitude, longitude, date
Hint: An animal has_many sightings (rails g resource Sighting animal_id:integer ...)
Hint: Date is written in Active Record as yyyy-mm-dd (“2022-07-28")
Can create a new animal sighting in the database
Can update an existing animal sighting in the database
Can remove an animal sighting in the database

## Story 3: In order to see the wildlife sightings, as a user of the API, I need to run reports on animal sightings.

Branch: animal-sightings-reports

Acceptance Criteria

Can see one animal with all its associated sightings
Hint: Checkout this example on how to include associated records
Can see all the all sightings during a given time period
Hint: Your controller can use a range to look like this:
class SightingsController < ApplicationController
  def index
    sightings = Sighting.where(date: params[:start_date]..params[:end_date])
    render json: sightings
  end
end
Hint: Be sure to add the start_date and end_date to what is permitted in your strong parameters method
Hint: Utilize the params section in Postman to ease the developer experience
Hint: Routes with params
Stretch Challenges

## Story 4: In order to see the wildlife sightings contain valid data, as a user of the API, I need to include proper specs.

Branch: animal-sightings-specs

Acceptance Criteria
Validations will require specs in spec/models and the controller methods will require specs in spec/requests.

Can see validation errors if an animal doesn't include a common name and scientific binomial
Can see validation errors if a sighting doesn't include latitude, longitude, or a date
Can see a validation error if an animal's common name exactly matches the scientific binomial
Can see a validation error if the animal's common name and scientific binomial are not unique
Can see a status code of 422 when a post request can not be completed because of validation errors
Hint: Handling Errors in an API Application the Rails Way

## Story 5: In order to increase efficiency, as a user of the API, I need to add an animal and a sighting at the same time.

Branch: submit-animal-with-sightings

Acceptance Criteria

Can create new animal along with sighting data in a single API request
Hint: Look into accepts_nested_attributes_for