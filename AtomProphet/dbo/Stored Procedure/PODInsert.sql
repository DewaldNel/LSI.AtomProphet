CREATE PROCEDURE [dbo].[PODInsert]
(
	@Context XML,
	@Revision SMALLINT,
	@Status VARCHAR(20),
	@FileName VARCHAR(100),
	@OrderReference VARCHAR(50),
	@SupplierName VARCHAR(100)
)
AS
BEGIN
	INSERT INTO [dbo].[POD]
	(
		[Context],
		[Revision],
		[Status],
		[FileName],
		[OrderReference],
		[PODSent],
		[PODSentDate],
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
		0,
		NULL,
		1,
		@SupplierName
	)
END