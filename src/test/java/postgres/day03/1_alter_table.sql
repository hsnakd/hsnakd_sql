-- Tüm verileri görmek için
SELECT * FROM scrumteam;

-- Yeni bir sütun eklemek
ALTER TABLE scrumteam ADD COLUMN salary INTEGER;

-- Var olan sütunu güncelle
UPDATE scrumteam SET salary = 100000 WHERE emp_id = 1;
UPDATE scrumteam SET salary = 90000 WHERE emp_id = 2;
UPDATE scrumteam SET salary = 120000 WHERE emp_id = 4;

-- Tüm verileri görmek için
SELECT * FROM scrumteam;

-- Sütun adını değiştirme
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;

-- Tüm verileri görmek için
SELECT * FROM scrumteam;

-- Sütunu silme
-- Hata veriyor
ALTER TABLE scrumteam DROP COLUMN annual_salary;

-- Tüm verileri görmek için
SELECT * FROM scrumteam;

-- Tablo adını değiştirme
ALTER TABLE scrumteam RENAME TO agileteam;

-- Tüm verileri görmek için
SELECT * FROM agileteam;

-- Değişiklikleri kaydetme
COMMIT;

-- Tablodaki tüm verileri silmek için (Tablo yapısını korur)
TRUNCATE TABLE agileteam;

-- Tabloyu ve içindeki tüm verileri silmek için
DROP TABLE agileteam;
