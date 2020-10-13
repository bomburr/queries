USE VaultStoreDatabase
SELECT     ArchiveName, ArchivedItems, ArchivedItemsSize, ModifiedDate
FROM     dbo.ArchivePoint 
INNER JOIN EnterpriseVaultDirectory.dbo.ArchiveView AV ON AV.VaultEntryId = ArchivePointId