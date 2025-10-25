##	Brainstorm
---

###	Tree => Describe, visually, a structure for a proposed solution using ASCII tree.
---

###	Terminology
---

	- High-Level	=>	Major folders/directories, concepts e.g. SPA, REST, Data-Layer, Orchestration, Abstractions
	- Mid-Level		=>	High-Level, with  ...  Frameworks, libraries
	- Low-Level		=>	"Drill down into  ...", all of the above with  ...  file names, specifics

###	High-Level
```
foundation\								(GitHub root)
|
|-SPA\									(currently ANGULAR\)
|	|
|	|-ANGULAR\							(move here)
|	|-Maybe.REACT\						(a future REACT implementation that uses a REST API)
|	|-Maybe.Vue.js\						(a future Vue.js implementation that uses a REST API)
|	|-Maybe.JQueryUI\					(a future JQueryUI implementation that uses a REST API)
|	|-...
|
|-DATA_LAYER\
|	|
|	|-Repositories\						(create)
|	|	|-.NET 9\						(currently PostgresSQL-Dapper\)
|	|	|	|-PostgresDapper\			(move/create)
|	|	|	|-Maybe.EntityFramework\	(a future implementation of entity framework CF)
|	|	|	|-...
|	|	|
|	|	|-Maybe.Node.js\				(a future Node.js implementation of the repository pattern)
|	|	|	|-...
|	|	|-...
|	|
|	|-Database\
|	|	|-Maybe.Postgres\				(move install, init.sql, update.sql, etc... here)
|	|	|	|-Maybe.Init.Scripts\
|	|	|		|-Maybe.Install.RDBMS	(install postges RDBMS command line...)
|	|	|		|-Maybe.Init.DB			(create and config:  Table, Roles, Permissions...)
|	|	|		|-...
|	|	|	|-Maybe.Update.User			(update user table...)
|	|	|	|-...
|	|	|-Maybe.MSS						(future Microsoft Sql Server...)
|	|	|	|-...
|	|	|-...
|	|-...
|		
|-ORCHESTRATION\
|	|
|	|-Maybe.ORCHESTRATION.Tool\			(when I get to this point...) 
|	|-Maybe.AWS\						(future AWS deploy for a SOLUTION)
|	|	|-Maybe.AWS.Deploy\
|	|	|-...
|	|
|	|-...
|
|-REST\
|	|
| 	|-.NET 9\
|	|	|-Base.Contracts\
|	|	|-Base.Solution\
|	|		|-Base.Api\
|	|			|-appsettings.json		(only items for Web API build and config(wiring etc..).  I'll explain after...)\
|	|			|-...
|	|-Node\		
|	|
|	|-...
|
|-...

```

---

###	Mid-level