REM 2017 Sizing Servers Lab
REM University College of West-Flanders, Department GKG
echo sizingservers.beholder.api build script
echo ----------
rmdir /S /Q Build\Release
cd sizingservers.beholder.api
dotnet restore
dotnet publish -c Release
REM If you do not specify the framework following command will not work.
dotnet ef --framework netcoreapp2.0 --configuration Release database update
cd ..
copy /Y Build\Release\netcoreapp2.0\publish\* Build\Release\netcoreapp2.0
rmdir /S /Q Build\Release\netcoreapp2.0\publish
copy /Y Build\Release\netcoreapp2.0\* Build\Release
rmdir /S /Q Build\Release\netcoreapp2.0
