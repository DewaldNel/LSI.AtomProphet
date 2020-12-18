CREATE PROCEDURE [dbo].[ASNInsert]
(
	@Context XML,
	@Revision SMALLINT,
	@Status VARCHAR(20),
	@FileName VARCHAR(100),
	@BuyerOrderReference VARCHAR(50),
	@SellerOrderReference VARCHAR(50),
	@SupplierName VARCHAR(100)
)
AS
BEGIN
	INSERT INTO [dbo].[ASN]
	(
		[Context],
		[Revision],
		[Status],
		[FileName],
		[BuyerOrderReference],
		[SellerOrderReference],
		[ASNSent],
		[ASNSentDate],
		[IsActive],
		[SupplierName]
	)
	VALUES
	(
		@Context,
		@Revision,
		@Status,
		@FileName,
		@BuyerOrderReference,
		@SellerOrderReference,
		0,
		NULL,
		1,
		@SupplierName
	)
END