1. SELECT nama, kelas, MIN(nilai) FROM siswa;
2. SELECT tempatlahir,  MIN(nilai) FROM siswa GROUP BY tempatlahir;
3. SELECT tempatlahir, MAX(nilai) FROM siswa GROUP BY tempatlahir;
4. SELECT tempatlahir,  MIN(nilai), MAX(nilai) FROM siswa GROUP BY tempatlahir;

5. SELECT tempatlahir,  MIN(nilai) AS nilai_terendah,
	MAX(nilai) AS nilai_tertinggi FROM siswa GROUP BY tempatlahir;

6. SELECT tempatlahir, COUNT(tempatlahir) AS jumlah_orang_lahir
	FROM siswa GROUP BY tempatlahir;
7. SELECT jk, AVG(nilai) AS nilai_rata2
	FROM siswa GROUP BY jk;
8. SELECT jk, SUM(nilai) AS jumlah_nilai
	FROM siswa GROUP BY jk;

/* INNER JOIN */ 
9. SELECT siswa.*, pinjambuku.*
	FROM siswa
	JOIN pinjambuku ON siswa.nis = pinjambuku.nis;

/* RIGHT JOIN */
10. SELECT siswa.*, pinjambuku.*
	FROM siswa
	RIGHT JOIN pinjambuku ON siswa.nis = pinjambuku.nis;

/* Left Join */
11. SELECT siswa.*, pinjambuku.*
	FROM siswa
	LEFT JOIN pinjambuku ON siswa.nis = pinjambuku.nis;

/* Menampilkan Buku yang tidak dipinjam */
12. SELECT siswa.*, pinjambuku.*
	FROM siswa
	RIGHT JOIN pinjambuku ON siswa.nis = pinjambuku.nis
    WHERE siswa.nis IS NULL;

/* menampilkan Siswa yang tidak pinjam buku */
13. SELECT siswa.*, pinjambuku.*
	FROM siswa
	LEFT JOIN pinjambuku ON siswa.nis = pinjambuku.nis
    WHERE pinjambuku.nis IS NULL;