INSERT INTO SpaceSystem (SpaceSystemName, Age, SpaceSystemType)
VALUES
    ('Sol', 4.5, 'Planetary'),
    ('Alpha Centauri', 6.1, 'Planetary'),
    ('Sirius', 8.7, 'Planetary'),
    ('Sagittarius A*', 13.6, 'Extragalactic'),
    ('Betelgeuse', 8.1, 'Nebula'),
    ('Orion', 12.4, 'Cluster'),
    ('Barnards Star', 10.2, 'Planetary'),
    ('Proxima Centauri', 9.4, 'Planetary'),
    ('Altair', 11.9, 'Nebula'),
    ('Lave', 7.8, 'Cluster'),
    ('Shinrarta Dezhra', 10.6, 'Extragalactic'),
    ('Wolf 359', 9.3, 'Planetary'),
    ('Epsilon Eridani', 12.0, 'Cluster'),
    ('Polaris', 13.2, 'Nebula'),
    ('Vega', 8.5, 'Cluster'),
    ('Canopus', 7.4, 'Cometary'),
    ('Arcturus', 10.8, 'Planetary'),
    ('Deneb', 12.9, 'Nebula'),
    ('Altair', 6.2, 'Planetary'),
    ('Ross 128', 11.1, 'Cluster');

INSERT INTO SpaceStation (StationName, Coordinates, Capacity, Fraction, SystemID)
VALUES
    ('Galactic Hub', '00001.123,00005.456,00010.789', 50, 'Federation', 10000),
    ('Centauri Outpost', '00002.234,00006.567,00011.890', 200, 'Alliance', 10001),
    ('Sirius Depot', '00003.345,00007.678,00012.901', 500, 'Empire', 10002),
    ('Sagittarius Base', '00004.456,00008.789,00013.012', 100, 'Rebels', 10003),
    ('Betelgeuse Port', '00005.567,00009.890,00014.123', 300, 'Federation', 10004),
    ('Orion Nexus', '00006.678,00010.901,00015.234', 600, 'Alliance', 10005),
    ('Barnard Hub', '00007.789,00011.012,00016.345', 750, 'Empire', 10006),
    ('Proxima Station', '00008.890,00012.123,00017.456', 900, 'Rebels', 10007),
    ('Altair Gateway', '00009.901,00013.234,00018.567', 150, 'Federation', 10008),
    ('Lave Colony', '00010.012,00014.345,00019.678', 120, 'Alliance', 10009),
    ('Shinrarta HQ', '00011.123,00015.456,00020.789', 350, 'Empire', 10010),
    ('Wolf Depot', '00012.234,00016.567,00021.890', 500, 'Rebels', 10011),
    ('Epsilon Port', '00013.345,00017.678,00022.901', 250, 'Federation', 10012),
    ('Polaris Dock', '00014.456,00018.789,00023.012', 600, 'Alliance', 10013),
    ('Vega Outpost', '00015.567,00019.890,00024.123', 700, 'Empire', 10014),
    ('Canopus Depot', '00016.678,00020.901,00025.234', 800, 'Rebels', 10015),
    ('Arcturus Station', '00017.789,00021.012,00026.345', 900, 'Federation', 10016),
    ('Deneb Base', '00018.890,00022.123,00027.456', 1000, 'Alliance', 10017),
    ('Altair Depot', '00019.901,00023.234,00028.567', 950, 'Empire', 10018),
    ('Ross Nexus', '00020.012,00024.345,00029.678', 850, 'Rebels', 10019);
    

INSERT INTO Spaceship (SpaceshipName, Capacity, Fleet, ShipType, FuelType, SpaceshipStatus)
VALUES
    ('SS Voyager', 2000, 'Federation', 'Exploration', 'Plasma', 'Active'),
    ('USS Enterprise', 5000, 'Federation', 'Military', 'Antimatter', 'Docked'),
    ('Galactic Cruiser', 10000, 'Alliance', 'Transportation', 'Solar', 'Maintenance'),
    ('Stellar Falcon', 150, 'Independent', 'Personal', 'Electric', 'Active'),
    ('Nebula Explorer', 2500, 'Alliance', 'Exploration', 'Solar', 'Docked'),
    ('Eclipse Runner', 8000, 'Empire', 'Passanger', 'Plasma', 'Active'),
    ('Cosmic Defender', 7500, 'Rebels', 'Military', 'Antimatter', 'Seized'),
    ('Aurora Freighter', 20000, 'Corporation', 'Transportation', 'Electric', 'Docked'),
    ('Celestial Drifter', 100, 'Independent', 'Personal', 'Plasma', 'Maintenance'),
    ('Interstellar Phoenix', 3000, 'Federation', 'Exploration', 'Solar', 'Active');


