Declare @condition_id int
EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'GreenGrocerDBName', @description=N'', @facet=N'Database', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>EQ</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>String</TypeClass>
    <Name>Name</Name>
  </Attribute>
  <Constant>
    <TypeClass>String</TypeClass>
    <ObjType>System.String</ObjType>
    <Value>GreenGrocerDB</Value>
  </Constant>
</Operator>', @is_name_condition=1, @obj_name=N'GreenGrocerDB', @condition_id=@condition_id OUTPUT
Select @condition_id

GO

