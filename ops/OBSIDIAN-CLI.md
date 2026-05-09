# Obsidian CLI

The Obsidian CLI lets assistants and scripts interact with vault files while keeping Obsidian's graph and metadata state more consistent than raw file writes alone.

## Location

On macOS, the CLI ships with Obsidian:

```bash
/Applications/Obsidian.app/Contents/MacOS/obsidian-cli
```

Set a shell variable to keep commands concise:

```bash
OBS="/Applications/Obsidian.app/Contents/MacOS/obsidian-cli"
```

## Basic usage

All commands target a named vault.

```bash
$OBS <command> vault="YourVaultName" [options]
```

- Use `path=` for exact vault-relative paths
- Use `file=` for name-based lookup
- Quote values that contain spaces
- Use `\n` for newlines inside `content=` values

## Read and search

```bash
$OBS read vault="Vault" path="<path>"
$OBS search vault="Vault" query="<text>" format=json
$OBS files vault="Vault" folder="<folder>"
```

## Create and edit

```bash
$OBS create vault="Vault" path="<path>" content="<text>"
$OBS append vault="Vault" path="<path>" content="<text>"
$OBS prepend vault="Vault" path="<path>" content="<text>"
```

## Metadata

```bash
$OBS tags vault="Vault" counts
$OBS property:set vault="Vault" path="<path>" name=<key> value=<val>
$OBS tasks vault="Vault" todo
```

## Journal shortcuts

```bash
$OBS daily:read vault="Vault"
$OBS daily:append vault="Vault" content="<text>"
```

## Graph health

```bash
$OBS orphans vault="Vault"
$OBS backlinks vault="Vault" file="<name>"
$OBS unresolved vault="Vault"
```

## Fallback

If the CLI is unavailable, assistants can read and write markdown files directly. The CLI is preferred, but it is not required.
