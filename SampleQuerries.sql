-- Display the intensity of dokcing to different spacestations, for spaceships' type Military or Exploration between April and October
SELECT COUNT(sp.ShipProdNumber) AS Number_of_ships, sst.StationName AS Station_Name
FROM Spaceship sp
JOIN DockingRecord dr ON sp.ShipProdNumber = dr.ShipProdNumber
JOIN DockingBay db ON dr.BayNumber = db.BayNumber AND dr.StationID = db.StationID
JOIN SpaceStation sst ON db.StationID = sst.StationID
WHERE sp.ShipType IN ('Military', 'Exploration') AND MONTH(dr.DockedDate) BETWEEN 4 AND 10
GROUP BY sst.StationName

-- List all dockings of spaceship with production number equal to 10000 and bay number is not equal to 3, display docking dates and Space systems where those docking occured by dates in descending order.
SELECT dr.DockingID AS DockingID, dr.DockedDate As Docking_Date, ssy.SpaceSystemName As System_Name
FROM DockingRecord dr
JOIN Spaceship sp ON dr.ShipProdNumber = sp.ShipProdNumber
JOIN DockingBay db ON dr.BayNumber = db.BayNumber AND dr.StationID = db.StationID
JOIN SpaceStation sst ON db.StationID = sst.StationID
JOIN SpaceSystem ssy ON sst.SystemID = ssy.SystemID
WHERE sp.ShipProdNumber = 10000 AND db.BayNumber != 3
ORDER BY dr.DockedDate DESC

-- List all mechanics that earned more than 1500 for maintenance fixes in their lifetime. Sort them in a descending order by the Sum of earnings.
SELECT Mechanics.LicenseNumber AS ID_Number, SUM(Maintenance.Cost) AS Sum_of_earnings
FROM People
JOIN Mechanics ON People.IdentificationNumber = Mechanics.IdentificationNumber
JOIN Maintenance ON Mechanics.LicenseNumber = Maintenance.PerformedBy
GROUP BY Mechanics.LicenseNumber
HAVING SUM(Maintenance.Cost) >= 1500
ORDER BY Sum_of_earnings DESC

-- List Name and Surname of people that are not mechanics and their Nationality is either German, Serbian or Greek. 
SELECT People.PersonName As Person_Name, People.PersonSurname AS Person_Surname
FROM People
LEFT JOIN Mechanics ON People.IdentificationNumber = Mechanics.IdentificationNumber
WHERE Mechanics.IdentificationNumber IS NULL AND People.Nationality IN ('German','Greek', 'Serbian')

-- Display number of spaceships which exceede legal amount of cargo (150), Authorities may want to check that often to ensure no illegal actions are being undertaken.
SELECT Subquerry.ShipProdNumber, COUNT(*) AS Number_of_ships_with_too_much_cargo
FROM (SELECT ShipProdNumber, SUM(ShipCargoBay.Quantity) AS Sum_quantity 
	  FROM ShipCargoBay 
	  WHERE ShipCargoBay.IsCurrent = 1 
	  GROUP BY ShipCargoBay.ShipProdNumber
	  HAVING SUM(Quantity) > 150) AS Subquerry
GROUP BY ShipProdNumber

-- Usign view - retrieve the top 5 busiest stations by the number of docked spaceships, along with details such as the total docking duration and the average docking duration per spaceship. 
CREATE VIEW DockingOverview AS
SELECT dr.DockingID, sp.SpaceshipName, ss.StationName, db.BayStatus, dr.DockedDate, dr.UndockedDate
FROM DockingRecord dr
JOIN Spaceship sp ON dr.ShipProdNumber = sp.ShipProdNumber
JOIN DockingBay db ON dr.BayNumber = db.BayNumber AND dr.StationID = db.StationID
JOIN SpaceStation ss ON dr.StationID = ss.StationID

SELECT TOP 5 StationName,
    COUNT(DockingID) AS TotalDockings,
    SUM(DATEDIFF(DAY, DockedDate, UndockedDate)) AS TotalDockingDurationDays,
    AVG(DATEDIFF(DAY, DockedDate, UndockedDate)) AS AverageDockingDurationDays
FROM DockingOverview
WHERE DockedDate BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY StationName
ORDER BY TotalDockings DESC, TotalDockingDurationDays DESC, AverageDockingDurationDays DESC

-- Display the list of Military or Exploration spaceships which average maintenance cost is higher than average cost across all spaceships.
SELECT sp.SpaceshipName, m.Cost
FROM Maintenance m
JOIN Spaceship sp ON m.ShipProdNumber = sp.ShipProdNumber
WHERE m.Cost > (SELECT AVG(Cost) FROM Maintenance) AND sp.ShipType IN ('Military', 'Exploration')


-- Display spaceships' cargo bays, supplies and their quanties, where supply type is Medical, Tools, Materials or Fuel. This items have to be checked for illegals transportation.
SELECT sp.SpaceshipName, s.SupplyName, sb.Quantity
FROM ShipCargoBay sb
JOIN Spaceship sp ON sb.ShipProdNumber = sp.ShipProdNumber
JOIN Supplies s ON sb.ItemID = s.ItemID
WHERE sb.SnapshotDate = (
        SELECT MAX(SnapshotDate)
        FROM ShipCargoBay
        WHERE ShipProdNumber = ShipCargoBay.ShipProdNumber AND IsCurrent = 1
    )
	AND sp.SpaceshipName IN (
		SELECT SpaceshipName
        FROM DockingOverview
    )
	AND s.SupplyType IN ('Medical','Tools', 'Materials', 'Fuel')
	
