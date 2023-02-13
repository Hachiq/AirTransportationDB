USE AirTransportDb;

CREATE TABLE [dbo].[Passenger](
	[Id] int IDENTITY(1,1) NOT NULL,
	[FirstName] varchar(20) NULL,
	[LastName] varchar(20) NULL,
	[Email] varchar(20) NULL,
	[Phone] varchar(15) NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Pilot](
	[Id] int IDENTITY(1,1) NOT NULL,
	[FirstName] varchar(20) NULL,
	[LastName] varchar(20) NULL,
	[Email] varchar(20) NULL,
	[Phone] varchar(15) NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC) 
)

CREATE TABLE [dbo].[Plane](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NumberOfSeats] int NULL,
	[DateOfManufacture] date,
	PRIMARY KEY CLUSTERED ([Id] ASC) 
)

CREATE TABLE [dbo].[Flight](
	[Id] int IDENTITY(1,1) NOT NULL,
	[DepartureDate] date,
	[DepartureCity] varchar(20) NULL,
	[ArrivalDate] date,
	[ArrivalCity] varchar(20) NULL,
	[PilotId] int Not Null,
	[PlaneId] int Not Null,
	PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([PilotId]) REFERENCES [Pilot]([Id]),
	FOREIGN KEY ([PlaneId]) REFERENCES [Plane]([Id])
)

CREATE TABLE [dbo].[Ticket](
	[Id] int IDENTITY(1,1) NOT NULL,
	[DateOfSale] date,
	[SeatNumber] int NULL,
	[PassengerId] int Not Null,
	[FlightId] int Not Null,
	PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([PassengerId]) REFERENCES [Passenger]([Id]),
	FOREIGN KEY ([FlightId]) REFERENCES [Flight]([Id])
)
