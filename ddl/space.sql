create table space (
  id bigint unsigned not null auto_increment
, name varchar(64) not null
, spark_submit_proxy_user varchar(64) not null
, created_at timestamp not null default current_timestamp
, updated_at timestamp not null default current_timestamp on update current_timestamp
, primary key (id)
)
