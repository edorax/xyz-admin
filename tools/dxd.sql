SET FOREIGN_KEY_CHECKS=0;

create table user(
  uid int not null primary key auto_increment,
  uname varChar(100) not null,
  pwd varChar(100) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

