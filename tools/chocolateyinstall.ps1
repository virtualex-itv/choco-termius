$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'termius'
$fileType	= 'exe'
$url	= 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName	= 'Termius*'
$checksum	= '922AA9509556492A0EF5947A7A57AC358A9B734FE64EE598DDAB397278D86720'
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
