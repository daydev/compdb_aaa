# --- Sample dataset

# --- !Ups

insert into company ("id","name") values (  1,'Apple Inc.');
insert into company ("id","name") values (  2,'Thinking Machines');

insert into computer ("id","name","introduced","discontinued","company_id") values ( 1,'Apple III','1980-05-01','1984-04-01',1);
insert into computer ("id","name","introduced","discontinued","company_id") values ( 2,'MacBook Pro 15.4 inch',null,null,1);
insert into computer ("id","name","introduced","discontinued","company_id") values ( 3,'CM-2a',null,null,2);
insert into computer ("id","name","introduced","discontinued","company_id") values ( 4,'CM-200',null,null,2);
insert into computer ("id","name","introduced","discontinued","company_id") values ( 5,'CM-5e',null,null,2);

# --- !Downs

delete from computer;
delete from company;
