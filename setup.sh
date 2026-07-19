#!/bin/bash
set -e

echo "Installing Node.js..."

sudo apt update
sudo apt install -y curl ca-certificates gnupg

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

sudo apt install -y nodejs

echo "Installing OpenCode..."

npm install -g opencode-ai

mkdir -p ~/.config/opencode

cat > ~/.config/opencode/opencode.jsonc <<'EOF'
{
  "$schema": "https://opencode.ai/config.json",

  "provider": {
    "surplus": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Surplus Intelligence",
      "options": {
        "baseURL": "https://api.surplusintelligence.ai/v1"
      },
      "models": {
        "glm-5.2": {
          "name": "GLM 5.2"
        },
        "kimi-k3": {
          "name": "Kimi K3"
        },
        "gpt-5.5": {
          "name": "GPT 5.5"
        },
        "minimax-m3": {
          "name": "MiniMax M3"
        }
      }
    }
  },

  "model": "surplus/glm-5.2"
}
EOF

echo
echo "Setup complete!"
echo
echo "Run:"
echo "  opencode auth login"
echo "Choose 'Surplus Intelligence' and paste your API key."
echo
echo "Then start OpenCode with:"
echo "  opencode"
