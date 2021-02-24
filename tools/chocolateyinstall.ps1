$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '5A40A91D1424CE892CC6B78F40B903E9CCBAC1AC7542D1C24B9A10A80A21662B'
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
