-- List how many spaceships docked to different spacestations, which type is Military or Exploration and date of docking was between April and October
SELECT COUNT(Spaceship.ShipProdNumber) AS Number_of_ships, SpaceStation.StationName AS Station_Name
FROM Spaceship
JOIN DockingRecord ON Spaceship.ShipProdNumber = DockingRecord.ShipProdNumber
JOIN DockingBay ON DockingRecord.BayNumber = DockingBay.BayNumber AND DockingRecord.StationID = DockingBay.StationID
JOIN SpaceStation ON DockingBay.StationID = SpaceStation.StationID
WHERE Spaceship.ShipType IN ('Military', 'Exploration') AND MONTH(DockingRecord.DockedDate) BETWEEN 4 AND 10
GROUP BY SpaceStation.StationName

-- List all docking of spaceship with production number equal to 10000 and bay number is not equal to 3, display docking dates and Space systems where those docking occured by dates in descending order.
SELECT DockingRecord.DockingID AS DockingID, DockingRecord.DockedDate As Docking_Date, SpaceSystem.SpaceSystemName As System_Name
FROM DockingRecord
JOIN Spaceship ON DockingRecord.ShipProdNumber = Spaceship.ShipProdNumber
JOIN DockingBay ON DockingRecord.BayNumber = DockingBay.BayNumber AND DockingRecord.StationID = DockingBay.StationID
JOIN SpaceStation ON DockingBay.StationID = SpaceStation.StationID
JOIN SpaceSystem ON SpaceStation.SystemID = SpaceSystem.SystemID
WHERE Spaceship.ShipProdNumber = 10000 AND DockingBay.BayNumber != 3
ORDER BY DockingRecord.DockedDate DESC

-- List all mechanics that earned more than 1500 for maintenance fixes in their lifetime. Sort them byin a descending order by the.
SELECT Mechanics.LicenseNumber AS ID_Number, SUM(Maintenance.Cost) AS Sum_of_earnings
FROM People
JOIN Mechanics ON People.IdentificationNumber = Mechanics.IdentificationNumber
JOIN Maintenance ON Mechanics.LicenseNumber = Maintenance.PerformedBy
GROUP BY Mechanics.LicenseNumber
HAVING SUM(Maintenance.Cost) >= 1500
ORDER BY Sum_of_earnings DESC

-- List Name and Surname of people that are not mechanics and their Nationality is either German, Serbian or Greek
SELECT People.PersonName As Person_Name, People.PersonSurname AS Person_Surname
FROM People
LEFT JOIN Mechanics ON People.IdentificationNumber = Mechanics.IdentificationNumber
WHERE Mechanics.IdentificationNumber IS NULL AND People.Nationality IN ('German','Greek', 'Serbian')

-- Display number of spaceships which exceede legal amount of cargo (150) 
SELECT COUNT(*) AS Number_of_ships_with_too_much_cargo
FROM (SELECT ShipProdNumber, SUM(ShipCargoBay.Quantity) AS Sum_quantity 
	  FROM ShipCargoBay 
	  WHERE ShipCargoBay.IsCurrent = 1 
	  GROUP BY ShipCargoBay.ShipProdNumber
	  HAVING SUM(Quantity) > 150) AS Subquerry

