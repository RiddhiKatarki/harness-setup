# harness-setup

Bootstrap script for spinning up a fresh [code-server](https://github.com/coder/code-server) instance with Node.js LTS and [OpenCode](https://opencode.ai) configured against Surplus Intelligence.

## What it does

1. Installs Node.js LTS (via NodeSource).
2. Installs `opencode-ai` globally via npm.
3. Writes `~/.config/opencode/opencode.jsonc` with the Surplus Intelligence provider (models: GLM 5.2, Kimi K3, GPT 5.5, MiniMax M3; default model `surplus/glm-5.2`).

API key is configured interactively via `opencode auth login`.

## Usage

### One-liner (recommended for fresh instances)

```bash
curl -fsSL https://raw.githubusercontent.com/RiddhiKatarki/harness-setup/main/setup.sh | bash
```

> Note: the script uses `sudo` for `apt`, so run this in a shell where you can respond to a password prompt (or as root).

### Clone and run

```bash
git clone https://github.com/RiddhiKatarki/harness-setup.git
cd harness-setup
chmod +x setup.sh
./setup.sh
```

## After running

Authenticate with your Surplus Intelligence API key:

```bash
opencode auth login
```

Choose **Surplus Intelligence** and paste your key. Then launch:

```bash
opencode
```
