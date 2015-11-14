# Allow people to use binding.pry with the pry-byebug gem
require 'pry-byebug'

RSpec.configure do |c|
  c.fail_fast = 1
  c.color = true
end
