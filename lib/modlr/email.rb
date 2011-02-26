module Modlr
  module Email
    def self.us
      Name.rand_first_name + "." + Name.rand_last_name + "@" + Name.rand_last_name + ".com"
    end
  end
end