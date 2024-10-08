USE [ExampleThemeParkDB]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 9/1/2024 1:37:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [int] NOT NULL,
	[VisitorID] [int] NULL,
	[Date] [date] NULL,
	[EntryTime] [time](7) NULL,
	[ExitTime] [time](7) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 9/1/2024 1:37:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] NOT NULL,
	[VisitorID] [int] NULL,
	[RideID] [int] NULL,
	[ReservationDate] [date] NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rides]    Script Date: 9/1/2024 1:37:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rides](
	[RideID] [int] NOT NULL,
	[RideName] [varchar](100) NULL,
	[Capacity] [int] NULL,
	[Location] [varchar](50) NULL,
	[OperatingHours] [varchar](50) NULL,
 CONSTRAINT [PK_Rides] PRIMARY KEY CLUSTERED 
(
	[RideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 9/1/2024 1:37:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketID] [int] NOT NULL,
	[VisitorID] [int] NULL,
	[TicketType] [varchar](20) NULL,
	[PurchaseDate] [date] NULL,
	[Price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitors]    Script Date: 9/1/2024 1:37:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitors](
	[VisitorID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Email] [varchar](100) NULL,
	[PhoneNumber] [varchar](15) NULL,
 CONSTRAINT [PK_Visitors] PRIMARY KEY CLUSTERED 
(
	[VisitorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Visitors] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[Visitors] ([VisitorID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Visitors]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Rides] FOREIGN KEY([RideID])
REFERENCES [dbo].[Rides] ([RideID])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Rides]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Visitors] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[Visitors] ([VisitorID])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Visitors]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Visitors] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[Visitors] ([VisitorID])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Visitors]
GO
ALTER TABLE [dbo].[Visitors]  WITH CHECK ADD  CONSTRAINT [FK_Visitors_Visitors] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[Visitors] ([VisitorID])
GO
ALTER TABLE [dbo].[Visitors] CHECK CONSTRAINT [FK_Visitors_Visitors]
GO
