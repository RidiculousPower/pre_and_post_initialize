# -*- encoding : utf-8 -*-

###
# Adds #pre_initialize and #post_initialize before and after call to #initialize.
#
module ::PreAndPostInitialize::ObjectInstance
  
  ####################
  #  pre_initialize  #
  ####################
  
  ###
  # Permits activity to be defined prior to any initialization activity. This can be useful
  #   if initialization activity may depend on a particular feature, such as instance registration,
  #   prior to activity occuring that queries or otherwise implicates its identity/definition.
  #
  # @overload pre_initialize( any_arg, ... )
  #
  #   @param [Object] any_arg
  #
  #                   Any arguments can be used for pre_initialize.
  #                   No arguments are expected here, but any will be passed to super.
  #
  def pre_initialize( *args, & block )
    # nothing here - subclasses define
  end

  #####################
  #  post_initialize  #
  #####################
  
  ###
  # Permits activity to be defined after all initialization activity.
  #
  # @overload post_initialize( any_arg, ... )
  #
  #   @param [Object] any_arg
  #
  #                   Any arguments can be used for post_initialize.
  #                   No arguments are expected here, but any will be passed to super.
  #
  def post_initialize( *args, & block )
    # nothing here - subclasses define
  end
  
end