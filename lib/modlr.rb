module Modlr
  def self.included(base)
    base.extend nil    
  end
end

class ActiveRecord::Base
  include Modlr
end