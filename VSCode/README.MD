# Visual Studio Code Dev Container Starter

Starts a devcontainer if the cli is installed and the passed path contains either a `.devcontainer` directory or an `.devcontainer.json` file.

## Installation

- Install Visual Studio Code
- Install the `Dev Containers` extension
- Open the command pallet and choose `Dev Containers: Install devcontainer CLI`
- Download `VSCode.bat`
- Open `Computer\HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode\command` in regedit
- Insert `"*path to VSCode.bat*" "%V"` as default value
- Restart Explorer or Windows