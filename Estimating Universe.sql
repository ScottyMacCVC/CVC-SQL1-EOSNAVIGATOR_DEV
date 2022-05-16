# CVC-SQL1-EOSNAVIGATOR_DEV

Server\instance: CVC-SQL1\EOSNAVIGATOR_DEV
Database: Navigator
Tables: 
Staging.CVC_ContractInformationData
Staging.CVC_JobInfoData
Staging.CVC_LegalData
Staging.CVC_JobSpecData
Staging.CVC_JobCostData

Below 3 tables doesn't have any data in the DB tables.



Staging.CVC_LegalData
Staging.CVC_JobSpecData
Staging.CVC_JobCostData

[Staging].[CVC_ContractInformationData](
[PK] [int] IDENTITY(1,1) NOT NULL,
[CVC_ContractInformation_PK] [int] NOT NULL,
[Estimate_PK] [int] NOT NULL,
[CompanyID] [varchar](2) NULL,
[DivisionID] [varchar](2) NULL,
[BuilderID] [varchar](2) NULL,
[ProjectName] [varchar](100) NULL,
[CustomerID] [varchar](5) NULL,
[JobNo] [varchar](6) NULL,
[SubJobNo] [varchar](3) NULL,
[Contract] [varchar](2) NULL,
[ItemNumber] [varchar](15) NULL,
[Plan] [varchar](20) NULL,
[Address] [varchar](20) NULL,
[EffectiveDate] [varchar](8) NULL,
[ContractAmount] [decimal](12, 2) NULL,
[Quantity] [decimal](13, 2) NULL,
[Unit] [varchar](2) NULL,
[UnitPrice] [decimal](9, 2) NULL,
[JCDistributionSubJob] [varchar](6) NULL,
[JCDistribution] [varchar](15) NULL,
[JCDistributionCostType] [varchar](1) NULL,
[JCDistributionRecordType] [int] NULL,
[FixedContract] [bit] NULL,
[IncludeInMarkup] [bit] NULL,
[TaxCode1] [varchar](1) NULL,
[TaxCode2] [varchar](1) NULL,
[TaxCode3] [varchar](1) NULL,
[PublishBy] [varchar](100) NULL,
[PublishDate] [datetime] NULL,

[Staging].[CVC_JobCostData](
[PK] [int] IDENTITY(1,1) NOT NULL,
[Estimate_PK] [int] NOT NULL,
[CompanyID] [varchar](2) NULL,
[DivisionID] [varchar](2) NULL,
[JobNo] [varchar](6) NULL,
[SubJobNo] [varchar](3) NULL,
[CostCode] [varchar](15) NULL,
[CostType] [varchar](1) NULL,
[Quantity] [decimal](7, 2) NULL,
[QuantityBare] [decimal](7, 2) NULL,
[Unit] [varchar](2) NULL,
[Hours] [decimal](13, 2) NULL,
[Amount] [decimal](11, 2) NULL,
[PublishBy] [varchar](100) NULL,
[PublishDate] [datetime] NULL,

[Staging].[CVC_JobInfoData](
[PK] [int] IDENTITY(1,1) NOT NULL,
[Estimate_PK] [int] NOT NULL,
[CompanyID] [varchar](2) NULL,
[DivisionID] [varchar](2) NULL,
[JobNo] [varchar](6) NULL,
[SubJobNo] [varchar](3) NULL,
[FoundationSlabEdge] [varchar](10) NULL,
[FoundationFootingSize] [varchar](10) NULL,
[FoundationFootingRebar] [varchar](10) NULL,
[FoundationFootingDowel] [varchar](10) NULL,
[FoundationFootingWC] [varchar](10) NULL,
[FoundationFootingPSI] [varchar](10) NULL,
[FoundationSlabThickness] [varchar](10) NULL,
[FoundationSlabReinforcement] [varchar](10) NULL,
[FoundationRocksandThickness] [varchar](10) NULL,
[FoundationUpperBaseThickness] [varchar](10) NULL,
[FoundationUpperBaseType] [varchar](10) NULL,
[FoundationLowerBaseThickness] [varchar](10) NULL,
[FoundationLowerBaseType] [varchar](10) NULL,
[FoundationVapoRetarder] [varchar](10) NULL,
[FoundationWCRatio] [varchar](10) NULL,
[FoundationPSI] [varchar](10) NULL,
[FoundationContractName] [varchar](28) NULL,
[FoundationContractDate] [varchar](10) NULL,
[FoundationContractPricingPending] [varchar](10) NULL,
[FoundationContractSOWPending] [varchar](10) NULL,
[FoundationContractInsurancePending] [varchar](10) NULL,
[FoundationContractNotesPending] [varchar](10) NULL,
[FoundationProposal] [varchar](28) NULL,
[FoundationBudget] [varchar](10) NULL,
[FoundationLatestPlanLink] [varchar](50) NULL,
[FoundationTaxRate] [varchar](10) NULL,
[FoundationEquipment] [varchar](10) NULL,
[FoundationGLInsurance] [varchar](10) NULL,
[FoundationBudgetMargin] [varchar](10) NULL,
[FoundationOverallLotCount] [varchar](10) NULL,
[FoundationOutOfLevel] [varchar](10) NULL,
[FoundationDeepenedFooting] [varchar](10) NULL,
[FoundationWalls] [varchar](10) NULL,
[FoundationCurrentConcreteQuote] [varchar](10) NULL,
[FoundationConcreteQuoteDate] [varchar](10) NULL,
[FoundationConreteIncreaseDate] [varchar](10) NULL,
[FoundationMixDesignNo] [varchar](10) NULL,
[FlatworkMixDesignNo] [varchar](10) NULL,
[PublishBy] [varchar](100) NULL,
[PublishDate] [datetime] NULL,

[Staging].[CVC_JobSpecData](
[PK] [int] IDENTITY(1,1) NOT NULL,
[Estimate_PK] [int] NOT NULL,
[CompanyID] [varchar](2) NULL,
[DivisionID] [varchar](2) NULL,
[JobNo] [varchar](6) NULL,
[SubJobNo] [varchar](3) NULL,
[FoundationSlabEdge] [varchar](10) NULL,
[FoundationFootingSize] [varchar](10) NULL,
[FoundationFootingRebar] [varchar](10) NULL,
[FoundationFootingDowel] [varchar](10) NULL,
[FoundationFootingWC] [varchar](10) NULL,
[FoundationFootingPSI] [varchar](10) NULL,
[FoundationSlabThickness] [varchar](10) NULL,
[FoundationSlabReinforcement] [varchar](10) NULL,
[FoundationRocksandThickness] [varchar](10) NULL,
[FoundationUpperBaseThickness] [varchar](10) NULL,
[FoundationUpperBaseType] [varchar](50) NULL,
[FoundationLowerBaseThickness] [varchar](10) NULL,
[FoundationLowerBaseType] [varchar](50) NULL,
[FoundationVaporRetarder] [varchar](50) NULL,
[FoundationWCRatio] [varchar](10) NULL,
[FoundationPSI] [varchar](10) NULL,
[FoundationContractName] [varchar](28) NULL,
[FoundationContractDate] [datetime] NULL,
[FoundationContractPricingPending] [bit] NULL,
[FoundationContractSOWPending] [bit] NULL,
[FoundationContractInsurancePending] [bit] NULL,
[FoundationContractNotesPending] [bit] NULL,
[FoundationProposal] [decimal](28, 4) NULL,
[FoundationBudget] [decimal](28, 4) NULL,
[FoundationLatestPlanLink] [varchar](100) NULL,
[FoundationTaxRate] [decimal](28, 4) NULL,
[FoundationEquipment] [decimal](28, 4) NULL,
[FoundationGLInsurance] [decimal](28, 4) NULL,
[FoundationBudgetMargin] [decimal](28, 4) NULL,
[FoundationOverallLotCount] [int] NULL,
[FoundationOutOfLevel] [bit] NULL,
[FoundationDeepenedFooting] [bit] NULL,
[FoundationWalls] [bit] NULL,
[FoundationCurrentConcreteQuote] [decimal](28, 4) NULL,
[FoundationConcreteQuoteDate] [datetime] NULL,
[FoundationConreteIncreaseDate] [datetime] NULL,
[FoundationMixDesignNo] [varchar](50) NULL,
[FlatworkMixDesignNo] [varchar](50) NULL,
[PublishBy] [varchar](100) NULL,
[PublishDate] [datetime] NULL,

[Staging].[CVC_LegalData](
[PK] [int] IDENTITY(1,1) NOT NULL,
[Estimate_PK] [int] NOT NULL,
[CompanyID] [varchar](2) NULL,
[DivisionID] [varchar](2) NULL,
[JobNo] [varchar](6) NULL,
[ContractRevision] [varchar](6) NULL,
[Owner] [varchar](100) NULL,
[Contractor] [varchar](100) NULL,
[Subcontractor] [varchar](20) NULL,
[ContractDate] [datetime] NULL,
[Version] [varchar](20) NULL,
[Lender] [varchar](100) NULL,
[ContractType] [varchar](20) NULL,
[LiquidatedDamages] [decimal](28, 4) NULL,
[TerminationTerms] [varchar](20) NULL,
[TerminationPay] [varchar](100) NULL,
[WarrantyPeriod] [int] NULL,
[NoticeDays] [int] NULL,
[PermittedDelays] [varchar](20) NULL,
[StartDate] [datetime] NULL,
[BondAmount] [decimal](28, 4) NULL,
[BondRequired] [varchar](20) NULL,
[DateReceived] [datetime] NULL,
[BondAgentNotified] [varchar](100) NULL,
[LegalReviewDate] [datetime] NULL,
[ScopeReviewDate] [datetime] NULL,
[CommentsSentDate] [datetime] NULL,
[CommentsResponseDate] [datetime] NULL,
[ContractExecutedDate] [datetime] NULL,
[ContractStatus] [varchar](20) NULL,
[InsuranceStatus] [bit] NULL,
[OpsContactPerson] [varchar](100) NULL,
[APContactPerson] [varchar](100) NULL,
[ContactNumber] [varchar](100) NULL,
[ContactAddress] [varchar](100) NULL,
[CGLPolicy] [varchar](20) NULL,
[WCPolicy] [varchar](20) NULL,
[AutoPolicy] [varchar](20) NULL,
[ExcessPolicy] [varchar](20) NULL,
[GLOccupancyLimit] [decimal](28, 4) NULL,
[GLAggregateLimit] [decimal](28, 4) NULL,
[GLCompOpLimit] [decimal](28, 4) NULL,
[GLPollution] [bit] NULL,
[CompletedOpsReq] [bit] NULL,
[GLPersInjuryLimit] [decimal](28, 4) NULL,
[GLOccurance/Claim] [varchar](20) NULL,
[GLLimit] [decimal](28, 4) NULL,
[WCBodilyInjuryLimit] [decimal](28, 4) NULL,
[WCDiseaseLimit] [decimal](28, 4) NULL,
[WCAggregateLimit] [decimal](28, 4) NULL,
[WCWaiverofSubrogration] [bit] NULL,
[ALOccuranceLimit] [decimal](28, 4) NULL,
[ALAggregateLimit] [decimal](28, 4) NULL,
[AdditionalInsured] [varchar](100) NULL,
[CertificateHolders] [varchar](100) NULL,
[UmbrellaPolicy] [bit] NULL,
[ExcessPolicyLimit] [decimal](28, 4) NULL,
[ExcellLineBacking] [varchar](20) NULL,
[OCIP] [bit] NULL,
[OCIPCoverage] [varchar](20) NULL,
[OCIPSubDeductible] [decimal](28, 4) NULL,
[OCIPOwnerDeductible] [decimal](28, 4) NULL,
[OCIPDeductibleType] [varchar](20) NULL,
[OCIPTPA] [decimal](28, 4) NULL,
[OCIPBidCredit] [decimal](28, 4) NULL,
[OCIPOccurrenceLimit] [decimal](28, 4) NULL,
[OCIPAggregateLimit] [decimal](28, 4) NULL,
[OCIPExcessLimit] [decimal](28, 4) NULL,
[GLSubAccount] [varchar](20) NULL,
[State] [varchar](20) NULL,
[PrevalingWage] [bit] NULL,
[WageDeterminationReceived] [varchar](20) NULL,
[CertifiedPayroll] [bit] NULL,
[ScheduleofValues] [bit] NULL,
[BillDate] [datetime] NULL,
[PayDate] [datetime] NULL,
[Retention] [decimal](28, 4) NULL,
[BillingInstructions] [bit] NULL,
[AddBillingInstructions] [bit] NULL,
[PublishBy] [varchar](100) NULL,
[PublishDate] [datetime] NULL,


-- Added Tables Below, Keith & Scott Add

-- Built for CVC START

[Staging].[CVC_START](
[PK] [int] IDENTITY(1,1) NOT NULL,
[Builder] [varchar](20) NOT NULL,
[Project] [varchar](20) NOT NULL,
[JobCo] [varchar](6) NULL,
[Lots] [varchar](8) NULL,
[Slab_Type] [varchar](20) NULL,
[Company_No] [varchar](10) NULL,
[SubJobCo] [varchar](3) NULL,
--[Lookup] [int] NOT NULL, GREG PLEASE FIX THIS ONE
[Lot_No] [varchar](10) NULL,
[Address] [varchar](10) NULL,
[Garage Orientation] [varchar](10) NULL,
[Plan_Name] [varchar](20) NULL,
[Plan_ElvOpt] [varchar](20) NULL,
[Contract_Price] [decimal](12, 0) NULL,
[Name_Add_For_1] [varchar](20) NULL,
[Add_For_1] [decimal](12, 0) NULL,
[Name_Add_For_2] [varchar](20) NULL,
[Add_For_2] [decimal](12, 0) NULL,
[Name_Add_For_3] [varchar](20) NULL,
[Add_For_3] [decimal](12, 0) NULL,
[Name_Add_For_4] [varchar](20) NULL,
[Add_For_4] [decimal](12, 0) NULL,
[Adjusted Total] [decimal](12, 0) NULL,



-- Staging Table for Contract Input History Mockup

[Staging].[CVC_Contracts](
[PK] [int] IDENTITY(1,1) NOT NULL,
[CVC_Contracts_PK] [int] NOT NULL,
[Contract_No] [varchar](3) NOT NULL,
[JobNo] [varchar](6) NULL,
[Contract_Description] [varchar](20) NULL,
[Contract_Date] [varchar](10) NULL,
[Builder_Eff_Release] [varchar](3) NULL,
[Eff Date] [varchar](10) NULL,
[Estimate_PK] [int] NOT NULL,
--[Lookup] [int] NOT NULL, GREG PLEASE FIX THIS ONE
[Plan_Name] [varchar](20) NULL,
[ELV_OPT] [varchar](20) NULL,
[Identifying_Notes] [varchar](20) NULL,
[Footprint_SF] [decimal](12, 0) NULL,
[Labor_MH] [decimal](12, 0) NULL,
[Concrete_CY] [decimal](12, 0) NULL,
[Rock_TN] [decimal](12, 0) NULL,
[Steel_LBS] [decimal](12, 0) NULL,
[PT_Cable_LF] [decimal](12, 0) NULL,
[Pumping_CY] [decimal](12, 0) NULL,
[Lumber_BF] [decimal](12, 0) NULL,
[Sage_Estimate_Amount] [decimal](12, 2) NULL,
[RFA_Amount] [decimal](12, 2) NULL,
[Proposal_Amount] [decimal](12, 2) NULL,
[Draw_1] [decimal](12, 2) NULL,
[Draw_2] [decimal](12, 2) NULL,
[Draw_3] [decimal](12, 2) NULL,
[Draw_4] [decimal](12, 2) NULL,
[OCIP_Amount] [varchar](20) NULL,
[Contract_Amount] [decimal](12, 2) NULL,
[Contract_vs_Proposal_Delta] [decimal](12, 2) NULL,
[Delta_Variance_Percent] [varchar](8) NULL,
[Created_by] [varchar](15) NULL,
[Created date] [datetime] NULL,
[Estimate_Name] [varchar](30) NULL,
[Proposal_Name] [varchar](30) NULL,
[Contract_File_Name] [varchar](30) NULL,
[Notes] [varchar](30) NULL,



-- Created for the Request for Addendum (RFA)
[Staging].[CVC_RFA](
[PK] [int] IDENTITY(1,1) NOT NULL,
--[Lookup] [int] NOT NULL, GREG PLEASE FIX THIS ONE

-- Base Info for Job Foundations (FND)
[Builder] [varchar](20) NOT NULL,
[Project] [varchar](20) NOT NULL,
[JobCo] [varchar](6) NULL,
[Contact] [varchar](20) NULL,
[Lots] [varchar](8) NULL,
[Proposal_REV] [varchar](8) NULL,

-- Info for Foundation Plans (FND)
[FND_Plan_Name] [varchar](20) NULL,
[FND_Plan_ElvOpt] [varchar](20) NULL,

-- Increase Quantities & Units for Foundations (FND)
[FND_Increase_Dollar_per_hour] [decimal](6, 2) NULL,
[FND_Hours_per_plan] [decimal](8, 0) NULL,
[FND_Increase_Dollar_per_CY] [decimal](6, 2) NULL,
[FND_CY_per_plan] [decimal](8, 0) NULL,
[FND_Increase_Dollar_per_RockTN] [decimal](6, 2) NULL,
[FND_RockTN_per_plan] [decimal](8, 0) NULL,
[FND_Increase_Dollar_per_SteelTN] [decimal](6, 2) NULL,
[FND_SteelTN_per_plan] [decimal](8, 0) NULL,
[FND_Increase_Dollar_per_PT_Cable_LF] [decimal](6, 2) NULL,
[FND_PT_Cable_LF_per_plan] [decimal](8, 0) NULL,
[FND_Increase_Dollar_per_Pump_CY] [decimal](6, 2) NULL,
-- [Pump_CY_per_plan] [decimal](8, 0) NULL, USES [CY_per_plan]

-- Contract Info for RFA Foundations (FND)
[FND_Contract_Price] [decimal](12, 0) NULL,
[FND_Requested_Increase] [decimal](12, 0) NULL,
[FND_Total] [decimal](12, 0) NULL,


-- Info for Flatwork Plans (FLT)
[FLT_Plan_Name] [varchar](20) NULL,
[FLT_Plan_ElvOpt] [varchar](20) NULL,

-- Increase Quantities & Units for Flatwork (FLT)
[Increase_Dollar_per_SF_DW] [decimal](6, 2) NULL,
[FLT_Item_DW] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Front_Walk] [decimal](6, 2) NULL,
[FLT_Item_Front_walk] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Porch] [decimal](6, 2) NULL,
[FLT_Item_Porch] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Stoop] [decimal](6, 2) NULL,
[FLT_Item_Stoop] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Patio] [decimal](6, 2) NULL,
[FLT_Item_Patio] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Service_Walk] [decimal](6, 2) NULL,
[FLT_Item_Service_Walk] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Approach] [decimal](6, 2) NULL,
[FLT_Item_Approach] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_City_Walk] [decimal](6, 2) NULL,
[FLT_Item_City_Walk] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_Steps] [decimal](6, 2) NULL,
[FLT_Item_Steps] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_FW_VarItem1] [decimal](6, 2) NULL,
[FLT_Item_FW_VarItem1] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_FW_VarItem2] [decimal](6, 2) NULL,
[FLT_Item_FW_VarItem2] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_FW_VarItem3] [decimal](6, 2) NULL,
[FLT_Item_FW_VarItem3] [decimal](8, 0) NULL,
[FLT_Increase_Dollar_per_FW_VarItem4] [decimal](6, 2) NULL,
[FLT_Item_FW_VarItem4] [decimal](8, 0) NULL,


