DROP TABLE IF EXISTS ShipCargoBay;
DROP TABLE IF EXISTS StationWarehouse;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS Moon;
DROP TABLE IF EXISTS GasGiant;
DROP TABLE IF EXISTS TerrestrialPlanet;
DROP TABLE IF EXISTS Planet;
DROP TABLE IF EXISTS MainSequence;
DROP TABLE IF EXISTS NeutronStar;
DROP TABLE IF EXISTS Stars;
DROP TABLE IF EXISTS DockingRecord;
DROP TABLE IF EXISTS DockingBay;
DROP TABLE IF EXISTS Maintenance;
DROP TABLE IF EXISTS Mechanics;
DROP TABLE IF EXISTS CrewMember;
DROP TABLE IF EXISTS People;
DROP TABLE IF EXISTS Mission;
DROP TABLE IF EXISTS SpaceStation;
DROP TABLE IF EXISTS Spaceship;
DROP TABLE IF EXISTS SpaceSystem;


CREATE TABLE SpaceSystem (
    SystemID INT IDENTITY(10000,1) NOT NULL UNIQUE,
    SpaceSystemName VARCHAR(20) NOT NULL,
    Age FLOAT NOT NULL,
    SpaceSystemType VARCHAR(20) NOT NULL,

	PRIMARY KEY (SystemID),
	CHECK (Age <= 14),
	CHECK (SpaceSystemName <> ''),
	CHECK (SpaceSystemType IN ('Planetary','Nebula','Cluster','Cometary','Extragalactic')),
);

CREATE TABLE SpaceStation (
    StationID INT IDENTITY(10000,1) NOT NULL UNIQUE,
    StationName VARCHAR(30) NOT NULL,
    Coordinates VARCHAR(35) NOT NULL UNIQUE,
    Capacity INT NOT NULL DEFAULT 10,
    Fraction VARCHAR(20) NOT NULL,
	SystemID INT NOT NULL UNIQUE,

    PRIMARY KEY (StationID),
	FOREIGN KEY (SystemID) REFERENCES SpaceSystem(SystemID),
	CHECK (StationName <> ''),
	CHECK (Coordinates LIKE '_____.___,_____.___,_____.___'),
	CHECK (Capacity BETWEEN 10 AND 1000),
	CHECK (Fraction <> '')

);


CREATE TABLE Spaceship (
    ShipProdNumber INT IDENTITY(10000,1) NOT NULL UNIQUE,
    SpaceshipName VARCHAR(40) NOT NULL,
    Capacity INT NOT NULL,
    Fleet VARCHAR(20) NOT NULL,
    ShipType VARCHAR(50) NOT NULL,
    FuelType VARCHAR(15) NOT NULL,
    SpaceshipStatus VARCHAR(15) NOT NULL,

	PRIMARY KEY (ShipProdNumber),
	CHECK (Capacity BETWEEN 0 AND 100000),
	CHECK (SpaceshipName <> ''),
	CHECK (Fleet <> ''),
	CHECK (ShipType IN ('Passanger', 'Military', 'Transportation', 'Personal', 'Exploration')),
	CHECK (FuelType IN ('Plasma', 'Solar', 'Antimatter', 'Electric')),
	CHECK (SpaceshipStatus IN ('Active', 'Seized', 'Maintenance', 'Docked'))

);

CREATE TABLE DockingBay (
    BayNumber INT NOT NULL,
    StationID INT NOT NULL,
    Capacity INT NOT NULL DEFAULT 1,
    BayStatus VARCHAR(20) NOT NULL DEFAULT 'Operational',

    PRIMARY KEY (BayNumber, StationID),
    FOREIGN KEY (StationID) REFERENCES SpaceStation(StationID),
	CHECK (BayStatus IN ('Operational', 'Under Maintenance', 'Unavailable')),
	CHECK (Capacity BETWEEN 1 AND 20),
);

CREATE TABLE DockingRecord (
    DockingID INT IDENTITY(100000,1) NOT NULL UNIQUE,
    DockedDate DATE NOT NULL,
    UndockedDate DATE NOT NULL,
	ShipProdNumber INT NOT NULL,
	BayNumber INT NOT NULL,
	StationID INT NOT NULL,

    PRIMARY KEY (DockingID),
	FOREIGN KEY (ShipProdNumber) REFERENCES Spaceship(ShipProdNumber),
	FOREIGN KEY (BayNumber, StationID) REFERENCES DockingBay(BayNumber, StationID),
    CHECK (UndockedDate >= DockedDate),
);



