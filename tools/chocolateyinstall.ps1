$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '4F22FA89F8201D5FB0CA09B401472406543F54937278DABFB8FDA7F92C03210C'
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
