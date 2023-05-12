# transaksi insert/update/delete record 
insert into offices
values
 ("13", "Banjarmasin", "+62842455327", "Kalimantan 1", "Blok N", "Kalimantan", "Indonesia", "64012", "ID");

# baca tabel 
select * from offices order by cast(officeCode as unsigned);

# proses rollback
rollback;

# setelah rollback
select * from offices order by cast(officeCode as unsigned);