---Important
USE AdventureWorks2019
GO

-----Max

SELECT TOP 1 WITH TIES
       t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  ORDER BY ROW_NUMBER() OVER(PARTITION BY t.ProductID ORDER BY t.StartDate DESC)

-----Min

SELECT TOP 1 WITH TIES
       t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  ORDER BY ROW_NUMBER() OVER(PARTITION BY t.ProductID ORDER BY t.StartDate ASC)
  
  