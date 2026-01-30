# WAITING FOR AD SERVICE...
Write-Host "Waiting 10 seconds for AD Web Services..." -ForegroundColor Yellow
Start-Sleep -Seconds 10
Import-Module ActiveDirectory

# DEFINE PASSWORD
$Password = ConvertTo-SecureString "TritonCard2026!" -AsPlainText -Force

# DEFINE USERS
$NewStudents = @(
    [PSCustomObject]@{ID="1001"; First="Jordan"; Last="Belfort"; Dept="Business"},
    [PSCustomObject]@{ID="1002"; First="Don"; Last="Draper"; Dept="Marketing"}
)

# LOOP
ForEach ($Student in $NewStudents) {
    $SamAccountName = $Student.First.Substring(0,1) + $Student.Last
    $UserUPN = "$SamAccountName@tritonlab.local"
    # ENSURE THIS PATH MATCHES YOUR ADUC FOLDER EXACTLY
    $UserPath = "OU=TritonCard_Users,DC=tritonlab,DC=local"
    $FullName = "$($Student.First) $($Student.Last)"
    
    Write-Host "Creating: $FullName..." -ForegroundColor Cyan

    Try {
        New-ADUser -Name $FullName -SamAccountName $SamAccountName -UserPrincipalName $UserUPN -Path $UserPath -AccountPassword $Password -Department $Student.Dept -Enabled $true -ErrorAction Stop
        Write-Host "SUCCESS: Created $FullName" -ForegroundColor Green
    }
    Catch {
        Write-Host "FAILED: Could not create $FullName" -ForegroundColor Red
        Write-Host "ERROR DETAILS: $($_.Exception.Message)" -ForegroundColor Yellow
    }
}
