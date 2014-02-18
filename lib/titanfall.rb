require 'titanfall/version'
require 'titanfall/base'
require 'titanfall/profile'
require 'titanfall/videoconfig'

class Titanfall
  include Version
  include Base
  include Profile
  include VideoConfig
end
