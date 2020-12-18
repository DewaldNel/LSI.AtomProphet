CREATE TABLE [dbo].[PurchaseOrder]
(
	[PurchaseOrderID] INT IDENTITY NOT NULL CONSTRAINT [PK_PurchaseOrder_PurchaseOrderID] PRIMARY KEY,
	[Context] XML NOT NULL,
	[Revision] SMALLINT NOT NULL,
	[Status] VARCHAR(20) NOT NULL,
	[FileName] VARCHAR(100) NOT NULL,
	[OrderReference] VARCHAR(50) NOT NULL,
	[SellerOrderReference] VARCHAR(50) NOT NULL,
	[PurchaseOrderSent] BIT NOT NULL,
	[PurchaseOrderSentDate] SMALLDATETIME NULL,
	[IsActive] BIT NOT NULL,
	[SupplierName] VARCHAR(100) NOT NULL
)
