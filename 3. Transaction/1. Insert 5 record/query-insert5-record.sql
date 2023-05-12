# autocommit
set autocommit=0;

# sebelum transaksi
select * from offices;

# mulai transaksi
start transaction;


# transaksi 
# masukan 5 record dan commited
insert into offices
(officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
values
 -> ("8", "Soerabaya", "+62854673222", "Jl.Bahagia", "Kav. Boongan", "Jawa Timur", "Indonesia", "40322", "ID"),
    -> ("9", "Bandoeng", "+623563244257", "Jl.Banceuy", "Gang Amir", "Jawa Barat", "Indonesia", "40311", "ID"),
    -> ("10", "Batavia", "+623567324543", "Jl.Bondol", "Gg Abang", "DKI JAKARTA", "Indonesia", "402221", "ID"),
    -> ("11", "Djogjakarta", "+62346433566", "Jl.Gudeg", "Gg Pathok", "JOGJAKARTA", "Indonesia", "40821", "ID"),
    -> ("12", "Malang", "+62358743478", "Jl.Asin", "Kav. Lumpia", "Jawa Timur", "Indonesia", "40531", "ID");
commit;

# setelah masukan 5 record dan commited
select * from offices order by cast(officeCode as unsigned);