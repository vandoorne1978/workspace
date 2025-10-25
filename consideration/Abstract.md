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
|	|	|	|	|-PostgreSQL\
|	|	|	|	|	|
|	|	|	|	|	|-Abstractions\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-User.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-My.Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-...\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-MSSql\
|	|	|	|	|	|
|	|	|	|	|	|-Abstractions\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-User.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-My.Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-...\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-Entity Framework (CF)\
|	|	|	|	|
|	|	|	|	|-MSSql\
|	|	|	|	|	|-Abstractions\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-User.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-My.Session.Data.Implementation\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-...\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-Dapper\
|	|	|	|	|	|
|	|	|	|	|	|-PostgreSQL\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-Abstractions\
|	|	|	|	|	|	|	|
|	|	|	|	|	|	|	|-User.Data.Implementation\
|	|	|	|	|	|	|	|
|	|	|	|	|	|	|	|-Session.Data.Implementation\
|	|	|	|	|	|	|	|
|	|	|	|	|	|	|	|-My.Session.Data.Implementation\
|	|	|	|	|	|	|	|
|	|	|	|	|	|	|	|-...\
|	|	|	|	|	|	|
|	|	|	|	|	|	|-...\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|
|	|	|-Node\
|	|	|	|
|	|	|	|-Dapper\
|	|	|	|	|
|	|	|	|	|-PostgreSQL\
|	|	|	|	|	|
|	|	|	|	|	|-User.Data\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Data\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-MSSql\
|	|	|	|	|	|
|	|	|	|	|	|-User.Data\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Data\
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-Database\
|	|	|
|	|	|-Postgres\
|	|	|	|
|	|	|	|-Scripts\
|	|	|	|	|
|	|	|	|	|-Install\
|	|	|	|	|
|	|	|	|	|-Abstractions\
|	|	|	|	|	|
|	|	|	|	|	|-User.Object
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-Create\
|	|	|	|	|	|
|	|	|	|	|	|-SPROCS\
|	|	|	|	|	|
|	|	|	|	|	|-Functions\
|	|	|	|	|	|
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-Update\
|	|	|	|	|	|
|	|	|	|	|	|-SPROCS\
|	|	|	|	|	|
|	|	|	|	|	|-Functions\
|	|	|	|	|	|
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-Delete\
|	|	|	|	|	|
|	|	|	|	|	|-SPROCS\
|	|	|	|	|	|
|	|	|	|	|	|-Functions\
|	|	|	|	|	|
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-Drop\
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-MSSqlServer\
|	|	|	|
|	|	|	|-Scripts\
|	|	|	|	|
|	|	|	|	|-Install\
|	|	|	|	|
|	|	|	|	|-Abstractions\
|	|	|	|	|	|
|	|	|	|	|	|-User.Object
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-Create\
|	|	|	|	|
|	|	|	|	|-Update\
|	|	|	|	|
|	|	|	|	|-Drop\
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-MySql\
|	|	|	|
|	|	|	|-Scripts\
|	|	|	|	|
|	|	|	|	|-Install\
|	|	|	|	|
|	|	|	|	|-Abstractions\
|	|	|	|	|	|
|	|	|	|	|	|-User.Object
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object
|	|	|	|	|	|
|	|	|	|	|	|-...
|	|	|	|	|
|	|	|	|	|-Create\
|	|	|	|	|
|	|	|	|	|-Update\
|	|	|	|	|
|	|	|	|	|-Drop\
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-...\
|		
|-ORCHESTRATION\
|	|
|	|-Terraform\
|	|	|
|	|	|-...\
|	|
|	|-AWS\
|	|	|
|	|	|-...\
|	|
|	|-...\
|
|-REST\
|	|
| 	|-.NET 9\
|	|	|
|	|	|-Abstraction\
|	|	|	|
|	|	|	|-User.Contracts\
|	|	|	|
|	|	|	|-Session.Contracts\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Base.Solution\
|	|	|	|
|	|	|	|-Base.Api\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Another.Solution\
|	|	|	|
|	|	|	|-Another.Api\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-Node\
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