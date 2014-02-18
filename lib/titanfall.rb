require 'titanfall/version'
require 'titanfall/base'
require 'titanfall/profile'
require 'titanfall/videoconfig'
require 'titanfall/settings'

class Titanfall
  include Version
  include Base
  include Profile
  include VideoConfig
  include Settings
end
