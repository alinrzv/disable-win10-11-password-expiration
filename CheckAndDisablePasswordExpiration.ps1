# Get the current username
$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name.Split("\")[1]

# Check if the password expires for the current user
$passwordExpires = (wmic UserAccount where "Name='$currentUser'" get PasswordExpires | Select-String -Pattern "TRUE")

# If the password expires, disable the expiration
if ($passwordExpires) {
    Write-Host "Password expiration is active for $currentUser. Disabling it..."
    wmic UserAccount where "Name='$currentUser'" set PasswordExpires=False
    Write-Host "Password expiration has been disabled for $currentUser."
} else {
    Write-Host "Password expiration is already disabled for $currentUser."
}

# Keep the window open for the user to see the results
Read-Host -Prompt "Press Enter to exit"
