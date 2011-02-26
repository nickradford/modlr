module Modlr
  module Address
    def self.random
      rand(1000).to_s + " " + Name.rand_last_name + " " + STREETS[rand(STREETS.count)]
    end
    
    STREETS = ["DR", "RD", "AVE", "PWKY", "PL", "ST", "WAY"]
  end
end