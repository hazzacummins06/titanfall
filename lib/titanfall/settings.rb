module Settings

  def binding(key)
    bindings_hash[key]
  end

  def settings
    settings_hash
  end

  private

  def bindings_hash
    bind_rows.map { |x| x[5..-1] }.inject({}) do |hash, item|
      key, value = item.split(' ', 2)
      hash[key.tr!('"', '')] = value.tr!('"', '')
      hash
    end
  end

  def settings_hash
    other_settings_rows.inject({}) do |hash, item|
      key, value = item.split(' ')
      hash[key] = value.tr!('"', '')
      hash
    end
  end

  def bind_rows
    settings_collection.select { |row| row.start_with?('bind') }
  end

  def other_settings_rows
    settings_collection.select { |row| !row.start_with?('bind') }
  end

  def settings_collection
    settings_cfg_file.split("\n")
  end

  def settings_cfg_file
    File.open(settings_cfg_file_path, 'r').read
  end

  def settings_cfg_file_path
    "#{path}\\TitanfallBeta\\local\\settings.cfg"
  end

end
