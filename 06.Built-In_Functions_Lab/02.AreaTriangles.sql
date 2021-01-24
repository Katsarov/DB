/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[A]
      ,[H]
	  , A * H / 2.0 AS AreaTriangles
  FROM [Demo].[dbo].[Triangles2]