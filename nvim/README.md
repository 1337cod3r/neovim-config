#alexanders nvim config

- remember to have https://github.com/memoryInject/wsl-clipboard?tab=readme-ov-file installed if using WSL

- remember to have win32yank installed.
1. install win32yank from powershell (administrator) with [choco install win32yank].
2. find the path for win32yank (ie. C/ProgramData/chocolatey/path/to/win32yank.exe)
3. inside of wsl add this path to PATH with [export PATH="$PATH:/mnt/c/ProgramData/chocolatey/path/to/win32yank"]
4. make sure you have visual c++ redistributable installed, for x64 [https://aka.ms/vs/17/release/vc_redist.x64.exe]
