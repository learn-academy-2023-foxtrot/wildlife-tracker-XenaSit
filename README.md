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

Create a resource for animal with the following information: BOOM! Done!

<!-- rails g resource WildLife common_name:string scientific_binomial:string
rails db:migrate
rails routs -E
rails c -->

Can see the data response of all the animals => WildLife.all
<!-- 
class WildLivesController < ApplicationController

rails c
WildLife.create(common_name: 'Lion', scientific_binomial: 'Panthera leo')
WildLife.create(common_name: 'House mouse', scientific_binomial: 'Mus musculus')
WildLife.create(common_name: 'Mute Swan', scientific_binomial: 'Cygnus olor')
WildLife.create(common_name: 'Screaming hairy armadillo', scientific_binomial: 'Chaetophractus vellerosus')
WildLife.create(common_name: 'Hellbender salamander', scientific_binomial: 'Cryptobranchus alleganiensis')

class WildLivesController   
    def index
        wild = WildLife.all
        render json: wild
    end

    def show
        wild = WildLife.find(params[:id])
        render json: wild
    end
end -->

Can create a new animal in the database (POST)

<!-- class WildLivesController
        def create 
        wild = WildLife.create(wild_params)
        if wild.valid?
            render json: wild
        else
            render json: wild.error
        end
    end

    private

    def wild_params
        params.require(:wild_life).permit(:common_name, :scientific_binomial)
    end

end -->

Can update an existing animal in the database (PATCH)
<!-- 
    def update
        wild = WildLife.find(params[:id])
        wild.update(wild_params)
        if wild.valid?
            render json: wild
        else
            render json: wild.error
        end
    end -->

Can remove an animal entry in the database (DELETE)
<!-- 
    def destroy
        wild = WildLife.find(params[:id])
        
        if wild.destroy
            render json: wild
        else
            render json: wild.error
        end
    end
 -->
<!-- learnacademy@MacBook-Air-5 rails_api_rangers_wildlife % rails routes -E
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
 -->

## Story 2: In order to track wildlife sightings, as a user of the API, I need to manage animal sightings.

Branch: sighting-crud-actions

Acceptance Criteria

Create a resource for animal sightings with the following information: 
    - latitude, 
    - longitude, 
    - date

rails g resource Sighting animal_id:integer latitude:string longitude:string date:string

    Hint: An animal has_many sightings (rails g resource Sighting animal_id:integer ...)
    Hint: Date is written in Active Record as yyyy-mm-dd (“2022-07-28")

Can create a new animal sighting in the database

animal_id:integer latitude:string longitude:string date:string

animal1 = WildLife.find(1)
animal2 = WildLife.find(2)
animal3 = WildLife.find(3)
animal4 = WildLife.find(4)
animal5 = WildLife.find(5)
animal7 = WildLife.find(7)

animal1.sightings.create(latitude:"51.89°N", longitude:"8.3132°S", date:"2009-07-28") boom
animal1.sightings.create(latitude:"34°03′N", longitude:"118°15′W", date:"2012-07-15") boom
animal1.sightings.create(latitude:"51.89°N", longitude:"117°10′W", date:"2018-09-11") boom
animal2.sightings.create(latitude:"33°27′N", longitude:"112°04′W", date:"2001-01-01") boom
animal3.sightings.create(latitude:"28°38′N", longitude:"106°05′W", date:"2003-03-03") boom
animal4.sightings.create(latitude:"36°11′N", longitude:"115°08′W", date:"2004-04-04") boom
animal5.sightings.create(latitude:"35°07′N", longitude:"106°37′W", date:"2005-05-05") boom
animal5.sightings.create(latitude:"61°13′N", longitude:"149°54′W", date:"2007-07-07") boom
animal7.sightings.create(latitude:"21°19′N", longitude:"157°50′W", date:"2008-08-08") boom
animal7.sightings.create(latitude:"69°20′N", longitude:"88°135′E", date:"2023-12-12") boom

Can update an existing animal sighting in the database BOOM!!!!!
http://localhost:3000/sightings/1

Can remove an animal sighting in the database BOOM!!!

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