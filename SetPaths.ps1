# Define the path you want to check and add
$EnvVar = $Args[0]
$PathToCheck = $Args[1]
 
# Get the current value of the PATH variable
$CurrentPath = [System.Environment]::GetEnvironmentVariable("$EnvVar", "Machine")
 
# Check if the PATH environment variable contains the path
If ($CurrentPath -notlike "*$PathToCheck*")
{
    # If not, append the path to the PATH environment variable
    $NewPath = $CurrentPath + ";" + $PathToCheck
 
    #Set the New Path
    [System.Environment]::SetEnvironmentVariable("$EnvVar", $NewPath, "Machine")
    Write-host -f Green "Added '$PathToCheck' to '$EnvVar' Variable!"
}
Else
{
    Write-host -f Yellow "$PathToCheck already exists in '$EnvVar' Variable!"
}