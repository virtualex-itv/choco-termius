$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'termius'
$fileType	= 'exe'
$url	= 'https://autoupdate.termius.com/win/Termius.exe'
$url64bit	= $url
$softwareName	= 'Termius*'
$checksum	= '65664DE09780AC9CE36B8ABCA31A0A5B91701FCCA016FF1B3AD99E01C33E5C3A'
$checksumType	= 'sha256'
$checksum64	= $checksum
$checksumType64	= $checksumType
$silentArgs	= '/S'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName   	= $env:ChocolateyPackageName
	  fileType			= $fileType
	  url				= $url
	  url64bit			= $url64bit
	  unzipLocation 	= $toolsDir
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  checksum64      	= $checksum64
	  checksumType64	= $checksumType64
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
