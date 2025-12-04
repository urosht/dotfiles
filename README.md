# dotfiles
Them dotfiles

# Getting Started
1. Install [Homebrew](https://docs.brew.sh)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Download this repo
```bash
git clone https://github.com/urosht/dotfiles.git
```

3. Run the setup
```bash
cd dotifles && ./setup.sh
```

4. install pynvim
```bash
pipx install pynvim
```

## Other things to install manually
- Todoist
- Inkdrop
- RescueTime
- Visual Studio Code
    - GitLense
    - Vim emulation
    - Go
- IntelliJ IDEA (for enabling CLI launcher, Open IntelliJ -> Tools -> Create Command-Line Launcher)
- Since we are installing mvn via homebrew, it will automatically install latest JDK. In case we don't want Maven to use the latest JDK, we need to edit it here: `/usr/local/Cellar/maven/3.8.6/bin/mvn`. Details can be found in this article -> https://euedofia.medium.com/fix-default-java-version-on-maven-on-mac-os-x-156cf5930078

# Common issues
## homebrew Error: Failed to link all completions, docs and manpages
Run `brew doctor` and follow the advice to link the docs. Usually, it will be
```bash
sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
```


## TODO
- Add fonts config
- Add AWS profile to statusline
- Add icons for k8s and tf instead of text, if possible
- Add git information to zsh
- Zoom panes in tmux
- Resize panes in tmux
- Update Java version to 17 in the scripts
- Add file for environment variables:
    - TMPDIR: $HOME/tmp