CREATE TABLE Stars (
    StarID INT IDENTITY(10000,1) NOT NULL UNIQUE,
    StarName VARCHAR(25) NOT NULL,
    StarMass FLOAT NOT NULL,
    Temperature FLOAT NOT NULL,
    Luminosity FLOAT NOT NULL,
    SystemID INT NOT NULL,

	PRIMARY KEY (StarID),
    FOREIGN KEY (SystemID) REFERENCES SpaceSystem(SystemID) ON DELETE CASCADE,
	CHECK (StarName <> '')
);

CREATE TABLE NeutronStar (
    StarID INT NOT NULL UNIQUE,
    SpinRate FLOAT NOT NULL,
    MagneticFieldStrength FLOAT NOT NULL,

    FOREIGN KEY (StarID) REFERENCES Stars(StarID) ON DELETE CASCADE,
	PRIMARY KEY (StarID)
);

CREATE TABLE MainSequence (
    StarID INT NOT NULL UNIQUE,
    HeliumContent FLOAT NOT NULL,
    HydrogenBurningRate FLOAT NOT NULL,

    FOREIGN KEY (StarID) REFERENCES Stars(StarID) ON DELETE CASCADE,
	PRIMARY KEY (StarID)
);


CREATE TABLE Planet (
    PlanetID INT IDENTITY(10000,1) NOT NULL UNIQUE,
	PlanetName VARCHAR(20) NOT NULL,
    Diameter FLOAT NOT NULL,
    Mass FLOAT NOT NULL,
    Inhabited bit NOT NULL,
    SystemID INT NOT NULL,

	PRIMARY KEY (PlanetID),
    FOREIGN KEY (SystemID) REFERENCES SpaceSystem(SystemID) ON DELETE CASCADE,
	CHECK (PlanetName <> '')
);

CREATE TABLE GasGiant (
	PlanetID INT,
    RingSystem bit NOT NULL,
    CoreComposition VARCHAR(50) NOT NULL,

    FOREIGN KEY (PlanetID) REFERENCES Planet(PlanetID) ON DELETE CASCADE,
	PRIMARY KEY (PlanetID)
);

CREATE TABLE TerrestrialPlanet (
	PlanetID INT,
    SurfaceType VARCHAR(15) NOT NULL,
    WaterPresence bit NOT NULL,

    FOREIGN KEY (PlanetID) REFERENCES Planet(PlanetID) ON DELETE CASCADE,
	PRIMARY KEY (PlanetID),
	CHECK (SurfaceType <> '' AND SurfaceType IN ('ice', 'crusts', 'rock', 'regolith', 'lava'))
);

CREATE TABLE Moon (
    MoonID INT IDENTITY(10000,1) NOT NULL UNIQUE,
    MoonName VARCHAR(20) NOT NULL,
    Diameter FLOAT NOT NULL,
    Mass FLOAT NOT NULL,
    OrbitalPeriod FLOAT NOT NULL,
    DistanceFromPlanet FLOAT NOT NULL,
    PlanetID INT,

    FOREIGN KEY (PlanetID) REFERENCES Planet(PlanetID) ON DELETE CASCADE,
	CHECK (MoonName <> '')
);


CREATE TABLE Mission (
	MissionID INT IDENTITY (10000, 1) NOT NULL UNIQUE,
	MissionName VARCHAR (50) NOT NULL,
	Objective VARCHAR(150),
	StartDate DATE NOT NULL,
	EndDate DATE  NOT NULL,
	ShipProdNumber INT NOT NULL,

	PRIMARY KEY (MissionID),
	FOREIGN KEY (ShipProdNumber) REFERENCES Spaceship(ShipProdNumber) ON DELETE CASCADE,
	CHECK (EndDate >= StartDate),
	CHECK (MissionName <> '')
);

