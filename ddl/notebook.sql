create table notebook (
  id bigint unsigned not null auto_increment
, directory_id bigint unsigned not null
, creator_uid varchar(64) not null
, created_at timestamp not null default current_timestamp
, updated_at timestamp not null default current_timestamp on update current_timestamp
, primary key (id)
);

alter table notebook add index notebook_0001 (
  directory_id
);
