--create database test
--go


drop procedure dbo.TestProc
go
create procedure dbo.TestProc 
as
	return 0
go



drop procedure dbo.TestProc2
go
create procedure dbo.TestProc2
as
	if 1=2 throw 60000, 'theres something wrong with x', 1
	if 1=1 throw 60000, 'theres something wrong with y', 1
go



drop procedure dbo.TestProc3
go
create procedure dbo.TestProc3
as
	throw 51000, 'my error', 1
	return 0
go



drop procedure dbo.TestProc4
go
create procedure dbo.TestProc4
as
	select * from nonExistantObject
go
