$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '96139A084BE6FFD6780B8C3EF48E81AD284856F24F07BF1CA178E13CBF42AABD'
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
