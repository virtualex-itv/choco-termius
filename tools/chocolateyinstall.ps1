$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'termius'
$fileType	= 'exe'
$url	= 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName	= 'Termius*'
$checksum	= '2FD61B23C7511520AE2914F9FBBA0E7B4195B5677975BE767DA4E8AD30ABA025'
$checksumType	= 'sha256'
$silentArgs	= '/S'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName   	= $env:ChocolateyPackageName
	  fileType			= $fileType
	  url				= $url
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
