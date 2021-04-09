alter table Books add PublisherId int
alter table Books add constraint FK_Books_to_Publishers_One_to_Many foreign key (PublisherId) references Publishers (Id) 