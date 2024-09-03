param (
    [Parameter(Mandatory = $false)]
    [string]$OutputFile = "password_list.txt",

    [Parameter(Mandatory = $false)]
    [switch]$File
)

$baseWords = "Welcome", "Password", "Spring", "Fall", "Winter", "Summer", 
             "January", "February", "March", "April", "May", "June", 
             "July", "August", "September", "October", "November", "December"

$yearsFull = 2021..2024
$yearsShort = 21..24
$specialChars = "@", "!", "#", "$", "%", "&"

$passwordList = @()

foreach ($word in $baseWords) {
    foreach ($year in $yearsFull) {
        foreach ($char in $specialChars) {
            $passwordList += "$word$char$year"
            $passwordList += "$word$year$char"

            $shortYear = $year.ToString().Substring(2, 2)
            $passwordList += "$word$char$shortYear"
            $passwordList += "$word$shortYear$char"
        }
    }

    foreach ($char in $specialChars) {
        $passwordList += "$word$char"
    }
}

if ($File) {
    # Print only to file
    $passwordList | Out-File -FilePath $OutputFile -Encoding UTF8
} else {
    # Print to both console and file
    $passwordList | Out-File -FilePath $OutputFile -Encoding UTF8
    $passwordList | ForEach-Object { Write-Host $_ }
    $wordCount = $passwordList.Count
    Write-Host -ForegroundColor Green "Password list generated and saved to $OutputFile."
    Write-Host -ForegroundColor Green "Total number of passwords generated: $wordCount"
}
