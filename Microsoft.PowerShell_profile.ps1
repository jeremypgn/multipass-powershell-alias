function Convert-WindowsPathToLinuxPath($path) {
    $matches = [System.Text.RegularExpressions.Regex]::Match($path, '^([A-Za-z]):\\')
    if ($matches.Success) {
        $driveLetter = $matches.Groups[1].Value.ToLower()
        $path = $path -replace '^([A-Za-z]):\\', "/mnt/$driveLetter/"
    }
    return $path -replace '\\', '/'
}

function Start-Dev {
	$CurrentPath = Get-Location
	$LinuxPath = Convert-WindowsPathToLinuxPath $CurrentPath
	multipass exec dev -- /bin/bash -c "source /home/ubuntu/open-from-win.sh '$LinuxPath' && /bin/bash"
}

Set-Alias -Name dev -Value Start-Dev
