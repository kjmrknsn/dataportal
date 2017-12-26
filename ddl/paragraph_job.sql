create table paragraph_job (
  id bigint unsigned not null auto_increment
, paragraph_id bigint unsigned not null
, submitted_at timestamp not null
, started_at timestamp null
, ended_at timestamp null
, status enum('queueing', 'running', 'succeeded', 'failed') not null
, created_at timestamp not null default current_timestamp
, updated_at timestamp not null default current_timestamp on update current_timestamp
, primary key (id)
);

alter table paragraph_job add index paragraph_job_0001 (
  status
, submitted_at
);

alter table paragraph_job add index paragraph_job_0002 (
  paragraph_id
, status
);
