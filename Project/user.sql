create table users(
id varchar(20) NOT NULL,
  name nvarchar(60) ,
  family varchar(30) ,
  password varchar(128) ,
  biography varchar(64) ,
  log_date DATE ,
  birth_date DATE ,

  primary key (id)
)