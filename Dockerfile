FROM mcr.microsoft.com/dotnet/sdk:2.1-alpine3.12
WORKDIR /code
COPY . /code
EXPOSE 80
RUN dotnet build /code/pipelines-dotnet-core.csproj -c Release -o /release
ENTRYPOINT ["dotnet","/release/pipelines-dotnet-core.dll"]
