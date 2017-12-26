create table notebook_job (
  id bigint unsigned not null auto_increment
, notebook_history_id bigint unsigned not null
, submitter_uid varchar(64) null
, is_submitted_by_job_scheduler bool not null
, submitted_at timestamp not null
, started_at timestamp null
, ended_at timestamp null
, status enum('queueing', 'running', 'succeeded', 'failed') not null
, created_at timestamp not null default current_timestamp
, updated_at timestamp not null default current_timestamp on update current_timestamp
, primary key (id)
);

alter table notebook_job add index notebook_job_0001 (
  status
, submitted_at
);

alter table notebook_job add index notebook_job_0002 (
  notebook_history_id
, status
);
