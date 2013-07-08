# -*- encoding : utf-8 -*-

###
# Adds calls to #pre_initialize and #post_initialize before and after call to #initialize.
#
module ::PreAndPostInitialize::ClassInstance
  
  #########
  #  new  #
  #########
  
  ###
  # Adds calls to #pre_initialize and #post_initialize before and after call to #initialize.
  #
  # @overload initialize( any_arg, ... )
  #
  #   @param [Object] any_arg
  #
  #                   Any arguments can be used for initialize.
  #                   No arguments are expected here, but any will be passed to super.
  #
  def new( *args, & block )

    instance = allocate

    instance.instance_eval do
      pre_initialize( *args, & block )
      initialize( *args, & block )
      post_initialize( *args, & block )
    end
    
    return instance
    
  end
  
end
