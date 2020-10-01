USE [master]
GO
/****** Object:  Database [TaxBreeze]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
CREATE DATABASE [TaxBreeze]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TaxBreeze', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TaxBreeze.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TaxBreeze_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TaxBreeze_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TaxBreeze] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TaxBreeze].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TaxBreeze] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TaxBreeze] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TaxBreeze] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TaxBreeze] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TaxBreeze] SET ARITHABORT OFF 
GO
ALTER DATABASE [TaxBreeze] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TaxBreeze] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TaxBreeze] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TaxBreeze] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TaxBreeze] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TaxBreeze] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TaxBreeze] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TaxBreeze] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TaxBreeze] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TaxBreeze] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TaxBreeze] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TaxBreeze] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TaxBreeze] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TaxBreeze] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TaxBreeze] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TaxBreeze] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TaxBreeze] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TaxBreeze] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TaxBreeze] SET RECOVERY FULL 
GO
ALTER DATABASE [TaxBreeze] SET  MULTI_USER 
GO
ALTER DATABASE [TaxBreeze] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TaxBreeze] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TaxBreeze] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TaxBreeze] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TaxBreeze]
GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAddress](
	[ID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[Flat_Door_BlockNo] [varchar](20) NOT NULL,
	[Premises_Building_Village] [varchar](50) NOT NULL,
	[Road_Street_PostOffice] [varchar](50) NOT NULL,
	[Area_Locality] [varchar](50) NOT NULL,
	[PinCode] [int] NOT NULL,
	[Town_City_District] [varchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAgriculturalIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAgriculturalIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[GrossAgriculturalReceipt] [money] NULL,
	[AgriculturalExpenditure] [money] NULL,
	[UnabsorbedLoss] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblAgriculturalIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAOPAsset]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAOPAsset](
	[ID] [int] NOT NULL,
	[AssetID] [int] NOT NULL,
	[AnyAOPAsset] [bit] NULL,
	[NameOfFirm] [varchar](100) NULL,
	[Flat_DoorNo] [varchar](20) NULL,
	[NameOfPremise] [varchar](50) NULL,
	[Road_Street] [varchar](50) NULL,
	[Area_Locality] [varchar](50) NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[PINCode] [int] NULL,
	[PANOfFirm] [varchar](12) NULL,
	[AssesseeInvestmentInFirm] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblAOPAsset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAsstesLiabilities]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAsstesLiabilities](
	[ID] [int] NOT NULL,
	[TaxReturnID] [int] NOT NULL,
	[Liability] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblAsstesLiabilities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBankAccountDetails]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBankAccountDetails](
	[ID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[AccountType] [varchar](50) NOT NULL,
	[NameOfBank] [varchar](100) NOT NULL,
	[IFSCCode] [varchar](50) NULL,
	[IsPrimaryBank] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblBankAccountDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCapitalGains]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCapitalGains](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[Doc_SaleOfSharesDebentures] [varchar](500) NULL,
	[Doc_SaleOfLandBuilding] [varchar](500) NULL,
	[Doc_SaleOfOtherAsset] [varchar](500) NULL,
	[Doc_SaleOfMutualFunds] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblCapitalGains] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChallanDetails]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChallanDetails](
	[ID] [int] NOT NULL,
	[PaidTaxID] [int] NOT NULL,
	[BSRCode] [varchar](50) NOT NULL,
	[DateOfPayment] [datetime] NULL,
	[ChallanSRNo] [varchar](50) NOT NULL,
	[TaxPaid] [money] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblChallanDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryID] [int] NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDeductions]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDeductions](
	[ID] [int] NOT NULL,
	[TaxReturnID] [int] NOT NULL,
	[Deduction] [money] NULL,
	[SectionCategory] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDeductions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDeductionSection80D]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDeductionSection80D](
	[ID] [int] NOT NULL,
	[DeductionID] [int] NOT NULL,
	[MedicalInsurancePremium] [money] NULL,
	[HealthCheckUpFee] [money] NULL,
	[PremiumForParents] [money] NULL,
	[AreParentsSenior] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDeductionSection80D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDeductionSection80DDB]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDeductionSection80DDB](
	[ID] [int] NOT NULL,
	[DeductionID] [int] NOT NULL,
	[MedicalTreatmentCost] [money] NULL,
	[AgeOfPerson] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDeductionSection80DDB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDeductionSection80GG]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDeductionSection80GG](
	[ID] [int] NOT NULL,
	[DeductionID] [int] NOT NULL,
	[RentPaidPerMonth] [money] NULL,
	[NumberOfMonthsPaid] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDeductionSection80GG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDependentIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDependentIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[NameOfPerson] [varchar](50) NOT NULL,
	[Relationship] [varchar](50) NOT NULL,
	[NatureOfIncome] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDependentIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDoneeDetails]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoneeDetails](
	[ID] [int] NOT NULL,
	[DeductionID] [int] NOT NULL,
	[DoneeName] [varchar](50) NULL,
	[DonationAmount] [money] NULL,
	[DoneePAN] [varchar](12) NULL,
	[DeductionLimit] [varchar](50) NOT NULL,
	[QualifyingPercent] [int] NOT NULL,
	[DoneeAddress] [varchar](100) NULL,
	[DoneePINCode] [int] NULL,
	[DoneeTown_City] [varchar](100) NULL,
	[DoneeState] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDoneeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblExemptIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExemptIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[DividendEarned] [money] NULL,
	[ExemptInterestIncome] [money] NULL,
	[MiscellaneousExemptIncome] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblExemptIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblForeignAsstes]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblForeignAsstes](
	[ID] [int] NOT NULL,
	[AssetID] [int] NOT NULL,
	[ForeignAssetDocument] [varchar](500) NULL,
	[ForeignAssetDocPassword] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblForeignAsstes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblImmovableAsset]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblImmovableAsset](
	[ID] [int] NOT NULL,
	[AssetID] [int] NOT NULL,
	[AnyImmovableAsset] [bit] NULL,
	[Description] [varchar](500) NULL,
	[Flat_DoorNo] [varchar](20) NULL,
	[NameOfPremise] [varchar](50) NULL,
	[Road_Street] [varchar](50) NULL,
	[Area_Locality] [varchar](50) NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[PinCode] [int] NULL,
	[Amount] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblImmovableAsset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIncome](
	[ID] [int] NOT NULL,
	[TaxReturnID] [int] NOT NULL,
	[IncomeType] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblInterestIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterestIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[BankAndPostOfficeDeposits] [money] NULL,
	[FixedDeposits] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblInterestIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMainMenu]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMainMenu](
	[MainMenuID] [int] IDENTITY(1,1) NOT NULL,
	[MainMenuText] [varchar](150) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblMainMenu] PRIMARY KEY CLUSTERED 
(
	[MainMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMovableAsset]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMovableAsset](
	[ID] [int] NOT NULL,
	[AssetID] [int] NOT NULL,
	[Jewellery_Bullion] [money] NULL,
	[ArcheologicalCollections] [money] NULL,
	[VehicleAssets] [money] NULL,
	[BankDeposits] [money] NULL,
	[SharesAndSecurities] [money] NULL,
	[InsurancePolicies] [money] NULL,
	[LoansAndAdvances] [money] NULL,
	[CashInHand] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblMovableAsset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOtherIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOtherIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[DocumentUrl] [varchar](500) NULL,
	[DocumentPassword] [varchar](50) NULL,
	[Income] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblOtherIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPersonalInfo]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPersonalInfo](
	[ID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[FathersName] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[MobileNo] [varchar](15) NOT NULL,
	[SecondaryMobileNo] [varchar](15) NULL,
	[LandlineNo] [varchar](20) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[EmployerName] [varchar](50) NOT NULL,
	[EmployerType] [varchar](50) NOT NULL,
	[PANCardNumber] [varchar](12) NOT NULL,
	[AadharNumber] [varchar](15) NOT NULL,
	[PassportNumber] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPersonalInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPFWithdrawalIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPFWithdrawalIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[PFAmount] [money] NULL,
	[TaxRate] [decimal](18, 0) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPFWithdrawalIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPlanPackages]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPlanPackages](
	[PackageID] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](50) NOT NULL,
	[PackageDescription] [varchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPlanPackages] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProperty]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProperty](
	[PropertyID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[PropertyType] [varchar](50) NULL,
	[Flat_Door_BlockNum] [varchar](150) NOT NULL,
	[Road_Street] [varchar](150) NULL,
	[State] [int] NOT NULL,
	[PINCode] [int] NOT NULL,
	[Area_Locality] [varchar](150) NOT NULL,
	[Town_City] [varchar](150) NOT NULL,
	[Country] [int] NOT NULL,
	[LoanID] [int] NULL,
	[CoOwnerShipID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPropertyCoOwnership]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPropertyCoOwnership](
	[ID] [int] NOT NULL,
	[IsPropertyCoOwned] [bit] NOT NULL,
	[OwnershipShare] [int] NULL,
	[CoOwnerName] [varchar](50) NOT NULL,
	[CoOwnerPAN] [varchar](12) NOT NULL,
	[CoOwnerShare] [money] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPropertyCoOwnership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPropertyIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPropertyIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[PropertyID] [int] NOT NULL,
	[AnnualRentReceived] [money] NULL,
	[HouseTaxPaid] [money] NULL,
	[NameOfTenant] [varchar](100) NULL,
	[PANOfTenant] [varchar](12) NULL,
	[UnRealizedRentAmount] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPropertyIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPropertyLoanDetails]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPropertyLoanDetails](
	[ID] [int] NOT NULL,
	[AnyLoanApplicable] [bit] NULL,
	[LoanInterest] [money] NULL,
	[LoanInterestCertificate] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPropertyLoanDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSalaryIncome]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSalaryIncome](
	[ID] [int] NOT NULL,
	[IncomeID] [int] NOT NULL,
	[DocumentUrl] [varchar](200) NOT NULL,
	[DocumentPassword] [varchar](50) NOT NULL,
	[IncomeFromSalary] [money] NULL,
	[NameOfEmployer] [varchar](50) NOT NULL,
	[EmployerType] [varchar](50) NOT NULL,
	[TANOfEmployer] [varchar](50) NOT NULL,
	[TaxDeducted] [money] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblSalaryIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSideMenu]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSideMenu](
	[SideMenuID] [int] IDENTITY(1,1) NOT NULL,
	[SideMenuText] [varchar](150) NOT NULL,
	[SubMenuID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblSideMenu] PRIMARY KEY CLUSTERED 
(
	[SideMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblState](
	[StateID] [int] NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[CountryID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubMenu]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubMenu](
	[SubMenuID] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuText] [varchar](150) NOT NULL,
	[MainMenuID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblSubMenu] PRIMARY KEY CLUSTERED 
(
	[SubMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaxesPaid]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaxesPaid](
	[ID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[Document26AS] [varchar](500) NULL,
	[DocumentPassword] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTaxesPaid] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaxProfileQuestion]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaxProfileQuestion](
	[QuestionID] [int] NOT NULL,
	[Question] [varchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTaxProfileQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaxReturn]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaxReturn](
	[TaxReturnID] [int] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[AssessmentYear] [varchar](50) NOT NULL,
	[PlanID] [int] NOT NULL,
	[Status] [varchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTaxReturn] PRIMARY KEY CLUSTERED 
(
	[TaxReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaxSummary]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaxSummary](
	[ID] [int] NOT NULL,
	[TaxReturnID] [int] NOT NULL,
	[GrossTotalIncome] [money] NULL,
	[Deductions] [money] NULL,
	[NetTaxIncome] [money] NULL,
	[TaxLiability] [money] NULL,
	[TaxCredit] [money] NULL,
	[TaxesPaid] [money] NULL,
	[Interest] [money] NULL,
	[Balance] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTaxSummary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserBasicInfo]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserBasicInfo](
	[ID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Answer] [bit] NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblUserTaxProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserRegistration]    Script Date: 09-Apr-2018 Mon 06:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserRegistration](
	[UserID] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[PANNumber] [varchar](12) NULL,
	[IsEligible] [bit] NULL,
	[ReferenceNumber] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_tblUserRegistration] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblAddress] ADD  CONSTRAINT [DF_tblAddress_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAgriculturalIncome] ADD  CONSTRAINT [DF_tblAgriculturalIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAOPAsset] ADD  CONSTRAINT [DF_tblAOPAsset_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAOPAsset] ADD  CONSTRAINT [DF_tblAOPAsset_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblAsstesLiabilities] ADD  CONSTRAINT [DF_tblAsstesLiabilities_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAsstesLiabilities] ADD  CONSTRAINT [DF_tblAsstesLiabilities_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblBankAccountDetails] ADD  CONSTRAINT [DF_tblBankAccountDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCapitalGains] ADD  CONSTRAINT [DF_tblCapitalGains_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCapitalGains] ADD  CONSTRAINT [DF_tblCapitalGains_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblChallanDetails] ADD  CONSTRAINT [DF_tblChallanDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCountry] ADD  CONSTRAINT [DF_tblCountry_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCountry] ADD  CONSTRAINT [DF_tblCountry_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDeductions] ADD  CONSTRAINT [DF_tblDeductions_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDeductions] ADD  CONSTRAINT [DF_tblDeductions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDeductionSection80D] ADD  CONSTRAINT [DF_tblDeductionSection80D_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDeductionSection80D] ADD  CONSTRAINT [DF_tblDeductionSection80D_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB] ADD  CONSTRAINT [DF_tblDeductionSection80DDB_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB] ADD  CONSTRAINT [DF_tblDeductionSection80DDB_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDeductionSection80GG] ADD  CONSTRAINT [DF_tblDeductionSection80GG_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDeductionSection80GG] ADD  CONSTRAINT [DF_tblDeductionSection80GG_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDependentIncome] ADD  CONSTRAINT [DF_tblDependentIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDoneeDetails] ADD  CONSTRAINT [DF_tblDoneeDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDoneeDetails] ADD  CONSTRAINT [DF_tblDoneeDetails_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblExemptIncome] ADD  CONSTRAINT [DF_tblExemptIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblExemptIncome] ADD  CONSTRAINT [DF_tblExemptIncome_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblForeignAsstes] ADD  CONSTRAINT [DF_tblForeignAsstes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblForeignAsstes] ADD  CONSTRAINT [DF_tblForeignAsstes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblImmovableAsset] ADD  CONSTRAINT [DF_tblImmovableAsset_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblIncome] ADD  CONSTRAINT [DF_tblIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblIncome] ADD  CONSTRAINT [DF_tblIncome_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblInterestIncome] ADD  CONSTRAINT [DF_tblInterestIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMainMenu] ADD  CONSTRAINT [DF_tblMainMenu_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMainMenu] ADD  CONSTRAINT [DF_tblMainMenu_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblMovableAsset] ADD  CONSTRAINT [DF_tblMovableAsset_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMovableAsset] ADD  CONSTRAINT [DF_tblMovableAsset_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblOtherIncome] ADD  CONSTRAINT [DF_tblOtherIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPersonalInfo] ADD  CONSTRAINT [DF_tblPersonalInfo_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPersonalInfo] ADD  CONSTRAINT [DF_tblPersonalInfo_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome] ADD  CONSTRAINT [DF_tblPFWithdrawalIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome] ADD  CONSTRAINT [DF_tblPFWithdrawalIncome_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblPlanPackages] ADD  CONSTRAINT [DF_tblPlanPackages_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPlanPackages] ADD  CONSTRAINT [DF_tblPlanPackages_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProperty] ADD  CONSTRAINT [DF_tblProperty_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPropertyCoOwnership] ADD  CONSTRAINT [DF_tblPropertyCoOwnership_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPropertyIncome] ADD  CONSTRAINT [DF_tblPropertyIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPropertyIncome] ADD  CONSTRAINT [DF_tblPropertyIncome_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblPropertyLoanDetails] ADD  CONSTRAINT [DF_tblPropertyLoanDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblSalaryIncome] ADD  CONSTRAINT [DF_tblSalaryIncome_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblSideMenu] ADD  CONSTRAINT [DF_tblSideMenu_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblState] ADD  CONSTRAINT [DF_tblState_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblState] ADD  CONSTRAINT [DF_tblState_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSubMenu] ADD  CONSTRAINT [DF_tblSubMenu_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblSubMenu] ADD  CONSTRAINT [DF_tblSubMenu_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblTaxesPaid] ADD  CONSTRAINT [DF_tblTaxesPaid_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTaxesPaid] ADD  CONSTRAINT [DF_tblTaxesPaid_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblTaxReturn] ADD  CONSTRAINT [DF_tblTaxReturn_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTaxReturn] ADD  CONSTRAINT [DF_tblTaxReturn_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblTaxSummary] ADD  CONSTRAINT [DF_tblTaxSummary_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTaxSummary] ADD  CONSTRAINT [DF_tblTaxSummary_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblUserBasicInfo] ADD  CONSTRAINT [DF_tblUserTaxProfile_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblUserBasicInfo] ADD  CONSTRAINT [DF_tblUserTaxProfile_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblUserRegistration] ADD  CONSTRAINT [DF_tblUserRegistration_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblUserRegistration] ADD  CONSTRAINT [DF_tblUserRegistration_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblState] FOREIGN KEY([State])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblState]
GO
ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblUser] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblUser]
GO
ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblAgriculturalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblAgriculturalIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblAgriculturalIncome] CHECK CONSTRAINT [FK_tblAgriculturalIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblAgriculturalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblAgriculturalIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAgriculturalIncome] CHECK CONSTRAINT [FK_tblAgriculturalIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblAgriculturalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblAgriculturalIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAgriculturalIncome] CHECK CONSTRAINT [FK_tblAgriculturalIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblAOPAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblAOPAsset_tblAsstesLiabilities] FOREIGN KEY([AssetID])
REFERENCES [dbo].[tblAsstesLiabilities] ([ID])
GO
ALTER TABLE [dbo].[tblAOPAsset] CHECK CONSTRAINT [FK_tblAOPAsset_tblAsstesLiabilities]
GO
ALTER TABLE [dbo].[tblAOPAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblAOPAsset_tblCountry] FOREIGN KEY([Country])
REFERENCES [dbo].[tblCountry] ([CountryID])
GO
ALTER TABLE [dbo].[tblAOPAsset] CHECK CONSTRAINT [FK_tblAOPAsset_tblCountry]
GO
ALTER TABLE [dbo].[tblAOPAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblAOPAsset_tblState] FOREIGN KEY([State])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblAOPAsset] CHECK CONSTRAINT [FK_tblAOPAsset_tblState]
GO
ALTER TABLE [dbo].[tblAOPAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblAOPAsset_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAOPAsset] CHECK CONSTRAINT [FK_tblAOPAsset_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblAOPAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblAOPAsset_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAOPAsset] CHECK CONSTRAINT [FK_tblAOPAsset_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblAsstesLiabilities]  WITH CHECK ADD  CONSTRAINT [FK_tblAsstesLiabilities_tblTaxReturn] FOREIGN KEY([TaxReturnID])
REFERENCES [dbo].[tblTaxReturn] ([TaxReturnID])
GO
ALTER TABLE [dbo].[tblAsstesLiabilities] CHECK CONSTRAINT [FK_tblAsstesLiabilities_tblTaxReturn]
GO
ALTER TABLE [dbo].[tblAsstesLiabilities]  WITH CHECK ADD  CONSTRAINT [FK_tblAsstesLiabilities_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAsstesLiabilities] CHECK CONSTRAINT [FK_tblAsstesLiabilities_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblAsstesLiabilities]  WITH CHECK ADD  CONSTRAINT [FK_tblAsstesLiabilities_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblAsstesLiabilities] CHECK CONSTRAINT [FK_tblAsstesLiabilities_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblBankAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblBankAccountDetails_tblUser] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblBankAccountDetails] CHECK CONSTRAINT [FK_tblBankAccountDetails_tblUser]
GO
ALTER TABLE [dbo].[tblBankAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblBankAccountDetails_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblBankAccountDetails] CHECK CONSTRAINT [FK_tblBankAccountDetails_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblBankAccountDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblBankAccountDetails_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblBankAccountDetails] CHECK CONSTRAINT [FK_tblBankAccountDetails_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblCapitalGains]  WITH CHECK ADD  CONSTRAINT [FK_tblCapitalGains_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblCapitalGains] CHECK CONSTRAINT [FK_tblCapitalGains_tblIncome]
GO
ALTER TABLE [dbo].[tblCapitalGains]  WITH CHECK ADD  CONSTRAINT [FK_tblCapitalGains_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblCapitalGains] CHECK CONSTRAINT [FK_tblCapitalGains_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblCapitalGains]  WITH CHECK ADD  CONSTRAINT [FK_tblCapitalGains_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblCapitalGains] CHECK CONSTRAINT [FK_tblCapitalGains_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblChallanDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblChallanDetails_tblTaxesPaid] FOREIGN KEY([PaidTaxID])
REFERENCES [dbo].[tblTaxesPaid] ([ID])
GO
ALTER TABLE [dbo].[tblChallanDetails] CHECK CONSTRAINT [FK_tblChallanDetails_tblTaxesPaid]
GO
ALTER TABLE [dbo].[tblChallanDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblChallanDetails_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblChallanDetails] CHECK CONSTRAINT [FK_tblChallanDetails_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblChallanDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblChallanDetails_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblChallanDetails] CHECK CONSTRAINT [FK_tblChallanDetails_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblCountry]  WITH CHECK ADD  CONSTRAINT [FK_tblCountry_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblCountry] CHECK CONSTRAINT [FK_tblCountry_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblCountry]  WITH CHECK ADD  CONSTRAINT [FK_tblCountry_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblCountry] CHECK CONSTRAINT [FK_tblCountry_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDeductions]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductions_tblTaxReturn] FOREIGN KEY([TaxReturnID])
REFERENCES [dbo].[tblTaxReturn] ([TaxReturnID])
GO
ALTER TABLE [dbo].[tblDeductions] CHECK CONSTRAINT [FK_tblDeductions_tblTaxReturn]
GO
ALTER TABLE [dbo].[tblDeductions]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductions_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductions] CHECK CONSTRAINT [FK_tblDeductions_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDeductions]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductions_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductions] CHECK CONSTRAINT [FK_tblDeductions_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDeductionSection80D]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80D_tblDeductions] FOREIGN KEY([DeductionID])
REFERENCES [dbo].[tblDeductions] ([ID])
GO
ALTER TABLE [dbo].[tblDeductionSection80D] CHECK CONSTRAINT [FK_tblDeductionSection80D_tblDeductions]
GO
ALTER TABLE [dbo].[tblDeductionSection80D]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80D_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80D] CHECK CONSTRAINT [FK_tblDeductionSection80D_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDeductionSection80D]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80D_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80D] CHECK CONSTRAINT [FK_tblDeductionSection80D_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80DDB_tblDeductions] FOREIGN KEY([DeductionID])
REFERENCES [dbo].[tblDeductions] ([ID])
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB] CHECK CONSTRAINT [FK_tblDeductionSection80DDB_tblDeductions]
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80DDB_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB] CHECK CONSTRAINT [FK_tblDeductionSection80DDB_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80DDB_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80DDB] CHECK CONSTRAINT [FK_tblDeductionSection80DDB_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDeductionSection80GG]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80GG_tblDeductions] FOREIGN KEY([DeductionID])
REFERENCES [dbo].[tblDeductions] ([ID])
GO
ALTER TABLE [dbo].[tblDeductionSection80GG] CHECK CONSTRAINT [FK_tblDeductionSection80GG_tblDeductions]
GO
ALTER TABLE [dbo].[tblDeductionSection80GG]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80GG_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80GG] CHECK CONSTRAINT [FK_tblDeductionSection80GG_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDeductionSection80GG]  WITH CHECK ADD  CONSTRAINT [FK_tblDeductionSection80GG_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDeductionSection80GG] CHECK CONSTRAINT [FK_tblDeductionSection80GG_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDependentIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblDependentIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblDependentIncome] CHECK CONSTRAINT [FK_tblDependentIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblDependentIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblDependentIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDependentIncome] CHECK CONSTRAINT [FK_tblDependentIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDependentIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblDependentIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDependentIncome] CHECK CONSTRAINT [FK_tblDependentIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblDoneeDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblDoneeDetails_tblDeductions] FOREIGN KEY([DeductionID])
REFERENCES [dbo].[tblDeductions] ([ID])
GO
ALTER TABLE [dbo].[tblDoneeDetails] CHECK CONSTRAINT [FK_tblDoneeDetails_tblDeductions]
GO
ALTER TABLE [dbo].[tblDoneeDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblDoneeDetails_tblState] FOREIGN KEY([DoneeState])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblDoneeDetails] CHECK CONSTRAINT [FK_tblDoneeDetails_tblState]
GO
ALTER TABLE [dbo].[tblDoneeDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblDoneeDetails_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDoneeDetails] CHECK CONSTRAINT [FK_tblDoneeDetails_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblDoneeDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblDoneeDetails_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblDoneeDetails] CHECK CONSTRAINT [FK_tblDoneeDetails_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblExemptIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblExemptIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblExemptIncome] CHECK CONSTRAINT [FK_tblExemptIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblExemptIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblExemptIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblExemptIncome] CHECK CONSTRAINT [FK_tblExemptIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblExemptIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblExemptIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblExemptIncome] CHECK CONSTRAINT [FK_tblExemptIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblForeignAsstes]  WITH CHECK ADD  CONSTRAINT [FK_tblForeignAsstes_tblAsstesLiabilities] FOREIGN KEY([AssetID])
REFERENCES [dbo].[tblAsstesLiabilities] ([ID])
GO
ALTER TABLE [dbo].[tblForeignAsstes] CHECK CONSTRAINT [FK_tblForeignAsstes_tblAsstesLiabilities]
GO
ALTER TABLE [dbo].[tblForeignAsstes]  WITH CHECK ADD  CONSTRAINT [FK_tblForeignAsstes_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblForeignAsstes] CHECK CONSTRAINT [FK_tblForeignAsstes_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblForeignAsstes]  WITH CHECK ADD  CONSTRAINT [FK_tblForeignAsstes_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblForeignAsstes] CHECK CONSTRAINT [FK_tblForeignAsstes_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblImmovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblImmovableAsset_tblAsstesLiabilities] FOREIGN KEY([AssetID])
REFERENCES [dbo].[tblAsstesLiabilities] ([ID])
GO
ALTER TABLE [dbo].[tblImmovableAsset] CHECK CONSTRAINT [FK_tblImmovableAsset_tblAsstesLiabilities]
GO
ALTER TABLE [dbo].[tblImmovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblImmovableAsset_tblCountry] FOREIGN KEY([Country])
REFERENCES [dbo].[tblCountry] ([CountryID])
GO
ALTER TABLE [dbo].[tblImmovableAsset] CHECK CONSTRAINT [FK_tblImmovableAsset_tblCountry]
GO
ALTER TABLE [dbo].[tblImmovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblImmovableAsset_tblState] FOREIGN KEY([State])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblImmovableAsset] CHECK CONSTRAINT [FK_tblImmovableAsset_tblState]
GO
ALTER TABLE [dbo].[tblImmovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblImmovableAsset_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblImmovableAsset] CHECK CONSTRAINT [FK_tblImmovableAsset_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblImmovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblImmovableAsset_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblImmovableAsset] CHECK CONSTRAINT [FK_tblImmovableAsset_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblIncome_tblTaxReturn] FOREIGN KEY([TaxReturnID])
REFERENCES [dbo].[tblTaxReturn] ([TaxReturnID])
GO
ALTER TABLE [dbo].[tblIncome] CHECK CONSTRAINT [FK_tblIncome_tblTaxReturn]
GO
ALTER TABLE [dbo].[tblIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblIncome] CHECK CONSTRAINT [FK_tblIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblIncome] CHECK CONSTRAINT [FK_tblIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblInterestIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblInterestIncome] CHECK CONSTRAINT [FK_tblInterestIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblInterestIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblInterestIncome] CHECK CONSTRAINT [FK_tblInterestIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblInterestIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblInterestIncome] CHECK CONSTRAINT [FK_tblInterestIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblMainMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblMainMenu_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblMainMenu] CHECK CONSTRAINT [FK_tblMainMenu_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblMainMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblMainMenu_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblMainMenu] CHECK CONSTRAINT [FK_tblMainMenu_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblMovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblMovableAsset_tblAsstesLiabilities] FOREIGN KEY([AssetID])
REFERENCES [dbo].[tblAsstesLiabilities] ([ID])
GO
ALTER TABLE [dbo].[tblMovableAsset] CHECK CONSTRAINT [FK_tblMovableAsset_tblAsstesLiabilities]
GO
ALTER TABLE [dbo].[tblMovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblMovableAsset_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblMovableAsset] CHECK CONSTRAINT [FK_tblMovableAsset_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblMovableAsset]  WITH CHECK ADD  CONSTRAINT [FK_tblMovableAsset_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblMovableAsset] CHECK CONSTRAINT [FK_tblMovableAsset_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblOtherIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblOtherIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblOtherIncome] CHECK CONSTRAINT [FK_tblOtherIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblOtherIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblOtherIncome_tblUserRegistration] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblOtherIncome] CHECK CONSTRAINT [FK_tblOtherIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblOtherIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblOtherIncome_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblOtherIncome] CHECK CONSTRAINT [FK_tblOtherIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonalInfo_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPersonalInfo] CHECK CONSTRAINT [FK_tblPersonalInfo_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonalInfo_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPersonalInfo] CHECK CONSTRAINT [FK_tblPersonalInfo_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblPersonalInfo] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPersonalInfo] CHECK CONSTRAINT [FK_tblUser_tblPersonalInfo]
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPFWithdrawalIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome] CHECK CONSTRAINT [FK_tblPFWithdrawalIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPFWithdrawalIncome_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome] CHECK CONSTRAINT [FK_tblPFWithdrawalIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPFWithdrawalIncome_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPFWithdrawalIncome] CHECK CONSTRAINT [FK_tblPFWithdrawalIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblCountry] FOREIGN KEY([Country])
REFERENCES [dbo].[tblCountry] ([CountryID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblCountry]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblPropertyCoOwnership] FOREIGN KEY([CoOwnerShipID])
REFERENCES [dbo].[tblPropertyCoOwnership] ([ID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblPropertyCoOwnership]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblPropertyLoanDetails] FOREIGN KEY([LoanID])
REFERENCES [dbo].[tblPropertyLoanDetails] ([ID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblPropertyLoanDetails]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblState] FOREIGN KEY([State])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblState]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblUserRegistration] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblProperty_tblUserRegistration2] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblProperty] CHECK CONSTRAINT [FK_tblProperty_tblUserRegistration2]
GO
ALTER TABLE [dbo].[tblPropertyCoOwnership]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyCoOwnership_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyCoOwnership] CHECK CONSTRAINT [FK_tblPropertyCoOwnership_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblPropertyCoOwnership]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyCoOwnership_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyCoOwnership] CHECK CONSTRAINT [FK_tblPropertyCoOwnership_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblPropertyIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblPropertyIncome] CHECK CONSTRAINT [FK_tblPropertyIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblPropertyIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyIncome_tblProperty] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblProperty] ([PropertyID])
GO
ALTER TABLE [dbo].[tblPropertyIncome] CHECK CONSTRAINT [FK_tblPropertyIncome_tblProperty]
GO
ALTER TABLE [dbo].[tblPropertyIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyIncome_tblUserRegistration] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyIncome] CHECK CONSTRAINT [FK_tblPropertyIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblPropertyIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyIncome_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyIncome] CHECK CONSTRAINT [FK_tblPropertyIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblPropertyLoanDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyLoanDetails_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyLoanDetails] CHECK CONSTRAINT [FK_tblPropertyLoanDetails_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblPropertyLoanDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblPropertyLoanDetails_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblPropertyLoanDetails] CHECK CONSTRAINT [FK_tblPropertyLoanDetails_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblSalaryIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryIncome_tblIncome] FOREIGN KEY([IncomeID])
REFERENCES [dbo].[tblIncome] ([ID])
GO
ALTER TABLE [dbo].[tblSalaryIncome] CHECK CONSTRAINT [FK_tblSalaryIncome_tblIncome]
GO
ALTER TABLE [dbo].[tblSalaryIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryIncome_tblUserRegistration] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSalaryIncome] CHECK CONSTRAINT [FK_tblSalaryIncome_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblSalaryIncome]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryIncome_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSalaryIncome] CHECK CONSTRAINT [FK_tblSalaryIncome_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblSideMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSideMenu_tblSubMenu] FOREIGN KEY([SubMenuID])
REFERENCES [dbo].[tblSubMenu] ([SubMenuID])
GO
ALTER TABLE [dbo].[tblSideMenu] CHECK CONSTRAINT [FK_tblSideMenu_tblSubMenu]
GO
ALTER TABLE [dbo].[tblSideMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSideMenu_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSideMenu] CHECK CONSTRAINT [FK_tblSideMenu_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblSideMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSideMenu_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSideMenu] CHECK CONSTRAINT [FK_tblSideMenu_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD  CONSTRAINT [FK_tblState_tblCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountry] ([CountryID])
GO
ALTER TABLE [dbo].[tblState] CHECK CONSTRAINT [FK_tblState_tblCountry]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD  CONSTRAINT [FK_tblState_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblState] CHECK CONSTRAINT [FK_tblState_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD  CONSTRAINT [FK_tblState_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblState] CHECK CONSTRAINT [FK_tblState_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSubMenu_tblMainMenu] FOREIGN KEY([MainMenuID])
REFERENCES [dbo].[tblMainMenu] ([MainMenuID])
GO
ALTER TABLE [dbo].[tblSubMenu] CHECK CONSTRAINT [FK_tblSubMenu_tblMainMenu]
GO
ALTER TABLE [dbo].[tblSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSubMenu_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSubMenu] CHECK CONSTRAINT [FK_tblSubMenu_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_tblSubMenu_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblSubMenu] CHECK CONSTRAINT [FK_tblSubMenu_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblTaxesPaid]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxesPaid] CHECK CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblTaxesPaid]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxesPaid] CHECK CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblTaxesPaid]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration2] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxesPaid] CHECK CONSTRAINT [FK_tblTaxesPaid_tblUserRegistration2]
GO
ALTER TABLE [dbo].[tblTaxProfileQuestion]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxProfileQuestion_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxProfileQuestion] CHECK CONSTRAINT [FK_tblTaxProfileQuestion_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblTaxProfileQuestion]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxProfileQuestion_tblUserRegistration1] FOREIGN KEY([ModifedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxProfileQuestion] CHECK CONSTRAINT [FK_tblTaxProfileQuestion_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblTaxReturn]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxReturn_tblPlanPackages] FOREIGN KEY([PlanID])
REFERENCES [dbo].[tblPlanPackages] ([PackageID])
GO
ALTER TABLE [dbo].[tblTaxReturn] CHECK CONSTRAINT [FK_tblTaxReturn_tblPlanPackages]
GO
ALTER TABLE [dbo].[tblTaxReturn]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxReturn_tblUserRegistration] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxReturn] CHECK CONSTRAINT [FK_tblTaxReturn_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblTaxReturn]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxReturn_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxReturn] CHECK CONSTRAINT [FK_tblTaxReturn_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblTaxReturn]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxReturn_tblUserRegistration2] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxReturn] CHECK CONSTRAINT [FK_tblTaxReturn_tblUserRegistration2]
GO
ALTER TABLE [dbo].[tblTaxSummary]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxSummary_tblTaxReturn] FOREIGN KEY([TaxReturnID])
REFERENCES [dbo].[tblTaxReturn] ([TaxReturnID])
GO
ALTER TABLE [dbo].[tblTaxSummary] CHECK CONSTRAINT [FK_tblTaxSummary_tblTaxReturn]
GO
ALTER TABLE [dbo].[tblTaxSummary]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxSummary_tblUserRegistration] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxSummary] CHECK CONSTRAINT [FK_tblTaxSummary_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblTaxSummary]  WITH CHECK ADD  CONSTRAINT [FK_tblTaxSummary_tblUserRegistration1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblTaxSummary] CHECK CONSTRAINT [FK_tblTaxSummary_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblUserBasicInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblUserBasicInfo] CHECK CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration]
GO
ALTER TABLE [dbo].[tblUserBasicInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblUserBasicInfo] CHECK CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration1]
GO
ALTER TABLE [dbo].[tblUserBasicInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration2] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tblUserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[tblUserBasicInfo] CHECK CONSTRAINT [FK_tblUserTaxProfile_tblUserRegistration2]
GO
USE [master]
GO
ALTER DATABASE [TaxBreeze] SET  READ_WRITE 
GO