INSERT INTO DockingBay (BayNumber, StationID, Capacity, BayStatus)
VALUES
    (1, 10000, 10, 'Operational'),
    (2, 10000, 8, 'Under Maintenance'),
    (3, 10000, 12, 'Operational'),
    
    (1, 10001, 15, 'Unavailable'),
    (2, 10001, 14, 'Operational'),
    
    (1, 10002, 9, 'Operational'),
    (2, 10002, 11, 'Operational'),
    (3, 10002, 10, 'Under Maintenance'),
    
    (1, 10003, 16, 'Operational'),
    (2, 10003, 10, 'Operational'),
    
    (1, 10004, 7, 'Under Maintenance'),
    (2, 10004, 8, 'Operational'),
    (3, 10004, 6, 'Operational'),
    
    (1, 10005, 10, 'Unavailable'),
    (2, 10005, 12, 'Operational'),
    
    (1, 10006, 9, 'Operational'),
    (2, 10006, 8, 'Under Maintenance'),
    
    (1, 10007, 14, 'Operational'),
    (2, 10007, 15, 'Operational'),
    (3, 10007, 12, 'Unavailable'),
    
    (1, 10008, 11, 'Operational'),
    (2, 10008, 10, 'Under Maintenance'),
    
    (1, 10009, 8, 'Operational'),
    (2, 10009, 9, 'Operational'),
    (3, 10009, 12, 'Unavailable');

INSERT INTO DockingRecord (DockedDate, UndockedDate, ShipProdNumber, BayNumber, StationID)
VALUES
    ('2024-01-01', '2024-01-02', 10000, 1, 10000),
    ('2024-01-03', '2024-01-04', 10000, 2, 10001),
    ('2024-01-05', '2024-01-06', 10000, 3, 10002),
    ('2024-02-01', '2024-02-03', 10001, 1, 10003),
    ('2024-02-05', '2024-02-06', 10001, 2, 10004),
    ('2024-03-01', '2024-03-02', 10002, 1, 10005),
    ('2024-03-02', '2024-03-03', 10002, 2, 10006),
    ('2024-03-05', '2024-03-06', 10002, 3, 10007),
    ('2024-04-01', '2024-04-02', 10003, 1, 10008),
    ('2024-04-04', '2024-04-05', 10003, 2, 10009),
    ('2024-05-01', '2024-05-02', 10004, 1, 10000),
    ('2024-05-03', '2024-05-04', 10004, 2, 10001),
    ('2024-05-05', '2024-05-06', 10004, 3, 10009),
    ('2024-06-01', '2024-06-03', 10005, 1, 10003),
    ('2024-06-04', '2024-06-05', 10005, 2, 10004),
    ('2024-07-01', '2024-07-02', 10006, 1, 10005),
    ('2024-07-03', '2024-07-04', 10006, 2, 10006),
    ('2024-08-01', '2024-08-02', 10007, 1, 10007),
    ('2024-08-02', '2024-08-03', 10007, 2, 10008),
    ('2024-08-04', '2024-08-05', 10007, 3, 10007),
    ('2024-09-01', '2024-09-02', 10001, 1, 10000),
    ('2024-09-03', '2024-09-04', 10002, 2, 10001),
    ('2024-09-05', '2024-09-06', 10003, 3, 10002),
    ('2024-10-01', '2024-10-02', 10004, 1, 10003),
    ('2024-10-03', '2024-10-04', 10005, 2, 10004),
    ('2024-10-05', '2024-10-06', 10006, 3, 10004),
    ('2024-11-01', '2024-11-02', 10007, 1, 10006),
    ('2024-11-03', '2024-11-04', 10000, 2, 10007),
    ('2024-11-05', '2024-11-06', 10001, 3, 10004),
    ('2024-12-01', '2024-12-02', 10002, 1, 10009),
    ('2024-12-03', '2024-12-04', 10003, 2, 10000),
    ('2024-12-05', '2024-12-06', 10004, 3, 10009);


