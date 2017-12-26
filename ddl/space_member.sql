create table space_member (
  id bigint unsigned not null auto_increment
, space_id bigint unsigned not null
, uid varchar(64) not null
, is_writer bool not null default false
, primary key (id)
);

alter table space_member add index space_member_0001 (
  space_id
);

alter table space_member add index space_member_0002 (
  uid
);
