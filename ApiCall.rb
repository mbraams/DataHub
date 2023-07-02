require 'httParty'
module ApiCall
  def self.call(ontId, apiUrl)   
    # Request with error handling
    response = HTTParty.get("#{apiUrl}#{ontId}")
    
    if response.code != 200
      error_message = "Status #{response.code} was returned, make sure entered Ontology ID is valid and the API is not down."
      STDERR.write error_message
      raise error_message
    else 
      json = {"title": response['config']['title'], "description": response['config']['description'], "numberOfTerms": response['numberOfTerms'], "status": response['status'], }.to_json
      STDOUT.write json
    end
  end
end