INSERT INTO Stars (StarName, StarMass, Temperature, Luminosity, SystemID)
VALUES
    ('Sol', 1.989, 5778, 3.828e26, 10001),
    ('Alpha Centauri A', 1.1, 5790, 1.519e26, 10000),
    ('Alpha Centauri B', 0.9, 5260, 0.50e26, 10002),
    ('Proxima Centauri', 0.12, 3050, 0.0005e26, 10009),
    ('Sirius A', 2.1, 9940, 25.4e26, 10004),
    ('Sirius B', 0.98, 25200, 0.00009e26, 10005),
    ('Betelgeuse', 20, 3500, 1.3e31, 10007),
    ('Rigel', 21, 12000, 1.50e31, 10007),
    ('Antares', 12, 3400, 2.3e30, 10008),
    ('Arcturus', 1.5, 4290, 2.5e26, 10003),
	('Vega', 2.1, 9600, 40.12e26, 10010),
    ('Altair', 1.79, 7700, 10.6e26, 10011),
    ('Spica', 10.3, 25000, 2300e26, 10012),
    ('Canopus', 8.0, 7400, 1300e26, 10013),
    ('Fomalhaut', 1.92, 10000, 17.7e26, 10014),
    ('Procyon', 1.497, 6500, 2.8e26, 10015),
    ('Deneb', 19.5, 8500, 19600e26, 10016),
    ('Aldebaran', 1.5, 4240, 518e26, 10017),
    ('Polaris', 4.5, 6020, 0.51e26, 10018),
    ('Rigel Kentaurus', 1.35, 5750, 1.52e26, 10019);

INSERT INTO NeutronStar (StarID, SpinRate, MagneticFieldStrength)
VALUES
    (10012, 300.5, 1.2e12), 
    (10013, 250.4, 2.0e12),
    (10016, 500.7, 2.5e12),
    (10014, 1500.9, 4.5e12),
    (10019, 1200.8, 3.3e12);


INSERT INTO MainSequence (StarID, HeliumContent, HydrogenBurningRate)
VALUES
    (10010, 0.28, 1.5e26),
    (10011, 0.25, 1.4e26),
    (10015, 0.26, 1.1e26),
    (10017, 0.22, 9.5e25),
    (10018, 0.24, 1.2e26);


INSERT INTO Planet (PlanetName, Diameter, Mass, Inhabited, SystemID)
VALUES
    ('Arcturus Prime', 12400.5, 5.8e24, 1, 10000),
    ('Elysium', 9200.3, 3.2e23, 0, 10001),
    ('Titanis', 16000.7, 7.3e24, 1, 10002),
    ('Jovian', 14000.2, 1.9e25, 0, 10003),
    ('Frosthold', 11500.4, 2.1e23, 1, 10004),
    ('Zephyrus', 13500.1, 6.2e24, 1, 10005),
    ('Oblivion', 9800.5, 4.5e23, 0, 10006),
    ('Nebulon', 11000.8, 6.4e24, 1, 10007),
    ('Aquaria', 12500.3, 7.6e23, 1, 10008),
    ('Solace', 14000.9, 3.4e24, 0, 10009),
    ('Vulcan', 13500.4, 5.5e24, 1, 10010),
    ('Hades', 16000.2, 2.8e25, 0, 10011),
    ('Inferno', 13000.7, 6.7e24, 1, 10012),
    ('Arborea', 10500.8, 1.7e24, 1, 10013),
    ('Ember', 9800.1, 3.9e23, 0, 10014),
    ('Nebula', 12200.4, 4.8e24, 1, 10015),
    ('Phoenix', 11200.9, 3.5e24, 0, 10016),
    ('Sapphire', 13500.3, 7.4e23, 1, 10017),
    ('Luna', 5200.8, 2.3e23, 1, 10018),
    ('Orionis', 14000.7, 6.2e24, 0, 10019),
    ('Aether', 12800.6, 4.1e24, 1, 10008),
    ('Pandora', 9500.4, 2.6e23, 1, 10004),
    ('Arcadia', 10000.2, 5.1e24, 0, 10010),
    ('Nova Terra', 11500.3, 3.3e24, 1, 10013),
    ('Athena', 12500.6, 6.9e24, 0, 10014),
    ('Gaea', 10500.9, 4.7e24, 1, 10015),
    ('Aquarius', 12000.2, 7.5e23, 1, 10007),
    ('Celestia', 13800.8, 8.2e24, 1, 10000),
    ('Vesta', 15000.3, 9.1e24, 0, 10019),
    ('Titan', 13000.1, 1.1e25, 1, 10017),
    ('Eden', 14000.5, 8.4e24, 0, 10003);


INSERT INTO GasGiant (PlanetID, RingSystem, CoreComposition)
VALUES
    (10003, 1, 'Hydrogen, Helium'),
    (10009, 1, 'Metallic Hydrogen, Helium'),
    (10004, 0, 'Rocky Core, Hydrogen'),
    (10005, 1, 'Helium, Ammonia'),
    (10000, 0, 'Hydrogen, Ice'); 

INSERT INTO TerrestrialPlanet (PlanetID, SurfaceType, WaterPresence)
VALUES
    (10013, 'rock', 1),
    (10022, 'crusts', 1),
    (10006, 'lava', 0),
    (10017, 'rock', 0),
    (10028, 'crusts', 1);


