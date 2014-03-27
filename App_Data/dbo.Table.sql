CREATE TABLE [dbo].[reccTable]
(
	[rId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [recipeName] NVARCHAR(50) NOT NULL, 
    [submittedBy] NVARCHAR(50) NOT NULL, 
    [Ingrediant1] NVARCHAR(50) NOT NULL, 
    [Ingrediant2] NVARCHAR(50) NULL, 
    [Ingrediant3] NVARCHAR(50) NULL, 
    [Ingrediant4] NVARCHAR(50) NULL, 
    [Ingrediant5] NVARCHAR(50) NULL, 
    [Preparation] NVARCHAR(50) NOT NULL, 
    [Notes] NVARCHAR(50) NULL
)
