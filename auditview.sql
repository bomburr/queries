i
USE EnterpriseVaultAudit
DECLARE@StartDateTime datetime
DECLARE @EndDateTime datetime
SET @StartDateTime = '2019-10-05 08:27:48'
SET @EndDateTime = '2020-10-05 08:28:37'

SELECT AuditID, Status, AuditDate,UserName,CategoryName,SubCategoryName,ArchiveName,info,MachineName
FROM [EnterpriseVaultAudit].[dbo].[EVAuditView]
inner join EnterpriseVaultDirectory.dbo.ArchiveView on VaultEntryId = Vault
WHERE AuditDate BETWEEN @StartDateTime and @EndDateTime
AND CategoryName in ('Search', 'Delete')
ORDER BY AuditID