INSERT INTO Moon (MoonName, Diameter, Mass, OrbitalPeriod, DistanceFromPlanet, PlanetID)
VALUES
    ('Titan', 5150.0, 1.3e23, 15.9, 1.2, 10000),
    ('Europa', 3121.6, 4.8e22, 3.5, 0.4, 10000),
    ('Ganymede', 5262.4, 1.5e23, 7.2, 1.1, 10000),
    ('Callisto', 4821.5, 1.1e23, 16.7, 2.5, 10000),
    ('Io', 3643.2, 8.9e22, 1.8, 0.4, 10001),
    ('Deimos', 12.4, 1.5e15, 1.3, 0.2, 10001),
    ('Phobos', 22.2, 1.1e16, 0.3, 0.1, 10001),
    ('Charon', 1212.0, 1.5e22, 6.4, 1.5, 10002),
    ('Enceladus', 504.0, 1.1e20, 1.3, 0.3, 10002),
    ('Mimas', 396.0, 4.1e19, 0.9, 0.2, 10002),
    ('Rhea', 1528.0, 2.3e21, 4.5, 1.2, 10003),
    ('Tethys', 1062.0, 6.2e20, 3.6, 0.9, 10003),
    ('Dione', 1120.0, 1.1e21, 2.7, 0.8, 10003),
    ('Titania', 1578.0, 3.5e21, 8.7, 1.4, 10004),
    ('Oberon', 1523.0, 3.4e21, 8.2, 1.5, 10004),
    ('Ariel', 1158.0, 2.2e21, 7.5, 1.0, 10004),
    ('Umbriel', 1169.0, 2.5e21, 6.0, 1.2, 10004),
    ('Rings', 763.0, 4.3e20, 5.0, 1.0, 10005),
    ('Hebe', 156.0, 2.1e18, 2.2, 0.6, 10005),
    ('Pallene', 271.0, 5.1e19, 1.7, 0.5, 10006),
    ('Janus', 202.0, 4.5e18, 0.7, 0.3, 10006),
    ('Triton', 2706.0, 2.1e23, 5.9, 1.4, 10006),
    ('Proteus', 420.0, 1.1e21, 3.0, 1.0, 10007),
    ('Nereid', 340.0, 1.2e20, 8.1, 2.0, 10007),
    ('Ganymede II', 2300.0, 1.3e22, 7.0, 0.8, 10007),
    ('Titan III', 5200.0, 5.0e23, 10.5, 3.5, 10008),
    ('Pluto', 2376.0, 3.7e22, 5.4, 2.8, 10008),
    ('Ceres', 592.0, 9.4e19, 4.0, 1.3, 10008),
    ('Luna', 3474.8, 7.3e22, 27.3, 0.4, 10009),
    ('Persephone', 1420.0, 2.8e21, 16.5, 1.1, 10009),
    ('Hercules', 2610.0, 4.2e22, 19.2, 2.3, 10009),
    ('Hades', 2000.0, 3.6e21, 12.0, 2.0, 10010),
    ('Cassandra', 1100.0, 1.8e20, 9.4, 1.5, 10010),
    ('Athena', 3150.0, 2.5e22, 22.1, 2.1, 10010),
    ('Elysium II', 3245.0, 1.1e21, 11.5, 1.2, 10011),
    ('Perseus', 1830.0, 3.9e21, 8.8, 0.9, 10011);

