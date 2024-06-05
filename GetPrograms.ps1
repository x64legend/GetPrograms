# Assign a path to export the CSV
$path = "C:\Users\Sydni\Desktop"

# Pulls the computer name that the script is run on
$computerName = $env:computername

Get-Package -ProviderName Programs | Select-Object Name,Version | Sort-Object Name | Export-Csv "$path\$computerName-InstalledPrograms.csv" -NoTypeInformation

