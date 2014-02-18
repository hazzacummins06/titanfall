module Settings

  def settings
    settings_hash
  end

  private

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
