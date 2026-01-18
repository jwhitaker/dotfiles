# dot

My attempt at dotfiles.

## Install

```bash
curl https://raw.githubusercontent.com/jwhitaker/dot/refs/heads/main/.dot/install.sh | bash
```

## Usage

Instead of calling git, call dot:

```bash
# Create a file named file1
dot add file1
dot commit -m "<some commit comment>"
dot push
```