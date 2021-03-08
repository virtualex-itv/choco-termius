$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'termius'
$fileType               = 'exe'
$url                    = 'https://autoupdate.termius.com/windows/Termius.exe'
$softwareName           = 'Termius*'
$checksum               = '0604A44EC297E7F2E08F2023984779B853B921BC713EDE821589ED7B984B3728'
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
