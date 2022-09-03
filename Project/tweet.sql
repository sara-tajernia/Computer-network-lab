create table tweet(
  id INT AUTO_INCREMENT NOT NULL,
  user1 varchar(20) NOT NULL,
  data varchar(256) NOT NULL,
  date DATE NOT NULL,
  primary key (ID),
  foreign key (user1) references users(id)
)