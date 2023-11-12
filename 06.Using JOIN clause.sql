SELECT
    C.CustomerID,
    C.CustomerName,
    O.OrderID,
    O.GrandTotal,
    -- FDI.ItemID,
    FDI.ItemName,
    T.TypeName,
    Cu.CuisineName
FROM
    Customer AS C
JOIN
    Orders AS O ON C.CustomerID = O.CustomerID
JOIN
    OrderProduct AS OP ON O.OrderID = OP.OrderID
JOIN
    FoodAndDrinkItems AS FDI ON OP.ItemID = FDI.ItemID
JOIN
    Type AS T ON FDI.TypeID = T.TypeID
JOIN
    Cuisine AS Cu ON FDI.CuisineID = Cu.CuisineID
WHERE
    O.GrandTotal > 150
ORDER BY
    O.GrandTotal ASC;
