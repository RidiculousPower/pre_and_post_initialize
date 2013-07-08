
require_relative '../lib/pre_and_post_initialize.rb'

describe ::PreAndPostInitialize do
  
  class PreAndPostInitializeTestClass
    extend PreAndPostInitialize
    attr_accessor :pre_init_arg, :init_arg, :post_init_arg
    def pre_initialize
      @pre_init_arg = :pre
      @init_arg = :pre
      @post_init_arg = :pre
    end
    def initialize
      @init_arg = :init
      @post_init_arg = :init
    end
    def post_initialize
      @post_init_arg = :post
    end
  end
  
  let( :instance ) { ::PreAndPostInitializeTestClass.new }

  it 'should run #pre_initialize, #initialize, #post_initialize' do
    instance.pre_init_arg.should == :pre
    instance.init_arg.should == :init
    instance.post_init_arg.should == :post   
  end
  
end
