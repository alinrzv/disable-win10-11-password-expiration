
# disable-win10-11-password-expiration

## Disable WIN10 - WIN11 Password Expiration

This repository provides a solution to disable password expiration on Windows 10 and Windows 11 machines.

---

## Convert .ps1 to .exe Using ps2exe

If you prefer to turn the script into a standalone executable (.exe) that you can run without having to open PowerShell, you can use a PowerShell script-to-executable converter like **ps2exe**.

### Steps to Convert .ps1 to .exe:

1. **Download ps2exe:**

   You can get it from the PowerShell gallery or directly from GitHub: [PS2EXE on GitHub](https://github.com/MScholtes/PS2EXE)

   To install it, run the following command in PowerShell:

   ```powershell
   Install-Module -Name ps2exe -Force -Scope CurrentUser
   ```

2. **Convert the .ps1 script to .exe:**

   Once you have ps2exe installed, open PowerShell and run the following command to convert the .ps1 script into an executable:

   ```powershell
   ps2exe -inputFile "C:\path\to\CheckAndDisablePasswordExpiration.ps1" -outputFile "C:\path\to\CheckAndDisablePasswordExpiration.exe"
   ```

---

## Creating a Batch File to Run the PowerShell Script

If you don't want to deal with .ps1 or .exe files directly, you can create a batch file (.bat) that runs the PowerShell script.

1. Open **Notepad** and enter the following:

   ```batch
   @echo off
   powershell -ExecutionPolicy Bypass -File "C:\path\to\CheckAndDisablePasswordExpiration.ps1"
   ```

2. Save the file with a `.bat` extension, for example, `RunCheckAndDisablePasswordExpiration.bat`.

Now, you can simply double-click the batch file, and it will run the PowerShell script.

---
