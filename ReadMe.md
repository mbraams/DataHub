# About this application
This application makes an API call to the Ontology Lookup Service REST API.
In order to run it on commandline you need to run the main.rb and supply the Ontology ID of Ontology you wish more details about.
Example: ruby main.rb ado
The output will be either a json string with the title, the ontology description, number of terms, and current status if the request succeeds, or an error gets thrown with the status code if it fails. The main.rb also validates if an argument is passed in on the command line, and throws an error if it is null or blank. 

# About the docker
Included in this folder is a Dockerfile, which supports the creation of a Docker container. When using this, please make sure to still include the command line argument in the "docker run {container_name} {ontology_id_here}".
