Declare @condition_id int
EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Login Condition', @description=N'', @facet=N'Login', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>EQ</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>Numeric</TypeClass>
    <Name>LoginType</Name>
  </Attribute>
  <Function>
    <TypeClass>Numeric</TypeClass>
    <FunctionType>Enum</FunctionType>
    <ReturnType>Numeric</ReturnType>
    <Count>2</Count>
    <Constant>
      <TypeClass>String</TypeClass>
      <ObjType>System.String</ObjType>
      <Value>Microsoft.SqlServer.Management.Smo.LoginType</Value>
    </Constant>
    <Constant>
      <TypeClass>String</TypeClass>
      <ObjType>System.String</ObjType>
      <Value>WindowsUser</Value>
    </Constant>
  </Function>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT
Select @condition_id

GO

