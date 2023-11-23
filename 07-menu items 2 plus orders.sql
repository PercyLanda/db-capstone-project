-- menu items for which more than 2 orders have been placed
SELECT ItemName AS 'Menu Item Name'
FROM FoodAndDrinkItems
WHERE ItemID = ANY (
    SELECT ItemID
    FROM OrderProduct
    GROUP BY ItemID
    HAVING COUNT(OrderID) > 2
);
