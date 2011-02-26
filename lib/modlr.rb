module Modlr
  def self.included(base)
    base.extend ClassMethods 
  end
  
  module ClassMethods
    def modlr(*args, &block)
    end
  end
end

class ActiveRecord::Base
  include Modlr
end