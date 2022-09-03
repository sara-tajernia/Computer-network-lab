create table follower(
  follow varchar(20),
  followed varchar(20),
  primary key (follow, followed),
  foreign key  (follow) references users(id),
  foreign key  (followed) references users(id)
)