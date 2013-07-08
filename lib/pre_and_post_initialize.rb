# -*- encoding : utf-8 -*-

###
# Adds calls to #pre_initialize and #post_initialize before and after call to #initialize.
#
module ::PreAndPostInitialize
  
  require_relative 'pre_and_post_initialize/class_instance.rb'
  require_relative 'pre_and_post_initialize/object_instance.rb'
  
  include ::PreAndPostInitialize::ClassInstance
  
  ###################
  #  self.extended  #
  ###################
  
  def self.extended( instance )
    
    super if defined?( super )

    instance.class_eval { include( ::PreAndPostInitialize::ObjectInstance ) }
    
  end
  
end
