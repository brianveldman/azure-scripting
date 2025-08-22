Start-Transcript

# Path to the files
$Path = "C:\prod\definitions\"

# EPAC files
$Patterns = @('*.jsonc') 

# Change multiple values
$Replacements = @{
  "epac-$currentEnvironment" = "epac-$destinationEnvironment"
  "rg-amba-alz-dev-westeu-001" = "rg-amba-alz-prod-westeu-001"
  "centralus" = "westeurope"
  "id-amba-alz-arg-dev-prod-westeu-001" = "id-amba-alz-arg-prod-westeu-001"
}

# Get Files
$Files = foreach ($pat in $Patterns) {
  Get-ChildItem -Path "$Path\*" -Include $pat -Recurse -File
}

foreach ($File in $Files) {
  Write-Host "Changing files $($File.FullName)..."

  $Content   = Get-Content -Path $File.FullName -Raw
  $Original  = $Content

  foreach ($old in $Replacements.Keys) {
    $new = $Replacements[$old]
    $Content = $Content.Replace($old, $new)
  }

  if ($Content -ne $Original) {
    Set-Content -Path $File.FullName -Value $Content -Encoding UTF8
  }
}

Stop-Transcript
