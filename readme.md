# Preview
(probably out of date, currently still w.i.p.)
![Preview Screenshot](/screenshot.png)

# Usage
We can use the GNU `stow` package to create symlinks from your `/.config` to these dotfiles. Clone the repo somewhere and run:
```bash
stow hyprland -t ~/
```
This will create directories `~/.config/hypr/...` etc. and fill it with symlinks leading to the files in the repo.

## Screenshots
Copy the grimblast script under `/scripts` to your `/bin` folder for the screenshotting to work. See [source repo](https://github.com/hyprwm/contrib/tree/main/grimblast) for up to date version.

## Credits
Thanks to christian80gabi for nice [basic setup](https://github.com/christian80gabi/hyprland-opensuse-dotfiles-v2?tab=readme-ov-file)