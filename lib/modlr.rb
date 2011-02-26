module Modlr
  ##
  #  modlr :class, number_of_records, {:field => :type, :field => type}
  #  
  #  If I have a User class, with fields name (string), and age (int), then
  #  `modlr :user, 100, {:name => :name, :age => :age}`
  #  will create 100 user records with names and ages which make sense.
  #
  #
  ##  
  
  module ModlrSetup
    def modlr(model, number, &args)
      puts model, number, args
    end
    
  end

  
end