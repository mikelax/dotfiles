# VS Code

## User Settings File

Copy `settings.json` to the [default location for given OS platform](https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations).

For macOS the location is:  `$HOME/Library/Application Support/Code/User/settings.json`

## Extensions

Here is a partial list of used extensions, see the txt file for the complete list.

- Docker
- ESLint
- JSON Tools
- markdownlint
- Python
- Rainbow Brackets
- Rainbow CSV
- Terraform
- vscode-icons

### Install through cli

Use the following commands to install the extensions using the [vs code cli](https://code.visualstudio.com/docs/editor/command-line#_working-with-extensions).

```bash
cat vscode-extensions.txt | xargs -L 1 code --install-extension
```
