create table login(
  id varchar(20) NOT NULL,
  time date,
  foreign key (id) references users(id)
)