DROP TABLE IF EXISTS employee; -- Bu komut, "employee" adlı tabloyu siler Eğer tablo mevcut değilse, hata vermez ve işlemi atlar

-- Yeni bir tablo oluşturuyoruz
CREATE TABLE employee (
    eSSN VARCHAR(15) PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    salary INT,
    deptNo INT
);

-- Tabloya veri ekliyoruz
INSERT INTO employee (eSSN, fName, lName, salary, deptNo) VALUES
('2311502225', 'Berat', 'Yurtoğlu', 19000, 71),
('5222051132', 'Rıdvan', 'Yurtoğlu', 80000, 71),
('3838383838', 'Buğra', 'Turgut', 6000, 38),
('1486314863', 'Fahri', 'Adıgüzel', 2000, 25),
('4561237897', 'Fahri', 'Adıkötü', 2000, 10),
('7895123325', 'Bora', 'Çamur', 24000, 77),
('7495123852', 'Bilal', 'Hanzi', 61000, 61),
('1593574564', 'Beratto', 'Piyatro', 97800, 44);

-- employee tablosundaki tüm kayıtları listele
SELECT * FROM employee;

-- çalışanların ssn ve yıllık maaş bilgilerini listeleyin
SELECT eSSN, salary FROM employee;

-- 38 veya 71 numaralı departman çalışanlarının tüm bilgilerini listeleyin
SELECT * FROM employee WHERE deptNo = 38 OR deptNo = 71;

-- Adı ‘Fahri Adıgüzel’ olan çalışanın ssn ve yıllık maaş bilgisini listeleyin
SELECT eSSN, salary FROM employee WHERE fName = 'Fahri' AND lName = 'Adıgüzel';

-- Çalışanların ssn, adı, soyadı ve aylık maaş bilgilerini listele
SELECT eSSN, fName, lName, ROUND(salary / 12) AS MONTHLY_SALARY FROM employee;

-- Maaş bilgilerini tekrarsız bir şekilde listele
SELECT DISTINCT salary FROM employee;

-- Adı B ile başlayan ve 5 harfli olan çalışan isimlerini listeleyin
SELECT fName, lName FROM employee WHERE fName LIKE 'B%' AND fName LIKE 'B____';

-- İsmi B harfi ile başlayıp L harfi ile bitenleri listele
SELECT fName, lName FROM employee WHERE fName LIKE 'B%l';

-- İsmi B harfi ile başlayıp en az 5 harfli olanları listele
SELECT fName, lName FROM employee WHERE fName LIKE 'B____%';

-- ssni ‘4561237897’ olan çalışanı sil
DELETE FROM employee WHERE eSSN = '4561237897';
SELECT * FROM employee;