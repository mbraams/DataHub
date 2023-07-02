require_relative 'ApiCall'

ontId = ARGV[0]
ApiUrl = "http://www.ebi.ac.uk/ols/api/ontologies/"

if ontId == nil || ontId == ""
    error_message = "No valid argument provided for Ontology ID"
    STDERR.write(error_message)
    raise error_message
end

ApiCall.call(ontId, ApiUrl)
