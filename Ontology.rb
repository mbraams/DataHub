class Ontology 
   def initialize(title, description, number_of_terms, status) 
    @title = title
    @description = description
    @number_of_terms = number_of_terms
    @status = status
   end

   def get_title
    return title
   end

   def get_description
    return description
   end

   def get_number_of_terms
    return number_of_terms
   end

   def get_status
    return status
   end
