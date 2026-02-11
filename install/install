#!/usr/bin/env bash
set -euo pipefail

# -----------------------------------------------
# Dotfiles installer
# Installs Homebrew (if needed) and all packages
# from the bundle file. Run stow separately to
# symlink config files.
# -----------------------------------------------

# --- Prerequisites --------------------------------
# Both git and curl are needed for the Homebrew
# installer, so bail early if either is missing.

for cmd in git curl; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "Error: $cmd is required but not found. Please install it first." >&2
    exit 1
  fi
done
echo "Prerequisites satisfied (git, curl)"

# --- Homebrew -------------------------------------
# Install Homebrew if it isn't already present.
# NONINTERACTIVE=1 skips the confirmation prompt
# so the script can run unattended.

if command -v brew &>/dev/null; then
  echo "Homebrew already installed, skipping"
else
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# After a fresh install brew won't be on PATH yet.
# Check the known install locations and source the
# shell environment so brew is available for the
# rest of this script.
if ! command -v brew &>/dev/null; then
  for prefix in /home/linuxbrew/.linuxbrew /opt/homebrew /usr/local; do
    if [ -x "$prefix/bin/brew" ]; then
      eval "$("$prefix/bin/brew" shellenv)"
      break
    fi
  done
fi

if ! command -v brew &>/dev/null; then
  echo "Error: brew not found after installation" >&2
  exit 1
fi

# --- Packages -------------------------------------
# Resolve the directory this script lives in so we
# can reference sibling files regardless of where
# the script is invoked from.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# brew bundle reads the bundle file and installs any
# formulae or casks that aren't already present.

echo "Installing packages from bundle..."
brew bundle --file="$SCRIPT_DIR/bundle"

echo "Done! Run stow to link config files."
