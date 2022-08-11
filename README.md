# dotfiles
Them dotfiles

# Getting Started
1. Install [Homebrew](https://docs.brew.sh)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Download this repo and use the `osx` branch
```bash
git clone https://github.com/urosht/dotfiles.git -b osx
```

3. Run the setup
```bash
cd dotifles && ./setup.sh
```

4. Get and install pip & Install pynvim
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install --user --upgrade pynvim
```

5. Open iTerm2 -> Optionas -> Profiles -> Text and configure Mononoki nerdfont as chosen font
6. Configure aws profile (check the docs)
7. Configure kubectl Azure auth: `export KUBECONFIG=/Users/trifuurp/.kube/config && kubelogin convert-kubeconfig`
8. In iTerm -> Optionas -> Profiles -> Keys -> Left Option Key = Esc+


## Other things to install manually
- Todoist
- Inkdrop
- RescueTime
- Visual Studio Code
    - GitLense
    - Vim emulation
- IntelliJ IDEA (for enabling CLI launcher, Open IntelliJ -> Tools -> Create Command-Line Launcher)

# Common issues
## homebrew Error: Failed to link all completions, docs and manpages
Run `brew doctor` and follow the advice to link the docs. Usually, it will be
```bash
sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
```


## TODO
- Add AWS profile to statusline
- Add icons for k8s and tf instead of text, if possible
- Add git information to zsh
- Zoom panes in tmux
- Resize panes in tmux
