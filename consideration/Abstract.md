##	Brainstorm
---

###	Tree => Describe, visually, a structure for a proposed solution using ASCII tree.
---

###	Terminology
---

	- High-Level	=>	Major folders/directories, concepts e.g. SPA, REST, Data-Layer, Orchestration, Abstractions
	- Mid-Level	=>	High-Level, with  ...  Frameworks, libraries
	- Low-Level	=>	"Drill down into  ...", all of the above with  ...  file names, specifics

###	High-Level
---

```
foundation\								(GitHub root)
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

```

###	Mid-level
---

```
foundation\								(GitHub root)
|
|-SPA\
|	|
|	|-ANGULAR\
|	|
|	|-REACT\
|	|
|	|-Vue\
|	|
|	|-JQueryUI\
|	|
|	|-...\
|
|-DATA_LAYER\
|	|
|	|-Repositories\	
|	|	|
|	|	|-.NET 9\
|	|	|	|
|	|	|	|-Dapper\
|	|	|	|	|
|	|	|	|	|-PostgresSql\
|	|	|	|	|	|
|	|	|	|	|	|-Base.Data.PostgresDapper\
|	|	|	|	|	|
|	|	|	|	|	|-bin\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-Entity Framework\
|	|	|	|	|
|	|	|	|	|-Microsoft\
|	|	|	|	|
|	|	|	|	|-Dapper\
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|
|	|	|-Entity Framework\
|	|	|	|
|	|	|	|-Microsoft\
|	|	|	|
|	|	|	|-Dapper\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Node\
|	|	|
|	|	|-...\
|	|
|	|-Database\
|	|	|
|	|	|-Postgres\
|	|	|
|	|	|-MSSqlServer\
|	|	|
|	|	|-MySql\
|	|	|
|	|	|-...\
|	|
|	|-...\
|		
|-ORCHESTRATION\
|	|
|	|-Terraform\
|	|
|	|-AWS\
|	|
|	|-...\
|
|-REST\
|	|
| 	|-.NET 9\
|	|	|
|	|	|-User.Contracts\
|	|	|
|	|	|-Session.Contracts\
|	|	|
|	|	|-Base.Solution\
|	|	|	|
|	|	|	|-Base.Api\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-Maybe.Node.js\
|	|	|
|	|	|-User.Contracts\
|	|	|
|	|	|-Session.Contracts\
|	|	|
|	|	|-...\
|	|
|	|-...\
|
|-...\

```