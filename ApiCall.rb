require 'httParty'
module ApiCall
  def self.call(ontId, apiUrl)   
    # Request with error handling
    response = HTTParty.get("#{apiUrl}#{ontId}")
    if response.code != 200
      # In case this application is being called by a different app we could update it to throw an error and return the status.
      STDOUT.write "Status #{response.code} was returned, make sure entered Ontology ID is valid and the API is not down."
    else 
      json = {"title": response['config']['title'], "description": response['config']['description'], "numberOfTerms": response['numberOfTerms'], "status": response['status'], }.to_json
      STDOUT.write json
    end
  end
end