CREATE TABLE People (
    IdentificationNumber CHAR(12) NOT NULL UNIQUE,
    PersonName VARCHAR(15) NOT NULL,
    PersonSurname VARCHAR(20) NOT NULL,
    Nationality VARCHAR(30) NOT NULL

	PRIMARY KEY (IdentificationNumber),
	CHECK (IdentificationNumber LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK (PersonName <> ''),
	CHECK (PersonSurname <> ''),
	CHECK (Nationality <> '')
);

CREATE TABLE CrewMember (
    CrewMemberID INT IDENTITY (1000, 1) NOT NULL UNIQUE,
    CrewMemberRole VARCHAR(25),
    ExperienceLevel VARCHAR(20) NOT NULL,
    IdentificationNumber CHAR(12) NOT NULL,
	BelongsTo INT,

	PRIMARY KEY (CrewMemberID),
    FOREIGN KEY (IdentificationNumber) REFERENCES People(IdentificationNumber) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (BelongsTo) REFERENCES Spaceship(ShipProdNumber),
	CHECK (CrewMemberRole IN ('Mechanic', 'Pilot', 'Commander', 'Mission Specialist', 'Surgeon', 'Cargo Specialist')),
	CHECK (ExperienceLevel IN ('Trainee', 'Novice', 'Skilled', 'Expert', 'Specialist', 'Captain'))
);

CREATE TABLE Mechanics (
    LicenseNumber VARCHAR(5) NOT NULL UNIQUE,
    AreaOfExperience VARCHAR(20) NOT NULL,
    IdentificationNumber CHAR(12) NOT NULL,

	PRIMARY KEY (LicenseNumber),
    FOREIGN KEY (IdentificationNumber) REFERENCES People(IdentificationNumber) 
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
	CHECK (LicenseNumber LIKE '[0-9][0-9][0-9][A-Z][A-Z]'),
	CHECK (AreaOfExperience IN ('Engine', 'Thrusters', 'Interface', 'CargoBay', 'Communication')),
	
);

CREATE TABLE Maintenance (
    MaintenanceID INT IDENTITY (10000,1) NOT NULL UNIQUE,
    PerformedBy VARCHAR(5) NOT NULL,
	StationID INT NOT NULL,
    MaintenanceDescription VARCHAR(150),
    MaintenanceDate DATE NOT NULL,
    Cost DECIMAL(10, 2) NOT NULL DEFAULT 0,
    ShipProdNumber INT NOT NULL,

	PRIMARY KEY (MaintenanceID),
    FOREIGN KEY (PerformedBy) REFERENCES Mechanics(LicenseNumber),
    FOREIGN KEY (ShipProdNumber) REFERENCES Spaceship(ShipProdNumber),
    FOREIGN KEY (StationID) REFERENCES SpaceStation(StationID)
);

CREATE TABLE Supplies (
    ItemID INT IDENTITY(10000,1) NOT NULL UNIQUE,
    SupplyName VARCHAR(30) NOT NULL,
    SupplyType VARCHAR(30) NOT NULL,
    ExpirationDate DATE,
    CostPerUnit DECIMAL(10, 2) NOT NULL DEFAULT 0,

	PRIMARY KEY (ItemID),
	CHECK (SupplyName <> ''), 
	CHECK (SupplyType IN ('Medical','Fuel', 'Mechanical Component', 'Clothing', 'Materials', 'Trade goods', 'Data storage', 'Tools', 'Ore'))

);

CREATE TABLE ShipCargoBay (
    ShipProdNumber INT,
    ItemID INT,
    Quantity INT NOT NULL DEFAULT 1,
    SnapshotDate DATE,
    IsCurrent bit,

    FOREIGN KEY (ShipProdNumber) REFERENCES Spaceship(ShipProdNumber) ON DELETE CASCADE,
    FOREIGN KEY (ItemID) REFERENCES Supplies(ItemID),
	PRIMARY KEY (ShipProdNumber, ItemID, SnapshotDate)
);

CREATE TABLE StationWarehouse (
    StationID INT NOT NULL,
    ItemID INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
    SnapshotDate DATE NOT NULL,
    IsCurrent bit NOT NULL,

    FOREIGN KEY (StationID) REFERENCES SpaceStation(StationID) ON DELETE CASCADE,
    FOREIGN KEY (ItemID) REFERENCES Supplies(ItemID),
	PRIMARY KEY (StationID, ItemID, SnapshotDate),
);