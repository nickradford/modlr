module Modlr
  module Age
    def self.child
      rand(17)
    end
    def self.adult
      rand(50) + 17
    end
  end
end