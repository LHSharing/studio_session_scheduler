
Devise Authentication Guide with GitHub OmniAuth for Rails Application
Go to the profile of Salma Elshahawy
Salma Elshahawy
May 27, 2018

Photo by Paul Carmona on Unsplash
Introduction
During my learning journey with Flatiron School, I was requested to design an application that follows Rails restful conventions. There was two pivotal requirements needed to successfully pass the application review assessment. One of the requirements was to create a secure registration mechanism using email, and the other one was to be able to register using third party app — ex. Github login. For the registration, I used Devise gem, and for third party login, I used OmniAuth-github gem. In this post, I will demonstrate how did I integrate devise with github-omniauth. Wishing to help future students to implement them smoothly.

This tutorial assumes that you have a background in rails RESTful routes, migration and ActiveRecord.
Setting Devise gem
Devise is a flexible authentication solution for Rails based on Warden — Devise homepage. You can build the authentication mechanism by yourself, but it will take a lot of time. The easiest way to know how to implement a new feature is to read the documentation. Devise has a well written documentation to follow. To start:

Add gem 'devise' to your gemfile.
Run bundle install to update your gemfile.lock.
Run rails generate devise:install this will create the registration folder for you. This command will construct a bunch of files in controller and config file.
You will see prompt in your terminal asking you weather you need more options like mailing and some other features. I will walkthrough the authentication only.
4. Generate the User model by running rails generate devise User

5. Create your migration rails db:create

6. Migrate rails db:migrate

If you following along, the migration file for devise yyyymmddhhmmss_devise_create_user.rb looks like the following:


db/migrate/yyyymmddhhmmss_create_devise_user.rb
Show your routes to make sure that everything is going fine.

Run rake routes -g devise


rake routes -g devise
Magically, we also had a nice login/signup page in our browser, you can see it if you run rails s

7. We will change the routes for login and signup from /users/login or /users/signup to /login and /signup. To do so, you have to follow these steps:

First, add the user :name attribute to devise migration table. To do that, run

rails db:drop #dropping your schema table .Then add the following line to the users table in the yyyymmddhhmmss_create_devise_table.rb.

t.string :name, null: false, default: ""
Run rails db:create then run rails db:migrate

Your file should look like that


db/migrate/yyyymmddhhmmss_create_devise_user.rb
Next, navigate to app/controllers and create a registrations_controller.rb. Construct a strong params methods for signup and update account.


controllers/registrations_controller.rb
Finally, let devise know about the new registration controller in the config/routes.rb file. Instead of devise_for :users make it like the following:


config/routes.rb
What we did is changing the scope method inside config/routes.
Check rake routes again, it should look like that:


config/routes
8. Run rails generate devise:views to generate views to the obtained routes.

The forms are generated automatically, you won’t have to write any code inside it — really magic.
Now, the authentication method is set, the user can signup/signin. 😃 👌

Authorization using Omni-Auth
We will implement authorization using third-party — Github allowing the user to register without writing their credentials. The gem used for authorization is omniauth-github gem. Let’s start:

I used Github authorization because it’s easy to implement; however you can pick whatever third party you want, the steps are almost the same.
Include gem 'omniauth-github' in your gemfile.
Run bundle install to include the gem into your gemfile.lock
Login to your github account, navigate to setting>Developer settings>OAuth Apps>New OAuth app — Github application page.

Fill in the application name, description.

For homePage URL

http://localhost:3000
For callback URL

http://localhost:3000/users/auth/github/callback
After that, click on Register application. Hence, you will redirect to the application page which has your client ID and Client secret. Copy these two numbers and paste them into config/initializers/devise.rb below omniauth comment.

config.omniauth :github, 'paste your client ID', 'paste your client secret', scope: 'user:email'
In controllers/callbacks_controller.rb write the callback function.

The method .from_omniauth() will be defined later on.

controllers/callbacks_controller.rb
Note that: this controller is shipped with devise, you will only define the github method.
Next up, you should add the columns “provider” (string) and “uid” (string) to your User model — Devise documentation.

rails g migration AddOmniauthToUsers provider:string uid:string
rake db:migrate
After configuring your strategy, you need to make your model (e.g. app/models/user.rb) omniauthable:

devise :database_authenticatable, :registerable,
:recoverable, :rememberable, :trackable, :validatable, :omniauthable
Almost done! you have to define the from_omniauth(auth) method that find or create the user from github

app/models/user.rb
Note that for user name and email, I used auth.info.params. That’s because the user personal information is stored into info hash(nested hash) looks like that.

inside binding.pry
Finally, add a link to sign in using github in the login form app/views/devise/sessions/new.html.erb

app/views/devise/sessions/new.html.erb
Now, if you check your routes for auth, it will be

rake routes -g auth
To make sure that everything is as expected you can check the url in the developer tool

YOU DID IT! Now your application have both authentication and authorization feature. Congratulations!

Hope that this post helped you figured out how to implement both devise and omniauth. Please show your support for keeping me motivated to write more contents by 👏 👏 👏 and following me on twitter on @salmaeng

RailsAuthenticationWeb DevelopmentGithubAPI
Go to the profile of Salma Elshahawy
Salma Elshahawy
Software Engineer at Cognizant. Write code in Java, Python, and some other cool languages. http://linkedin.com/in/salma-elshahawy

More from Salma Elshahawy
Follow these steps to build production-grade workflow with Docker and React
Go to the profile of Salma Elshahawy
Salma Elshahawy
Apr 1
Related reads
Getting Up And Running On Rails With RSpec and Capybara
Go to the profile of Spike Burton
Spike Burton
Mar 5
Related reads
Refactoring views with Ruby on Rails’ ActiveSupport helpers
Go to the profile of Scott Matthewman
Scott Matthewman
Mar 8, 2018
Responses