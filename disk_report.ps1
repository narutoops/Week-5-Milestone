# Disk-space report for all drives, saved as a CSV on the Desktop
$out = "$env:USERPROFILE\Desktop\disk_report.csv" # Where to save the CSV
Get-PSDrive -PSProvider FileSystem | # list all the drives
  Select-Object Name, Used, Free | # keep only these coloumns
  Export-Csv $out -NoTypeInformation # save as CSV, no type header line
Write-Host "Saved to $out" # confirm where it went