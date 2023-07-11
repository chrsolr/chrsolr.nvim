```
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim
```

Git Clone Installation
From a terminal cd/dir to: ~/.config/nvim (Linux) ~/.config/nvim (MacOS) %userprofile%\AppData\Local\nvim\ (Windows)

run: git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim OR: gh repo clone nvim-lua/kickstart.nvim

Run Neovim (from terminal or shortcut) and allow lazy.nvim to download files and set up the basics.

Once the setup is complete, restart Neovim.

You're ready to go!

(Recommended/Optional) Fork this repo (so that you have your own copy that you can modify).

Clone the kickstart repo into $HOME/.config/nvim/ (Linux/Mac) or %userprofile%\AppData\Local\nvim\ (Windows)

If you don't want to include it as a git repo, you can just clone it and then move the files to this location