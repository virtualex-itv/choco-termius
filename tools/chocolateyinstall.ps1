$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '6927893E2A2F6C55DC5823ABAD15A7C0137021BC7BFFCE12E87FCAFE447DF4C2'
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
