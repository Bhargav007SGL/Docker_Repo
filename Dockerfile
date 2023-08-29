FROM mcr.microsoft.com/windows/servercore:ltsc2019
COPY ./IGiS_REST_API_8.2.0.0 .
RUN .\vc_redist.x64.exe /S
COPY ./dossgl .
RUN set "IGISInstallPathx64=C:\"
CMD ["IGiSRestAPI.exe"]
