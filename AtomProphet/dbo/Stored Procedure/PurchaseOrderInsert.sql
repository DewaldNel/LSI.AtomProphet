CREATE PROCEDURE [dbo].[PurchaseOrderInsert]
(
	@Context XML,
	@Revision SMALLINT,
	@Status VARCHAR(20),
	@FileName VARCHAR(100),
	@OrderReference VARCHAR(50),
	@SellerOrderReference VARCHAR(50),
	@SupplierName VARCHAR(100)
)
AS
BEGIN
	INSERT INTO [dbo].[PurchaseOrder]
	(
		[Context],
		[Revision],
		[Status],
		[FileName],
		[OrderReference],
		[SellerOrderReference],
		[PurchaseOrderSent],
		[PurchaseOrderSentDate],
		[IsActive],
		[SupplierName]
	)
	VALUES
	(
		@Context,
		@Revision,
		@Status,
		@FileName,
		@OrderReference,
		@SellerOrderReference,
		0,
		NULL,
		1,
		@SupplierName
	)
END