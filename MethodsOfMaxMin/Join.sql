---Important

-----Max

USE AdventureWorks2019
GO
SELECT t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  INNER JOIN
    (
	 SELECT
	    tMax.ProductID AS IDMax
	   ,MAX(tMax.StartDate) AS MaxDate
	 FROM Production.ProductCostHistory tMax
	 GROUP BY tMax.ProductID
	) mx ON mx.IDMax=t.ProductID AND mx.MaxDate=t.StartDate 


-----Min

USE AdventureWorks2019
GO
SELECT t.ProductID
      ,t.StartDate
      ,t.EndDate
      ,t.StandardCost
      ,t.ModifiedDate
  FROM Production.ProductCostHistory t
  INNER JOIN
    (
	 SELECT
	    tMin.ProductID AS IDMin
	   ,MIN(tMin.StartDate) AS MinDate
	 FROM Production.ProductCostHistory tMin
	 GROUP BY tMin.ProductID
	) mx ON mx.IDMin=t.ProductID AND mx.MinDate=t.StartDate 