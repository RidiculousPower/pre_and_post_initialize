# Pre-And-Post-Initialize #

http://rubygems.org/gems/pre\_and\_post\_initialize

# Summary #

Creates event chain prior to object initialization.

# Description #

Adds Object#pre\_initialize and Object#post\_initialize so that events can occur before and after Object#initialize chain.

# Install #

* sudo gem install pre\_and\_post\_initialize

# Usage #

```ruby
class AnyClass

  def pre_initialize( *initialize_args, & initialize_block )
    # anything here will happen before #initialize
  end

  def post_initialize( *initialize_args, & initialize_block )
    # anything here will happen after #initialize
  end

end
```

# License #

  (The MIT License)

  Copyright (c) 2013 Ridiculous Power, Asher

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  'Software'), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.