
module Modlr
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "names")
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "address")
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "ages")
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "email")
  require File.join(File.expand_path(File.dirname(__FILE__)), "modlr", "phone")


  
  
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
  
  def self.modlr(model, args = nil)
    args ||= {}
    model.new.is_a?(ActiveRecord::Base)
    count = model.count
    args[:number].nil? ? num = 10 : num = args[:number]
    if count >= num
      "No new records created: #{model} currently has #{count} records." 
    else
      unless args.nil?
        params = {}
        args.each do |key, value|
          unless key == :number
            params[key] = value
          end
        end
        #return params
        num.times do 
          m = model.new
          params.each do |key, value|
            m[key] = case value
              when :name
                Name.rand_name
              when :adult
                Age.adult
              when :child
                Age.child
              when :phone
                Phone.rand
              when :address
                Address.rand
              when :email
                Email.us
            end
          end
          m.save
        end
      end
    end  
  end
  
  
  
 
  
  

  
end