# RailsForce - App Template

### About

This is an App template for a Rails application that interacts with the Force.com platform.

* Implemented using:

 * [Bootstrap](http://twitter.github.com/bootstrap/)
 * [jQuery](http://jquery.com/)
 * [Databasedotcom Gem](https://github.com/heroku/databasedotcom)
 * [Cells](http://cells.rubyforge.org/)

### Getting Started

#### Download
1. <code>git clone git@github.com:jonathansnd/RailsForce_AppTemplate.git</code>
2. <code>cd RailsForce_AppTemplate</code>
3. <code>rails s</code>
4. Go to https://localhost:3000 and login to your salesforce org
5. You will need to generate your own keys and drop them in the lib/certs dir. Check out the README in that dir for more info

### Configuration from the environment

There are some environment variables under "/config/environments/" where you can define settings for :

 * API Version
 * Login URL
 * Consumer Keys

#### Working with a sandbox environment

If you're testing against a sandbox you must change the sfdc_login environment variable to https://test.salesforce.com

### Configuration of OAuth parameters

You can find all of the Omniauth related parameters in lib/forcedotcom