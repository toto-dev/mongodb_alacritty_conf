# MongoDB Alacritty Terminal Configuration
Alacritty terminal configuration for MongoDB development environment

# Installation
Make sure you have Alacritty installed with a verison greater or equal to 0.13.0. This is the first version that supports toml configuration file.

Include the custom configuration in your main Alacritty config file `~/.config/alacritty/alacritty.toml`.

Example:
```
[general]
live_config_reload = true
import  = [
    "<path-to-this-repo>/conf/alacritty_hints.toml",
]
```
