# Titanfall Ruby Gem

[Titanfall](http://www.titanfall.com/) PC ([Origin](https://www.origin.com)) Ruby Gem - Version 0.0.1

This gem is not endorsed, certified or otherwise approved in any way by Respawn Entertainment or any of its affiliates.

## Get started in 3, 2, 1 … Mark!

From the command line

`gem install titanfall`

In your ruby file

    require 'titanfall
    t = Titanfall.new

Note: If your local save files are not located at `C:\Users\[YOUR_WIN_USERNAME]\Documents\Respawn`, you will need to pass the path (with proper string escaping) during initialization

    require 'titanfall
    t = Titanfall.new "C:\\Storage\\Other\\Path\\to\\Respawn"

## Instance Methods

#### `bindings`
Get key bindings

    t.bindings['1'] #=> "weaponSelectPrimary0"
    t.bindings['2'] #=> "weaponSelectPrimary1"
    t.bindings['3'] #=> "weaponSelectOrdnance"

#### `profile`
Get profile configs

    t.profile['training_hasEverFinished'] #=> "1"

#### `settings`
Get setting configs

    t.settings['m_sensitivity'] #=> "5"

#### `videoconfig`
Get video configs

    t.videoconfig['setting.cl_fovScale'] #=> "1.0"

## License

Titanfall Ruby Gem is released under the [MIT License](http://www.opensource.org/licenses/MIT).
