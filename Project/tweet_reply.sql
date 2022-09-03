create table reply(
	id							INT AUTO_INCREMENT NOT NULL,
	reply_id					INT NOT NULL,
	tweet_id					INT NOT NULL,
   
    primary key  (id),
    foreign key (tweet_id) references tweet(id),
    foreign key (reply_id) references tweet(id))