# windows-dev-env

## Directories
| Path | Description |
| ---- | :---------: |
| `C:\Applications` | All portable applications and local path for this repository |
| `C:\Applications\bin` | Scripts and shortcuts for executables |

## Applications
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Visual Studio Code](https://code.visualstudio.com/)
* [GitKraken](https://www.gitkraken.com)
* [Git for Windows (Portable)](https://github.com/git-for-windows/git/releases), dir: `C:\Applications\PortableGit`
* [puttygen.exe and pageant.exe](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html), dir: `C:\Applications\bin\`
* Windows Subsystem for Linux *(only for ssh and shell scripts)*

## Shortcuts
| From | To |
| ---- | :---------: |
| `C:\Applications\bin\vboxmanage.lnk` | C:\path\to\VirtualBox\VBoxManage.exe |

## ENV Variables
Don't overwrite any entries, append value if already exists.

| Type | Name | Value |
| ---- | ---- | ----- |
| System | PATH | `C:\Applications\bin;C:\Applications\PortableGit\bin` |
| System | PATHEXT | `.LNK` |

## VMs
| Name |  OS  | Network | Services/Applications |
| ---- | ---- | ------- | -------- |
| dev | [Ubuntu Server](https://www.ubuntu.com/server) | Bridged | samba, openssh-server |
| win-build | Windows 7\|10 | NAT | mingw32 and other build tools |

### Host integration for dev
* Add a network drive pointing to your home directory in the VM.
* Add a hosts entry for `dev` pointing to VM IP
