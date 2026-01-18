# IsMsiExecWorking
*Let’s face it:* Windows has a special talent for running installations in the shadows while you’re trying to actually get some work done. Instead of playing a guessing game with your CPU usage or waiting for that "Another installation is in progress" error to ruin your day, this utility finally puts a pair of eyes on that elusive **msiexec.exe.** It’s essentially a "nanny" for your system deployment services. 🧐✨

IsMsiExecWorking is a program that shows the System Tray whether Windows Installer (MSI) processes are running or not. 💻🔍

It serves as a lightweight monitoring utility designed to provide immediate visual feedback regarding the state of the msiexec.exe service. By integrating directly into the Windows taskbar notification area, it ensures that users are constantly aware of background installation activities without needing to open the Task Manager. 📊✨

## Key Features
- **State-Dependent Iconography:** The application dynamically toggles between two distinct tray icons to represent "Active" and "Idle" states of the Windows Installer. 🔴🟢
- **Dynamic Command Access:** It features an intelligent context menu that enables administrative termination of the MSI process only when a running instance is detected, preventing accidental command execution. ⚔️
- **Elevated Execution:** Built-in support for administrative privileges allows the utility to force-kill unresponsive installations securely and effectively. 🛡️

This Project Compiled with AutoHotKey 1.1.37

## Requirements
- Windows 7+
