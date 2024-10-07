$scriptUrl = "https://raw.githubusercontent.com/ZBNZGIT/AppsInstaller/main/ChocolateyInstallApps.bat"
try {
    $scriptContent = Invoke-RestMethod -Uri $scriptUrl

    $tempFile = [System.IO.Path]::GetTempFileName() + ".bat"
    Set-Content -Path $tempFile -Value $scriptContent
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c $tempFile" -WindowStyle Normal
} catch {
    Write-Error "An error occurred: $_"
}
