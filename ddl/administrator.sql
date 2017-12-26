create table administrator (
  id bigint unsigned not null auto_increment
, uid varchar(64) not null
, primary key (id)
);

alter table administrator add index administrator_0001 (
  uid
);
