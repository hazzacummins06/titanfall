module Base
  attr_accessor :path

  def initialize(override_path = nil)
    @path = override_path || "C:\\Users\\#{username}\\Documents\\Respawn"
  end

  private

  def username
    ENV['username']
  end

end

