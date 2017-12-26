create table directory (
  id bigint unsigned not null auto_increment
, space_id bigint unsigned not null
, name varchar(64) not null
, creator_uid varchar(64) not null
, updater_uid varchar(64) not null
, created_at timestamp not null default current_timestamp
, updated_at timestamp not null default current_timestamp on update current_timestamp
, primary key (id)
);

alter table directory add index directory_0001 (
  space_id
);
