CREATE TABLE liked(
	tweet_id				INT NOT NULL,
    u_id				VARCHAR(20) NOT NULL,
    primary key (u_id, tweet_id),
    foreign key (tweet_id) references tweet(id),
    foreign key (u_id) references users(id))