$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'termius'
$fileType	= 'exe'
$url	= 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName	= 'Termius*'
$checksum	= '5C4CAEA6BB602EF8093F66F11ACA877EEC0D6BEAD6511CD2DA46169E0554083F'
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
