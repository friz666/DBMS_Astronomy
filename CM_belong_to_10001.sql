SELECT 
    p.PersonName, 
    p.PersonSurname
FROM 
    People p
JOIN 
    CrewMember cm ON p.IdentificationNumber = cm.IdentificationNumber
JOIN 
    Spaceship s ON cm.BelongsTo = s.ShipProdNumber
WHERE 
    s.ShipProdNumber = 10001 
    