INSERT INTO Mission (MissionName, Objective, StartDate, EndDate, ShipProdNumber)
VALUES
    ('Exploration of Andromeda', 'Explore the Andromeda galaxy and map uncharted systems.', '2024-01-01', '2024-02-01', 10000),
    ('Rescue Operation Alpha', 'Rescue stranded explorers from a rogue asteroid.', '2024-02-10', '2024-02-15', 10001),
    ('Defense of Sector 23', 'Defend Sector 23 from an incoming fleet of enemy ships.', '2024-03-01', '2024-03-10', 10002),
    ('Diplomatic Mission Beta', 'Facilitate peace talks between two warring factions.', '2024-04-05', '2024-04-20', 10003),
    ('Supply Run Zeta', 'Deliver critical supplies to a remote space station.', '2024-05-01', '2024-05-05', 10004),
    ('Mineral Extraction Operation', 'Mine rare minerals from a distant asteroid belt.', '2024-06-01', '2024-06-15', 10005),
    ('Cargo Transport Gamma', 'Transport a large cargo shipment from Earth to Mars.', '2024-07-01', '2024-07-10', 10006),
    ('Security Detail Delta', 'Provide security for a high-profile diplomatic meeting.', '2024-08-01', '2024-08-03', 10007),
    ('Planetary Survey Mission', 'Survey a newly discovered planet for habitability.', '2024-09-01', '2024-09-10', 10008),
    ('Search and Rescue', 'Search for missing vessels in a nearby star system.', '2024-10-01', '2024-10-05', 10009),
    ('Scientific Research in Nebula', 'Conduct research on star formation within a nebula.', '2024-11-01', '2024-11-10', 10000),
    ('Stellar Observation Mission', 'Observe and document stellar phenomena in nearby systems.', '2024-12-01', '2024-12-15', 10001),
    ('Interstellar Relay Setup', 'Install communication relay stations in deep space.', '2024-01-05', '2024-01-15', 10002),
    ('Terraforming Effort', 'Monitor the terraforming process on a distant planet.', '2024-02-01', '2024-02-28', 10003),
    ('Wartime Patrol Operation', 'Patrol the outskirts of the war zone to ensure safety.', '2024-03-01', '2024-03-15', 10004),
    ('Exploration of Outer Rim', 'Explore and chart systems in the Outer Rim.', '2024-04-05', '2024-04-25', 10005),
    ('Space Station Construction', 'Oversee the construction of a new space station.', '2024-05-10', '2024-05-30', 10006),
    ('Asteroid Belt Mining Expedition', 'Conduct mining operations in the asteroid belt.', '2024-06-10', '2024-06-20', 10007),
    ('Spy Satellite Deployment', 'Deploy satellites for intelligence gathering in hostile territory.', '2024-07-01', '2024-07-05', 10008),
    ('Defend Research Station', 'Protect a research station from a pirate attack.', '2024-08-01', '2024-08-10', 10009),
    ('Orbital Docking Assistance', 'Assist in docking a large vessel at an orbital station.', '2024-09-01', '2024-09-03', 10000),
    ('Transporting VIP', 'Transport a VIP safely to a diplomatic meeting in another star system.', '2024-10-10', '2024-10-12', 10001),
    ('Hostile Fleet Engagement', 'Engage and destroy an enemy fleet in a remote sector.', '2024-11-01', '2024-11-15', 10002),
    ('Long-Distance Cargo Transport', 'Transport essential cargo across multiple star systems.', '2024-12-01', '2024-12-20', 10003),
    ('Medical Evacuation', 'Evacuate injured personnel from a dangerous planetary surface.', '2024-01-10', '2024-01-12', 10004),
    ('Navigation and Mapping', 'Map and navigate a newly discovered system for future exploration.', '2024-02-15', '2024-02-25', 10005),
    ('Alien Artifact Recovery', 'Recover a valuable alien artifact from an abandoned station.', '2024-03-05', '2024-03-15', 10006),
    ('Space Debris Collection', 'Collect hazardous space debris to prevent collisions.', '2024-04-01', '2024-04-10', 10007),
    ('Supply Run to Outpost Zeta', 'Deliver supplies to an isolated outpost on the edge of the system.', '2024-05-01', '2024-05-05', 10008),
    ('Pirate Ship Neutralization', 'Locate and neutralize a pirate ship hiding in an uncharted region.', '2024-06-10', '2024-06-15', 10009),
    ('Deep Space Exploration', 'Venture into uncharted space to discover new star systems.', '2024-07-01', '2024-07-20', 10000);


