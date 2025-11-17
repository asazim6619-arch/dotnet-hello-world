FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app

COPY . .

RUN dotnet publish -c Release -o /app/out

EXPOSE 5000

CMD ["dotnet", "/app/out/hello_world_api.dll"]

