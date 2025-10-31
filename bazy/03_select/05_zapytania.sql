-- 1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)

SELECT customerName, Country, City
from Customers
WHERE Country = 'Germany';


-- 2. Ogranicz do tych z Berlina.

SELECT customerName, Country, City
from Customers
WHERE Country = 'Germany' and City = 'berlin';

-- 3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.

SELECT customerName, Country, City
from Customers
WHERE Country = 'Germany' and not City = 'berlin';

-- 4. Nazwy firm (kraj, miasto) z miasta na literę A.

SELECT customerName, Country, City
FROM Customers
WHERE city like 'A%';

-- 5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.

SELECT customerName, Country, City
FROM Customers
WHERE city like '_A%';

-- 6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.

SELECT customerName, Country, City
FROM Customers
WHERE Country IN('germany', 'canada', 'usa');

-- 7. Z kraju o nazwie co najmniej czteroliterowej

SELECT customerName, Country, City
FROM Customers
WHERE Country like '____%';

-- 8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 

SELECT * 
FROM ORDERs
WHERE orderdate like '%-07-%';

-- 9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996

SELECT * 
FROM ORDERs
WHERE orderdate BETWEEN '1996-07-1' and '1996-07-10';

-- 10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 

SELECT *
FROM products
ORDER BY price asc;

-- 11. Wyświetl pięć najdroższych produktów

SELECT *
FROM products
ORDER BY price desc
limit 5;

-- 12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100

SELECT productname, price
from products
where price BETWEEN 10 and 100;

-- 13. Jak wyżej, ale tylko towary dostawców o kodzie 2.

SELECT productname, price
from products
where price BETWEEN 10 and 100
    and supplierid = 2;

-- 14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3

SELECT productname, price
from products
where price BETWEEN 10 and 100
    and supplierid IN(2,8,7,4,3);

-- 15. Wyświetl 10 najtańszych produktów posortowanych według nazwy

SELECT *
from products
ORDER BY price, productname
limit 10;

-- 16. Wyświetl produkty z kategorii 1,3,5,7, których cena jest mniejsza niż 10 lub większa od 50

SELECT *
from products
WHERE (price <10 or price >50)
    and categoryid in(1,3,5,7);


-- 17. Wyświetl nazwę produktu oraz cenę netto dla produktów z kategorii 5 lub 7

SELECT productname, price*0.77
from products
WHERE categoryid in(5,7);

-- 18. Wyświetl id klienta, numer zamówienia oraz miesiąc zamówienia dla zamówień z ostatniego kwartału. W zestawieniu powinny pojawić się dane z dowolnego roku.