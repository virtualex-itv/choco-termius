$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'termius'
$fileType	= 'exe'
$url	= 'https://autoupdate.termius.com/win/Termius.exe'
$softwareName	= 'Termius*'
$checksum	= '8564D681670430ED779F1D1E5529CC27A63B516D9B5F20C29C137A2A50EA7964'
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
