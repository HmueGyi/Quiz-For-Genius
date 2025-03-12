CREATE TABLE [dbo].[questions]
(
	[QId] INT NOT NULL PRIMARY KEY, 
    [Qname] NCHAR(100) NOT NULL, 
    [Category] NCHAR(10) NOT NULL, 
    [Level] NCHAR(10) NOT NULL
)
