create table block(
  user_block nvarchar(20),
  folower_block nvarchar(20),
  primary key (user_block, folower_block),
  foreign key (user_block) references users(id),
  foreign key (folower_block) references users(id)
)