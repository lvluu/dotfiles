
# Dotfiles managed with Dotter

## Prerequisites
- [Rust](https://www.rust-lang.org/tools/install) (for `cargo`)
- [Dotter](https://github.com/SuperCuber/dotter) installed via:

```bash
  cargo install dotter
```

## How to Run

1. Clone this repository:

```bash
   git clone https://github.com/lvluu/dotfiles.git
   cd dotfiles
   ```
2. Move into the repo’s root (where `.dotter/` lives).
3. Preview changes (dry run):

   ```bash
   dotter deploy --dry-run -v
   ```
4. Deploy (create symlinks):

```bash
   dotter deploy -v
   ```

   ```bash
   dotter deploy -v
   ```
3. Preview changes (dry run):

```bash
   dotter deploy --dry-run -v
   ```
4. Deploy (create symlinks):

```bash
   dotter deploy -v
   ```

   ```bash
   dotter deploy -v
   ```
3. Preview changes (dry run):

```bash
   dotter deploy --dry-run -v
   ```
4. Deploy (create symlinks):

   ```bash
   dotter deploy -v
   ```

That’s it — your dotfiles are now symlinked into place.

## Submodules

This repository uses a git submodule for Nushell community scripts located at `nushell/nu_scripts`.

If you're cloning this repository for the first time, clone with submodules so the `nu_scripts` folder is populated:

```bash
git clone --recurse-submodules https://github.com/lvluu/dotfiles.git
cd dotfiles
```

If you already cloned without submodules, initialize and fetch the `nu_scripts` submodule with:

```bash
# initialize and fetch all defined submodules
git submodule update --init --recursive

# or to add the nu_scripts submodule manually (if not present in .gitmodules):
git submodule add https://github.com/nushell/nu_scripts.git nushell/nu_scripts
```

To update the submodule to the latest commit on its tracked branch:

```bash
git submodule update --remote --merge
```

