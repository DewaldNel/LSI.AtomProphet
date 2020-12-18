CREATE PROCEDURE [dbo].[HistoryInsert]
(
	@PurchaseOrderID INT = NULL,
	@ASNID INT = NULL,
	@PODID INT = NULL,
	@EventType VARCHAR(30),
	@EventDescription VARCHAR(50) = NULL,
	@EventDate SMALLDATETIME
)
AS
BEGIN
	INSERT INTO [dbo].[History]
	(
		[PurchaseOrderID],
		[ASNID],
		[PODID],
		[EventType],
		[EventDescription],
		[EventDate]
	)
	VALUES
	(
		@PurchaseOrderID,
		@ASNID,
		@PODID,
		@EventType,
		@EventDescription,
		@EventDate
	)
END