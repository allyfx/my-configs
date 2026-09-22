## my-configs

Personal configuration files for my local development environment.

### Files

- **`.zshrc`**: Main Zsh configuration, including prompt theming, plugins, and language/toolchain paths.
- **`/nvim`**: My nvim configs, plugins and keymaps. Everything that I use for nvim is in here.

### Using this repo

- **Clone** this repo somewhere on your machine (for example `~/www/my-configs`).
- **Symlink the `.zshrc`** into your home directory so Zsh picks it up:

```bash
ln -s "$(pwd)/.zshrc" "$HOME/.zshrc"
```

You can then restart your terminal or run `exec zsh` to reload the configuration.

### Prerequisites for `.zshrc`

The `.zshrc` in this repo assumes a few tools are installed. Without them, the shell will still mostly work, but some features (themes, plugins, runtimes) will be missing or may error on load.

- **Zsh**
  - macOS already ships with Zsh, but if you need installation details, see the [Zsh documentation](https://zsh.sourceforge.io/).

- **Homebrew (package manager)**
  - Used for paths like `/opt/homebrew/opt/ruby@3.3` and general tool installation.
  - Install:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

  - Docs: [Homebrew documentation](https://brew.sh/)

- **Git**
  - Required for cloning plugins via Zinit.
  - Install (if needed) with Homebrew:

```bash
brew install git
```

  - Docs: [Git documentation](https://git-scm.com/doc)

- **Oh My Zsh**
  - Framework that provides themes and plugins; `.zshrc` expects it at `~/.oh-my-zsh` and sources `oh-my-zsh.sh`.
  - Install:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

  - Docs: [Oh My Zsh on GitHub](https://github.com/ohmyzsh/ohmyzsh)

- **Spaceship Prompt (theme for Oh My Zsh)**
  - `.zshrc` sets `ZSH_THEME="spaceship"` and configures Spaceship sections.
  - Install (Oh My Zsh theme setup):

```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git \
  "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" \
  "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

  - Docs: [Spaceship Prompt documentation](https://github.com/spaceship-prompt/spaceship-prompt)

- **Zinit (Zsh plugin manager)**
  - `.zshrc` includes an installer snippet that will clone Zinit automatically if it is missing, but this requires Git and network access.
  - Docs: [Zinit documentation](https://github.com/zdharma-continuum/zinit)

- **Node Version Manager (nvm)**
  - `.zshrc` sources `nvm.sh` if it exists and expects `~/.nvm` (or `$XDG_CONFIG_HOME/nvm`) to be present.
  - Install (via Homebrew on macOS):

```bash
brew install nvm
```

  - Then follow the post-install instructions in the formula, or see:
  - Docs: [nvm documentation](https://github.com/nvm-sh/nvm)

- **Bun (JavaScript runtime)**
  - `.zshrc` sets `BUN_INSTALL="$HOME/.bun"` and adds Bun to `PATH`, and optionally enables Bun completions.
  - Install:

```bash
curl -fsSL https://bun.sh/install | bash
```

  - Docs: [Bun installation docs](https://bun.sh/docs/installation)

If any of these tools are not installed, you can usually still open a shell, but you may see warnings or missing prompt features until you install them.
