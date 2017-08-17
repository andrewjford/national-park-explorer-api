# National Park Explorer API

Front end repo: https://github.com/andrewjford/national-park-explorer-react

This is a Rails API for my National Park Explorer app. See above for the react front end repository. It is setup to use Postgresql. To properly populate/prepare the database for the front end, the following steps are necessary.

  1. migrate Database
  2. obtain an API key for the National Park Service Data API
  3. Set the key in environment or nps_service.rb
  4. run the #importPark method located in class NpsService (app/services/nps_service.rb)
  5. run the #importVisitorCenters method located in class NpsService (app/services/nps_service.rb)

These steps will pull data from the National Park Service API that the React front end expects from the backend server.
