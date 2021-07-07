FROM mcr.microsoft.com/windows/servercore:1809

RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
    wget https://chocolatey.org/install.ps1 -OutFile c:\choco-install.ps1; \
    Invoke-Expression -Command 'c:\choco-install.ps1'  ; \
    Remove-Item c:\choco-install.ps1 -Force

RUN choco upgrade chocolatey