INSERT INTO People (IdentificationNumber, PersonName, PersonSurname, Nationality)
VALUES
    ('ABC123456789', 'John', 'Doe', 'American'),
    ('DEF987654321', 'Jane', 'Smith', 'British'),
    ('GHI123456789', 'Alex', 'Johnson', 'Canadian'),
    ('JKL987654321', 'Emily', 'Brown', 'Australian'),
    ('MNO234567890', 'Chris', 'Williams', 'New Zealander'),
    ('PQR876543210', 'Sarah', 'Jones', 'Irish'),
    ('STU347778901', 'David', 'Miller', 'German'),
    ('VWX654321298', 'Olivia', 'Davis', 'French'),
    ('YZA872243210', 'Lucas', 'Garcia', 'Spanish'),
    ('ACD123098765', 'Sophia', 'Martinez', 'Italian'),
    ('RFG567890123', 'James', 'Hernandez', 'Mexican'),
    ('HIJ432109876', 'Isabella', 'Lopez', 'Portuguese'),
    ('HLM987654321', 'William', 'Gonzalez', 'Brazilian'),
    ('EOP345678901', 'Benjamin', 'Perez', 'Argentine'),
    ('WRS765432109', 'Mia', 'Wilson', 'Dutch'),
    ('UUV234567890', 'Charlotte', 'Moore', 'Swedish'),
    ('BXY654321098', 'Ethan', 'Taylor', 'Norwegian'),
    ('UAB876543210', 'Amelia', 'Anderson', 'Danish'),
    ('ODE123456789', 'Matthew', 'Thomas', 'Finnish'),
    ('JGH987654321', 'Sophie', 'Jackson', 'Russian'),
    ('LJK345278901', 'Jack', 'White', 'Ukrainian'),
    ('AMN765432109', 'Lily', 'Harris', 'Polish'),
    ('QPQ234567890', 'Daniel', 'Martin', 'Czech'),
    ('XST654321098', 'Emily', 'Thompson', 'Greek'),
    ('BVW876543210', 'Nathan', 'Garcia', 'Turkish'),
    ('AYZ123456789', 'Zoe', 'Roberts', 'Romanian'),
    ('ZCD987654321', 'Oliver', 'King', 'Bulgarian'),
    ('REF345678901', 'Jack', 'Scott', 'Hungarian'),
    ('IHI765432109', 'Eva', 'Adams', 'Slovak'),
    ('PKL234567890', 'Liam', 'Nelson', 'Serbian'),
    ('VNO654321098', 'Aria', 'Carter', 'Croatian'),
    ('EQR876522210', 'Ryan', 'Mitchell', 'Slovenian'),
    ('ATU345678901', 'Sophia', 'Perez', 'Albanian'),
    ('YWX654321098', 'Henry', 'Robinson', 'Maltese'),
    ('BZA876543210', 'Ella', 'Gonzalez', 'Kosovar'),
    ('NCD123098765', 'Samuel', 'Martinez', 'Montenegrin'),
    ('MFG567890123', 'Grace', 'Hernandez', 'Bosnian'),
    ('TIJ432109876', 'Chloe', 'Lopez', 'North Macedonian'),
    ('TLM987654321', 'Leo', 'Gonzalez', 'Kosovar'),
    ('LOP345678901', 'Zoe', 'Taylor', 'Belgian'),
    ('RRS765432109', 'Lucas', 'Graham', 'Swiss'),
    ('CUV234567890', 'Dylan', 'Morris', 'Luxembourgian'),
    ('UXY654321098', 'Adeline', 'Davis', 'Liechtenstein'),
    ('IAB876543210', 'Eva', 'Jackson', 'Sanmarinese'),
    ('PDE123456789', 'Chloe', 'Williams', 'Monacan'),
    ('BGH987654321', 'Jackson', 'Taylor', 'Armenian'),
    ('AJK345678901', 'Amos', 'Brown', 'Georgian'),
    ('VMN765433309', 'Eve', 'Miller', 'Kyrgyzstani');

INSERT INTO CrewMember (CrewMemberRole, ExperienceLevel, IdentificationNumber, BelongsTo)
VALUES
    ('Pilot', 'Expert', 'ABC123456789', 10000),
    ('Commander', 'Captain', 'DEF987654321', 10001),
    ('Mission Specialist', 'Skilled', 'GHI123456789', 10002),
    ('Surgeon', 'Specialist', 'JKL987654321', 10003),
    ('Mechanic', 'Trainee', 'MNO234567890', 10004),
    ('Cargo Specialist', 'Novice', 'PQR876543210', 10005),
    ('Pilot', 'Skilled', 'STU347778901', 10006),
    ('Commander', 'Expert', 'VWX654321298', 10007),
    ('Mission Specialist', 'Trainee', 'YZA872243210', 10008),
    ('Surgeon', 'Novice', 'ACD123098765', 10009),
    ('Mechanic', 'Specialist', 'RFG567890123', 10000),
    ('Cargo Specialist', 'Skilled', 'HIJ432109876', 10001),
    ('Pilot', 'Captain', 'HLM987654321', 10002),
    ('Commander', 'Trainee', 'EOP345678901', 10003),
    ('Mission Specialist', 'Novice', 'WRS765432109', 10004),
    ('Surgeon', 'Skilled', 'UUV234567890', 10005),
    ('Mechanic', 'Expert', 'BXY654321098', 10006),
    ('Cargo Specialist', 'Captain', 'UAB876543210', 10007),
    ('Pilot', 'Trainee', 'ODE123456789', 10008),
    ('Commander', 'Novice', 'JGH987654321', 10009),
    ('Mission Specialist', 'Expert', 'LJK345278901', 10000),
    ('Surgeon', 'Skilled', 'AMN765432109', 10001),
    ('Mechanic', 'Novice', 'QPQ234567890', 10002),
    ('Cargo Specialist', 'Expert', 'XST654321098', 10003),
    ('Pilot', 'Specialist', 'BVW876543210', 10004),
    ('Commander', 'Skilled', 'AYZ123456789', 10005),
    ('Mission Specialist', 'Trainee', 'ZCD987654321', 10006),
    ('Surgeon', 'Expert', 'REF345678901', 10007),
    ('Mechanic', 'Skilled', 'IHI765432109', 10008),
    ('Cargo Specialist', 'Specialist', 'PKL234567890', 10009);

