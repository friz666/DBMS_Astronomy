SELECT TOP (1000) [PlanetID]
      ,[SurfaceType]
      ,[WaterPresence]
  FROM [Astronomy].[dbo].[TerrestrialPlanet]

SELECT TOP (1000) [PlanetID]
      ,[PlanetName]
      ,[Diameter]
      ,[Mass]
      ,[Inhabited]
      ,[SystemID]
  FROM [Astronomy].[dbo].[Planet]

  DELETE FROM Planet
  WHERE Inhabited = 1;