~~~
workspace\
|
|-SCRIPTS\
|	|
|	|-...
|	
|-SPA\
|	|
|	|-...\
|
|-DATA_LAYER\
|	|
|	|-...\
|		
|-ORCHESTRATION\
|	|
|	|-...\
|
|-REST\
|	|
|	|-...\
|
|-...\
~~~

Here is my repo structure, beginning with the REST folder.
I have my Session controllers and services inside of my Base.Api Web API project.  
Base.Api is configured with Swagger.  

~~~
|-./REST\
|	|
| 	|-.NET 9\
|	|	|
|	|	|-Base.Solution\
|	|	|	|
|	|	|	|-Base.Api\
|	|	|	|	|
|	|	|	|	|-Session\
|	|	|	|	|
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|-...\
~~~

I want to move the session controleers and services to a class library.  
Then wire them up to Base.Api with AddApplicationPart(...)

~~~
|-./REST\
|	|
| 	|-.NET 9\
|	|	|
|	|	|-Session.Contracts.csproj	-class library
|	|	|
|	|	|
|	|	|
|	|	|-Base.Solution\
|	|	|	|
|	|	|	|-Base.Api\
|	|	|	|	|
|	|	|	|	|-Dependencies
|	|	|	|	|	|
|	|	|	|	|	|-Projects
|	|	|	|	|	|	|
|	|	|	|	|	|	|-Session.Contracts
|	|	|	|	|	|	|
|	|	|	|	|	|	|
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|-...\
~~~