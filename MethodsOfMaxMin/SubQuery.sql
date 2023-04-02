---Important
USE AdventureWorks2019
GO

-----Max

SELECT t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  WHERE StartDate=(SELECT MAX(StartDate) FROM Production.ProductCostHistory
                    WHERE ProductID=t.ProductID
					)

-----Min

SELECT t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  WHERE StartDate=(SELECT MIN(StartDate) FROM Production.ProductCostHistory
                    WHERE ProductID=t.ProductID
					)