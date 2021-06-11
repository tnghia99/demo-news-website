use demo;

create table ROLE(
	id bigint not null primary key auto_increment,
	name varchar(255) not null,
    code varchar(255) not null,
    createddate timestamp not null,
    modifieddate timestamp not null,
    createdby timestamp not null,
    modifiedby timestamp not null
);

create table USER(
	id bigint not null primary key auto_increment,
    username varchar(150) not null,
    password varchar(150) not null, 
    fullname varchar(150) null, 
    status int not null, 
    roleid bigint not null,
    createddate timestamp not null,
    modifieddate timestamp not null,
    createdby timestamp not null,
    modifiedby timestamp not null
);

alter table USER add constraint fk_user_role foreign key (roleid) references ROLE(id); 

create table NEWS(
  id bigint not null primary key auto_increment,
  title varchar(255) null, 
  thumbnail varchar(255) null, 
  shordescription text null, 
  content text null,
  categoryid bigint not null,
  createddate timestamp null, 
  modifieddate timestamp null, 
  createdby varchar(255) null, 
  modifiedby varchar(255) null
);

create table CATEGORY(
  id bigint not null primary key auto_increment,
  name varchar(255) not null, 
  code varchar(255) not null,
  createddate timestamp null, 
  modifieddate timestamp null, 
  createdby varchar(255) null, 
  modifiedby varchar(255) null
);

alter table NEWS add constraint fk_news_cate foreign key (categoryid) references CATEGORY(id);

create table COMMENT(
  id bigint not null primary key auto_increment,
  content text not null, 
  user_id bigint not null, 
  news_id bigint not null,
  createddate timestamp null, 
  modifieddate timestamp null, 
  createdby varchar(255) null, 
  modifiedby varchar(255) null
);

alter table COMMENT add constraint fk_cmt_user foreign key (user_id) references USER(id);
alter table COMMENT add constraint fk_cmt_news foreign key (news_id) references NEWS(id);

