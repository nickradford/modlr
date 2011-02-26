
class Modlr
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "fnames")
  
  ##
  #  modlr :class, number_of_records, {:field => :type, :field => type}
  #  
  #  If I have a User class, with fields name (string), and age (int), then
  #  `modlr :user, 100, {:name => :name, :age => :age}`
  #  will create 100 user records with names and ages which make sense.
  #
  #
  ##  
  def initialize
  
  end
  
  def self.modlr(model, number, &args)
      model.new.is_a?(ActiveRecord::Base)
      count = model.count
      if count >= number
        "No new records created: #{model} currently has #{count} records." 
      end
      
  end
  
  
  def self.rand_first_name
    Name.fnames[rand(Name.fnames.count)]
  end
 
  
  

  
end