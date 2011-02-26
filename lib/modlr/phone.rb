module Modlr
  module Phone
    def self.random
      s =""
      10.times do
        s += rand(9).to_s
      end
      s
    end
  end
end