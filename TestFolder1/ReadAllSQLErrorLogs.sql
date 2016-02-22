set nocount on

declare @i int = 0
while @i < 10
begin

	exec sp_readerrorlog @i, 1, 'vertex', 'Login failed for user'

	select @i = @i + 1

end


Go




