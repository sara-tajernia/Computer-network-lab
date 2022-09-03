create table message(
  first varchar(20) NOT NULL,
  next varchar(20) NOT NULL,
  tweet_id int,
  text varchar(256),
  date date,
   foreign key (next) references users(id),
 foreign key (tweet_id) references tweet(id),
  foreign key (first) references users(id)
 

)