# Create a Powershell alias to open a Multipass VM in the current directory

1) On your Multipass VM, copy the file [open-from-win.sh](open-from-win.sh) into `/home/ubuntu`

2) Open PowerShell and check if you already have a profile
    ```powershell
    Test-Path $PROFILE
    ```
3) If this command returns `False`, it means you don't have a PowerShell profile. You can create it by running the following command:
    ```powershell
    New-Item -Path $PROFILE -ItemType File -Force
    ```
4) Open the profile file and copy the contents of the [Microsoft.PowerShell_profile.ps1](Microsoft.PowerShell_profile.ps1) file into it: You can open it by running the following command:
    ```powershell
   notepad.exe $PROFILE
    ```
