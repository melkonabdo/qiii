$FileName = (Get-Date).tostring("dd-MM-yyyy") + ".txt"         
      

$fileToCheck = "C:\Covidquestionnaire\$FileName"


If (test-path $filetocheck)  
{
#do nothing
}  
Else   
{
New-Item -ItemType Directory -Path c:\covidquestionnaire 
New-Item -ItemType File -Path c:\covidquestionnaire -Name ($FileName)
Start 'https://docs.google.com/forms/d/e/1FAIpQLSepEY-Hj7XFxCc5QhSXvNTAkQn6xx6z5QjeEF03pyh9MWGgEQ/viewform?vc=0&c=0&w=1'
}

