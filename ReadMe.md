# About this application
This application makes an API call to the Ontology Lookup Service REST API.
In order to run it on commandline you need to run the main.rb and supply the Ontology ID of Ontology you wish more details about.
Example: ruby main.rb ado
The output will be either a json string with the title, the ontology description, number of terms, and current status if the request succeeds, or an error message with the statuscode if it fails. This error message could easily be replaced by a try/catch block and return a status if needed for another application to call on this app, but I was unsure whether this was needed.