INSERT INTO Mechanics (LicenseNumber, AreaOfExperience, IdentificationNumber)
VALUES
    ('001AB', 'Engine', 'VNO654321098'),
    ('002CD', 'Thrusters', 'EQR876522210'),
    ('003EF', 'Interface', 'ATU345678901'),
    ('004GH', 'CargoBay', 'YWX654321098'),
    ('005IJ', 'Communication', 'BZA876543210'),
    ('006KL', 'Engine', 'NCD123098765'),
    ('007MN', 'Thrusters', 'MFG567890123'),
    ('008OP', 'Interface', 'TIJ432109876'),
    ('009QR', 'CargoBay', 'TLM987654321'),
    ('010ST', 'Communication', 'LOP345678901'),
    ('011UV', 'Engine', 'RRS765432109'),
    ('012WX', 'Thrusters', 'CUV234567890'),
    ('013YZ', 'Interface', 'UXY654321098'),
    ('014ZA', 'CargoBay', 'IAB876543210'),
    ('015AB', 'Communication', 'PDE123456789'),
    ('016BC', 'Engine', 'BGH987654321'),
    ('017DE', 'Thrusters', 'AJK345678901'),
    ('018FG', 'Interface', 'VMN765433309');


INSERT INTO Maintenance (PerformedBy, StationID, MaintenanceDescription, MaintenanceDate, Cost, ShipProdNumber)
VALUES
    ('001AB', 10000, 'Engine repair and calibration', '2024-01-10', 1500.00, 10000),
    ('002CD', 10001, 'Thrusters check and maintenance', '2024-01-12', 800.00, 10001),
    ('003EF', 10002, 'Interface system upgrade', '2024-02-01', 1200.00, 10002),
    ('004GH', 10003, 'Cargo bay inspection and repairs', '2024-02-15', 500.00, 10003),
    ('005IJ', 10004, 'Communication systems overhaul', '2024-03-05', 1000.00, 10004),
    ('006KL', 10005, 'Engine and thrusters check', '2024-03-10', 1100.00, 10005),
    ('007MN', 10006, 'Thruster replacement and recalibration', '2024-03-20', 2000.00, 10006),
    ('008OP', 10007, 'Interface system diagnostic', '2024-04-01', 1500.00, 10007),
	('002CD', 10001, 'Communication radio fix', '2024-04-06', 750.00, 10000),
    ('009QR', 10008, 'Cargo bay upgrade', '2024-04-10', 900.00, 10008),
    ('010ST', 10009, 'Engine overhaul', '2024-05-01', 2500.00, 10009),
    ('011UV', 10000, 'Communication system diagnostics', '2024-05-10', 700.00, 10000),
    ('012WX', 10001, 'Interface system check', '2024-05-15', 1300.00, 10001),
    ('013YZ', 10002, 'Cargo bay inspection', '2024-06-05', 600.00, 10002),
    ('014ZA', 10003, 'Engine and thrusters calibration', '2024-06-10', 1500.00, 10003),
    ('015AB', 10004, 'Cargo bay and communication system repairs', '2024-06-20', 1000.00, 10004),
	('002CD', 10001, 'Overall check before takeoff', '2024-06-22', 800.00, 10005);

