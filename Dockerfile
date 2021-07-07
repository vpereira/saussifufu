FROM mcr.microsoft.com/windows/servercore:1809

RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
    wget https://www.python.org/ftp/python/3.9.6/python-3.9.6.exe -OutFile c:\python-3.9.6.exe ; \
    Start-Process c:\python-3.9.6.exe -ArgumentList '/quiet InstallAllUsers=1 PrependPath=1' -Wait ; \
    Remove-Item c:\python-3.9.6.exe -Force