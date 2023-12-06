MSbuild tool: download the Microsoft MSBuild from this link - https://www.microsoft.com/en-us/download/details.aspx?id=48159 

Nuget packet manager: Download Nuget Application from this link -  https://www.nuget.org/downloads 

/p:DeployOnBuild=true  

/p:DeployDefaultTarget=WebPublish  

/p:WebPublishMethod=FileSystem  

/p:SkipInvalidConfigurations=true  

/p:Configuration=Release  

/p:DeleteExistingFiles=True  

/p:publishUrl=c:\inetpub\wwwroot 

