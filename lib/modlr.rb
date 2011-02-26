module Modlr
  def self.included(base)
    base.extend ClassMethods    
  end
end

class ActiveRecord::Base
  include Modlr
end