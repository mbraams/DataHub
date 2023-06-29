require_relative 'ApiCall'

ontId = ARGV[0]
ApiUrl = "http://www.ebi.ac.uk/ols/api/ontologies/"

ApiCall.call(ontId, ApiUrl)
