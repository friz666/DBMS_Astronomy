--showing people table
SELECT TOP (1000) [IdentificationNumber]
      ,[PersonName]
      ,[PersonSurname]
      ,[Nationality]
  FROM [Astronomy].[dbo].[People]

--showing crew members table
SELECT TOP (1000) [CrewMemberID]
      ,[CrewMemberRole]
      ,[ExperienceLevel]
      ,[IdentificationNumber]
      ,[BelongsTo]
  FROM [Astronomy].[dbo].[CrewMember]

  -- delete
  DELETE FROM PEOPLE
  WHERE PersonName = 'Jack'
  -- when rows are deleted from Person table, people that had role CrewMember 
  -- assigned in CrewMember table were also deleted from the data 

  -- update
  UPDATE People
  SET IdentificationNumber = 'DBS000000000'
  WHERE IdentificationNumber = 'LJK345278901'
  -- when rows are updated in Peron table, people that had role CrewMember 
  -- assigned in CrewMember table were also updated 


