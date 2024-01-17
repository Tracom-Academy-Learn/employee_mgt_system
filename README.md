# employee_mgt_system using Elixir


### Goals
* Carry out CRUD functionality on Employees.
     -  Role Mgt 
     - CRUD using Ecto
* Generate employees reports - Logic
* Authorization
     - (session mgt) Guardian
* Request resources - Logic

  ### Structs
  * Employee
      - Name
      - username
      - firstName
      - lastName
      - Email
      - timestamp
      - Department
      - ID
      - Password
  * Request
      - Name
      - Employee ID required
      - Resource ID required
      - ID
  * Resources
      - Name
      - ID
      - resourceType(Enum)
          - Enum - status(Approved,Pending)
    > A.O.B
      - Stock balance