-- Contract Info for RFA Flatwork/Pavers (FLT)
[FLT_Contract_Price] [decimal](12, 0) NULL,
[FLT_Requested_Increase] [decimal](12, 0) NULL,
[FLT_Total] [decimal](12, 0) NULL,



-- Created for the Pull List Process (PLP) - Items would connect to the Product Universe (warehouse)
[Staging].[CVC_PLP](
[PK] [int] IDENTITY(1,1) NOT NULL,
--[Lookup] [int] NOT NULL, GREG PLEASE FIX THIS ONE


-- Base Info for Job (FND)
[Builder] [varchar](20) NOT NULL,
[Project] [varchar](20) NOT NULL,
[JobCo] [varchar](6) NULL,
[SubJobNo] [varchar](3) NULL,
-- [Lot_No_List] [varchar](40) NULL, CAN WE AGGREGATE THE Lot_no INSTEAD OF MAKING A NEW LIST?
[PublishDate] [datetime] NULL,
[Supervisor] [varchar](20) NULL,
[PO_No] [varchar](20) NULL,
[Warehouse_No] [varchar](2) NULL,
[Staging_Location] [varchar](6) NULL,
[DivisionID] [varchar](2) NULL,
[Company_Name] [varchar](20) NULL,


-- Info for the Order
[Part_Description] [varchar](28) NULL,
[Part_No] [varchar](20) NULL,
[Cost_Distrubtion_PartNo] [varchar](20) NULL,
[Built_Order_1] [varchar](10) NULL,
[Built_Order_2] [varchar](10) NULL,
[Built_Order_3] [varchar](10) NULL,
[Built_Order_4] [varchar](10) NULL,
[Built_Order_5] [varchar](10) NULL,
[Cost_Type] [varchar](1) NULL,
[UofM_PartNo][varchar]
--[Order_1] [varchar](10) NULL, THESE ARE THE BUCKETS WE WANT TO IMPORT INTO eCMS FOR WAREHOUSE ORDERING (Order Processing Entry)
--[Order_2] [varchar](10) NULL,
--[Order_3] [varchar](10) NULL,
--[Order_4] [varchar](10) NULL,
--[Order_5] [varchar](10) NULL,