
require 'date'

Gem::Specification.new do |spec|

  spec.name                      = 'pre_and_post_initialize'
  spec.rubyforge_project         = 'pre_and_post_initialize'
  spec.version                   = '0.0.2'

  spec.summary                   = "Creates event chain before and after object initialization."
  spec.description               = "Adds Object#pre_initialize so that events can occur before and after Object#initialize chain."

  spec.authors                   = [ 'Asher' ]
  spec.email                     = 'asher@ridiculouspower.com'
  spec.homepage                  = 'http://rubygems.org/gems/pre_initialize'

  spec.required_ruby_version     = ">= 1.9.1"

  spec.date                      = ::Date.today.to_s
  
  spec.files                     = ::Dir[ '{lib,lib_ext,spec}/**/*',
                                          'README*',
                                          'CHANGELOG*', 
                                          'LICENSE*' ]

end
