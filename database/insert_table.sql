use demo;

insert into role(code, name) values('ADMIN','System Admin');
insert into role(code, name) values('USER','User');

insert into user(username, password, fullname, status, roleid) values('admin','123456','admin',1,1);
insert into user(username, password, fullname, status, roleid) values('nva','123456','Nguyen Van A',1,2);
insert into user(username, password, fullname, status, roleid) values('nvb','123456','Nguyen Van B',1,2);