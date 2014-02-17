module Profile

  def profile
    profile_hash
  end

  private

  def profile_hash
    profile_cfg_file.split("\n").inject({}) do |hash, item|
      item.tr!('"', '')
      key, value = item.split(' ')
      hash[key] = value
      hash
    end
  end

  def profile_cfg_file
    File.open(profile_cfg_file_path, 'r').read
  end

  def profile_cfg_file_path
    "#{path}\\TitanfallBeta\\profile\\profile.cfg"
  end

end