INSERT INTO Supplies (SupplyName, SupplyType, ExpirationDate, CostPerUnit)
VALUES
    ('Bandages', 'Medical', '2025-12-31', 50.00),
    ('Antibiotics', 'Medical', '2025-10-15', 100.00),
    ('Oxygen Tank', 'Fuel', '2026-02-28', 150.00),
    ('Hydraulic Fluid', 'Mechanical Component', '2026-01-30', 200.00),
    ('Rocket Fuel', 'Fuel', '2025-09-10', 300.00),
    ('Space Suit', 'Clothing', '', 1200.00),
    ('Food Rations', 'Materials', '2025-08-15', 25.00),
    ('Water Purification System', 'Materials', '2026-07-20', 450.00),
    ('Laser Cutter', 'Tools', '', 800.00),
    ('Spare Parts', 'Mechanical Component', '', 200.00),
    ('Shuttle Docking Clamp', 'Mechanical Component', '', 500.00),
    ('Data Chip', 'Data storage', '', 100.00),
    ('Space Blanket', 'Clothing', '', 150.00),
    ('Thermal Regulator', 'Mechanical Component', '', 250.00),
    ('Oxygen Scrubber', 'Fuel', '2025-12-01', 350.00),
    ('Space Helmet', 'Clothing', '', 600.00),
    ('Propellant', 'Fuel', '', 100.00),
    ('Hydraulic Pump', 'Mechanical Component', '', 450.00),
    ('Universal Translator', 'Data storage', '', 400.00),
    ('Sealing Tape', 'Tools', '', 50.00),
    ('Laser Drill', 'Tools', '', 1200.00),
    ('Power Cell', 'Fuel', '', 800.00),
    ('Space Boots', 'Clothing', '', 250.00),
    ('Magnetic Boots', 'Clothing', '', 400.00),
    ('Power Cable', 'Mechanical Component', '', 150.00),
    ('Ion Drive Fuel', 'Fuel', '', 500.00),
    ('Landing Gear', 'Mechanical Component', '', 1500.00),
    ('Holographic Display', 'Data storage', '', 350.00),
    ('Welding Torch', 'Tools', '', 1000.00),
    ('Space Food Heater', 'Materials', '', 300.00),
    ('Radio Transceiver', 'Tools', '', 700.00),
    ('Repair Kit', 'Tools', '', 250.00),
	('Iron Ore', 'Ore', '', 150.00),
    ('Copper Ore', 'Ore', '', 200.00),
    ('Nickel Ore', 'Ore', '', 180.00),
    ('Aluminum Ore', 'Ore', '', 170.00),
    ('Gold Ore', 'Ore', '', 500.00),
    ('Silver Ore', 'Ore', '', 450.00),
    ('Lithium Ore', 'Ore', '', 400.00),
    ('Uranium Ore', 'Ore', '', 700.00),
    ('Platinum Ore', 'Ore', '', 800.00),
    ('Cobalt Ore', 'Ore', '', 300.00);

INSERT INTO ShipCargoBay (ShipProdNumber, ItemID, Quantity, SnapshotDate, IsCurrent)
VALUES
	--ship number 10000
    (10000, 10001, 20, '2024-12-10', 1),
	(10000, 10005, 5, '2024-12-10', 1),
	(10000, 10020, 2, '2024-12-10', 1),
	(10000, 10029, 190, '2024-12-10', 1),
	(10000, 10017, 12, '2024-12-10', 1),

	(10000, 10001, 23, '2024-12-08', 0),
	(10000, 10005, 8, '2024-12-08', 0),
	(10000, 10020, 1, '2024-12-08', 0),
	(10000, 10029, 130, '2024-12-08', 0),
	(10000, 10017, 9, '2024-12-08', 0),


	--ship number 10003
	(10003, 10007, 1, '2024-12-10', 1),
	(10003, 10010, 4, '2024-12-10', 1),
	(10003, 10014, 28, '2024-12-10', 1),
	(10003, 10024, 19, '2024-12-10', 1),

	(10003, 10007, 0, '2024-12-08', 0),
	(10003, 10010, 2, '2024-12-08', 0),
	(10003, 10014, 11, '2024-12-08', 0),
	(10003, 10024, 123, '2024-12-08', 0);


INSERT INTO StationWarehouse (StationID, ItemID, Quantity, SnapshotDate, IsCurrent)
VALUES
	--station number 10012
    (10012, 10006, 20, '2024-12-10', 1),
	(10012, 10012, 5, '2024-12-10', 1),
	(10012, 10021, 2, '2024-12-10', 1),
	(10012, 10024, 190, '2024-12-10', 1),
	(10012, 10014, 12, '2024-12-10', 1),
	(10012, 10034, 2, '2024-12-10', 1),
	(10012, 10029, 190, '2024-12-10', 1),
	(10012, 10040, 12, '2024-12-10', 1),

	(10012, 10006, 23, '2024-12-07', 0),
	(10012, 10012, 17, '2024-12-07', 0),
	(10012, 10021, 65, '2024-12-07', 0),
	(10012, 10024, 10, '2024-12-07', 0),
	(10012, 10014, 18, '2024-12-07', 0),
	(10012, 10034, 23, '2024-12-07', 0),
	(10012, 10029, 190, '2024-12-07', 0),
	(10012, 10040, 124, '2024-12-07', 0),


	--station number 10007
	(10007, 10007, 1, '2024-12-10', 1),
	(10007, 10010, 4, '2024-12-10', 1),
	(10007, 10014, 28, '2024-12-10', 1),
	(10007, 10024, 19, '2024-12-10', 1),

	(10007, 10007, 0, '2024-12-08', 0),
	(10007, 10010, 2, '2024-12-08', 0),
	(10007, 10014, 11, '2024-12-08', 0),
	(10007, 10024, 123, '2024-12-08', 0);
	
