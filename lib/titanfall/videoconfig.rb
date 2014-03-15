module VideoConfig

  def videoconfig
    videoconfig_hash
  end

  private

  def videoconfig_hash
    truncated_videoconfig.inject({}) do |hash, item|
      key, value = item.split(' ')
      hash[key.tr!('"', '')] = value.tr!('"', '')
      hash
    end
  end

  def truncated_videoconfig
    videoconfig_txt_file.split("\n")[2..-2]
  end

  def videoconfig_txt_file
    File.open(videoconfig_txt_file_path, 'r').read
  end

  def videoconfig_txt_file_path
    "#{path}\\Titanfall\\local\\videoconfig.txt"
  end

end
