desc barang;

alter table barang
modify kode_barang int not null,
modify id_pembeli int not null;

alter table barang
add column waktu_beli timestamp not null default current_timestamp;

alter table barang
modify harga_barang int not null default 0;

insert into barang (kode_barang, nama_barang, id_pembeli, nama_pembeli) values (101, 'Durian', 1, 'Raung');

select * from barang;

truncate barang;