# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Reference links:
https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm
https://www.udemy.com

*Automated Testing -
		 unit, functional, integration
unit - models, individual units of the application (like a validation) are working
functional - controllers, a function is working , for example is before_action stopping to a non-logged in user from performing an action  
integration - views, full features, start to finish of a business process, example: a user signs up for the app.

* :dependent
* Controls what happens to the associated object when its owner is destroyed:
* :destroy causes the associated object to also be destroyed
* :delete causes the associated object to be deleted directly from the database (so callbacks will not execute)
* :nullify causes the foreign key to be set to NULL. Callbacks are not executed.
* :restrict_with_exception causes an exception to be raised if there is an associated record
* :restrict_with_error causes an error to be added to the owner if there is an associated object
