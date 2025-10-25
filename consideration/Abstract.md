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

```

###	Mid-level
---

```
foundation\								(GitHub root)
|
|-SCRIPTS\
|	|
|	|-Miscellaneous\
|	|	|
|	|	|-Trees\
|	|	|	|
|	|	|	|-Old\
|	|	|	|
|	|	|	|-New\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Create\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Update\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-Create-Update\
|	|	|
|	|	|-Contracts to DBObjects\
|	|	|	|
|	|	|	|-.NET 9\
|	|	|	|
|	|	|	|-Node\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-DBObjects to Contract\
|	|	|	|
|	|	|	|-.NET 9\
|	|	|	|
|	|	|	|-Node\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-...\
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
|	|	|	|	|-Wiring Scripts\
|	|	|	|	|	|
|	|	|	|	|	|-User.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-My.Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-...\
|	|	|	|
|	|	|	|-Entity Framework (CF)\
|	|	|	|	|
|	|	|	|	|-Wiring Scrips\
|	|	|	|	|	|
|	|	|	|	|	|-User.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-My.Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-MySql\
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
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-MSSql\
|	|	|	|	|	|
|	|	|	|	|	|-User.Data\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Data\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|	|	|-Wiring Scrips\
|	|	|	|	|	|
|	|	|	|	|	|-User.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-My.Session.Contracts\
|	|	|	|	|	|
|	|	|	|	|	|-...\
|	|	|	|	|
|	|	|	|	|-Abstractions\
|	|	|	|	|	|
|	|	|	|	|	|-User.Object\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object\
|	|	|	|	|	|
|	|	|	|	|	|-My.Session.Object\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-User.Object\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|	|	|	|-User.Object\
|	|	|	|	|	|
|	|	|	|	|	|-Session.Object\
|	|	|	|	|	|
|	|	|	|	|	|-...\
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
|	|	|-Wiring Scrips\
|	|	|	|
|	|	|	|-User.Contracts\
|	|	|	|
|	|	|	|-Session.Contracts\
|	|	|	|
|	|	|	|-My.Session.Contracts\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Abstractions\
|	|	|	|
|	|	|	|-User.Contracts\
|	|	|	|
|	|	|	|-Session.Contracts\
|	|	|	|
|	|	|	|-My.Session.Contracts\
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
|	|	|-Abstractions\
|	|	|	|
|	|	|	|-User.Contracts\
|	|	|	|
|	|	|	|-Session.Contracts\
|	|	|	|
|	|	|	|-My.Session.Contracts\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Base.NodeProject\
|	|	|	|
|	|	|	|-Base.Api\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-Another.NodeProject\
|	|	|	|
|	|	|	|-Another.Api\
|	|	|	|
|	|	|	|-...\
|	|	|
|	|	|-...\
|	|
|	|-...\
|
|-...\

```