# Define the URL and output path for FTK Imager
$ftkImagerUrl = "https://github.com/alwinux/ftkimager/raw/main/ftkimager.exe"
$ftkImagerPath = "C:\Program Files\FTKImager\ftkimager.exe"

# Define the source drive and destination path for the forensic image
$sourceDrive = "C"
$destinationPath = "F:\ForensicImage.E01"

# Download FTK Imager from GitHub
Invoke-WebRequest -Uri $ftkImagerUrl -OutFile $ftkImagerPath

# Create the forensic image
& $ftkImagerPath $sourceDrive $destinationPath --e01 --frag 10GB

# Display completion message
Write-Host "Forensic image creation completed."

# Prompt the user to press any key before exiting
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
