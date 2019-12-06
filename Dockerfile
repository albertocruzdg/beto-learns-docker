FROM mcr.microsoft.com/dotnet/core/sdk

COPY [".", "/usr/src"]

WORKDIR /usr/src

RUN dotnet restore

RUN dotnet build

EXPOSE 5000-5001

ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]