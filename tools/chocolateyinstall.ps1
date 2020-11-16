$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '39C87FA70E23DB7EABBECFCCD0BFA666844DB3CFECB063CEBECF6DFE28E6A6A4'
$checksumType           = 'sha256'
$silentArgs             = '/S'
$validExitCodes         = @(0)

	$packageArgs = @{
	  packageName       = $env:ChocolateyPackageName
	  fileType          = $fileType
	  url               = $url
	  checksum          = $checksum
	  checksumType      = $checksumType
	  silentArgs        = $silentArgs
	  validExitCodes    = $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
