create table tag(
  tag_text varchar(6) NOT NULL,
  tweet_id INT NOT NULL,
  foreign key (tweet_id) references tweet(id)
)