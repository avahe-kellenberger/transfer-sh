# transfer-sh

## NOTICE: https://transfer.sh/ is planning to shut down November 31st. See their site for details.

`transfer-sh` is a cli tool for uploading files to [transfer.sh]("https://transfer.sh").

**Disclaimer: I am in no way affiliated with [transfer.sh]("https://transfer.sh").**

Run the command to install:

```sh
$ curl -Lo- "https://raw.githubusercontent.com/avahe-kellenberger/transfer-sh/master/install.sh" | sudo bash
```

## Usage

**This command will upload your file, and print the URL in your shell.**

```sh
tsh /path/to/file
```

## Ardour Plugin
**This plugin will automatically upload your exported audio file, and open it in your browser.**

Open Ardour and navigate to:
```sh
1. Session > Export > Export to Audio File(s)...
2. Click "Edit" on the right-hand side of the "Format" drop-down selector
3. In the "Command to run post-export" box, paste the following command: tsh-ardour %f
```

## Uninstall
Run the command to uninstall:
```sh
$ curl -Lo- "https://raw.githubusercontent.com/avahe-kellenberger/transfer-sh/master/uninstall.sh" | sudo bash
```

**If you have complaints or suggestions, feel free to open an issue with the project.**
