# Claude Code Context

## Tool Installation Workflow

### Installing Node.js tools with bun and mise

When installing Node.js-based CLI tools, follow this pattern:

1. **Ensure bun is installed via mise:**
   ```bash
   mise use --global bun@latest
   ```

2. **Install the tool globally with bun:**
   ```bash
   eval "$(mise activate zsh)" && bun add -g <package-name>
   ```

3. **Add alias to zshrc:**
   - Location: `/Users/ihoka/.dotfiles/zshrc`
   - Pattern: `alias <tool>="mise exec bun -- bun /Users/ihoka/.bun/bin/<tool>"`
   - Add in the "Custom aliases" section (around line 84-87)

### Environment Setup

- **Bun global bin path:** `/Users/ihoka/.bun/bin`
- **Path already configured in zshrc:** `export PATH="/Users/ihoka/.bun/bin:$PATH"`
- **Mise activation:** Already configured with `eval "$(~/.local/bin/mise activate zsh)"`

### Common Commands

- **Check installed mise tools:** `mise list`
- **Check bun global packages:** `bun pm ls -g`
- **Reload shell configuration:** `source ~/.zshrc`

### Recently Installed Tools

- **ccexp** (Claude Code Explorer) - Installed via `bun add -g ccexp`
- **claudekit** - Previously installed, alias pattern established