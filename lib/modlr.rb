module Modlr
  def self.included(base)
    base.extend nil    
  end
  
  module ClassMethods
    def modlr(*args, &block)
    end
  end
end

class ActiveRecord::Base
  include Modlr
end