## Module AWS.OpsWorksCM.Types

#### `options`

``` purescript
options :: Options
```

#### `AccountAttribute`

``` purescript
newtype AccountAttribute
  = AccountAttribute { "Name" :: Maybe (String), "Maximum" :: Maybe (Int), "Used" :: Maybe (Int) }
```

<p>Stores account attributes. </p>

##### Instances
``` purescript
Newtype AccountAttribute _
Generic AccountAttribute _
Show AccountAttribute
Decode AccountAttribute
Encode AccountAttribute
```

#### `newAccountAttribute`

``` purescript
newAccountAttribute :: AccountAttribute
```

Constructs AccountAttribute from required parameters

#### `newAccountAttribute'`

``` purescript
newAccountAttribute' :: ({ "Name" :: Maybe (String), "Maximum" :: Maybe (Int), "Used" :: Maybe (Int) } -> { "Name" :: Maybe (String), "Maximum" :: Maybe (Int), "Used" :: Maybe (Int) }) -> AccountAttribute
```

Constructs AccountAttribute's fields from required parameters

#### `AccountAttributes`

``` purescript
newtype AccountAttributes
  = AccountAttributes (Array AccountAttribute)
```

<p> A list of individual account attributes. </p>

##### Instances
``` purescript
Newtype AccountAttributes _
Generic AccountAttributes _
Show AccountAttributes
Decode AccountAttributes
Encode AccountAttributes
```

#### `AssociateNodeRequest`

``` purescript
newtype AssociateNodeRequest
  = AssociateNodeRequest { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: EngineAttributes }
```

##### Instances
``` purescript
Newtype AssociateNodeRequest _
Generic AssociateNodeRequest _
Show AssociateNodeRequest
Decode AssociateNodeRequest
Encode AssociateNodeRequest
```

#### `newAssociateNodeRequest`

``` purescript
newAssociateNodeRequest :: EngineAttributes -> NodeName -> ServerName -> AssociateNodeRequest
```

Constructs AssociateNodeRequest from required parameters

#### `newAssociateNodeRequest'`

``` purescript
newAssociateNodeRequest' :: EngineAttributes -> NodeName -> ServerName -> ({ "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: EngineAttributes } -> { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: EngineAttributes }) -> AssociateNodeRequest
```

Constructs AssociateNodeRequest's fields from required parameters

#### `AssociateNodeResponse`

``` purescript
newtype AssociateNodeResponse
  = AssociateNodeResponse { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) }
```

##### Instances
``` purescript
Newtype AssociateNodeResponse _
Generic AssociateNodeResponse _
Show AssociateNodeResponse
Decode AssociateNodeResponse
Encode AssociateNodeResponse
```

#### `newAssociateNodeResponse`

``` purescript
newAssociateNodeResponse :: AssociateNodeResponse
```

Constructs AssociateNodeResponse from required parameters

#### `newAssociateNodeResponse'`

``` purescript
newAssociateNodeResponse' :: ({ "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } -> { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) }) -> AssociateNodeResponse
```

Constructs AssociateNodeResponse's fields from required parameters

#### `AttributeName`

``` purescript
newtype AttributeName
  = AttributeName String
```

##### Instances
``` purescript
Newtype AttributeName _
Generic AttributeName _
Show AttributeName
Decode AttributeName
Encode AttributeName
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue String
```

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `Backup`

``` purescript
newtype Backup
  = Backup { "BackupArn" :: Maybe (String), "BackupId" :: Maybe (BackupId), "BackupType" :: Maybe (BackupType), "CreatedAt" :: Maybe (Timestamp), "Description" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "S3DataSize" :: Maybe (Int), "S3DataUrl" :: Maybe (String), "S3LogUrl" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "ServerName" :: Maybe (ServerName), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (BackupStatus), "StatusDescription" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ToolsVersion" :: Maybe (String), "UserArn" :: Maybe (String) }
```

<p>Describes a single backup. </p>

##### Instances
``` purescript
Newtype Backup _
Generic Backup _
Show Backup
Decode Backup
Encode Backup
```

#### `newBackup`

``` purescript
newBackup :: Backup
```

Constructs Backup from required parameters

#### `newBackup'`

``` purescript
newBackup' :: ({ "BackupArn" :: Maybe (String), "BackupId" :: Maybe (BackupId), "BackupType" :: Maybe (BackupType), "CreatedAt" :: Maybe (Timestamp), "Description" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "S3DataSize" :: Maybe (Int), "S3DataUrl" :: Maybe (String), "S3LogUrl" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "ServerName" :: Maybe (ServerName), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (BackupStatus), "StatusDescription" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ToolsVersion" :: Maybe (String), "UserArn" :: Maybe (String) } -> { "BackupArn" :: Maybe (String), "BackupId" :: Maybe (BackupId), "BackupType" :: Maybe (BackupType), "CreatedAt" :: Maybe (Timestamp), "Description" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "S3DataSize" :: Maybe (Int), "S3DataUrl" :: Maybe (String), "S3LogUrl" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "ServerName" :: Maybe (ServerName), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (BackupStatus), "StatusDescription" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ToolsVersion" :: Maybe (String), "UserArn" :: Maybe (String) }) -> Backup
```

Constructs Backup's fields from required parameters

#### `BackupId`

``` purescript
newtype BackupId
  = BackupId String
```

##### Instances
``` purescript
Newtype BackupId _
Generic BackupId _
Show BackupId
Decode BackupId
Encode BackupId
```

#### `BackupRetentionCountDefinition`

``` purescript
newtype BackupRetentionCountDefinition
  = BackupRetentionCountDefinition Int
```

##### Instances
``` purescript
Newtype BackupRetentionCountDefinition _
Generic BackupRetentionCountDefinition _
Show BackupRetentionCountDefinition
Decode BackupRetentionCountDefinition
Encode BackupRetentionCountDefinition
```

#### `BackupStatus`

``` purescript
newtype BackupStatus
  = BackupStatus String
```

##### Instances
``` purescript
Newtype BackupStatus _
Generic BackupStatus _
Show BackupStatus
Decode BackupStatus
Encode BackupStatus
```

#### `BackupType`

``` purescript
newtype BackupType
  = BackupType String
```

##### Instances
``` purescript
Newtype BackupType _
Generic BackupType _
Show BackupType
Decode BackupType
Encode BackupType
```

#### `Backups`

``` purescript
newtype Backups
  = Backups (Array Backup)
```

##### Instances
``` purescript
Newtype Backups _
Generic Backups _
Show Backups
Decode Backups
Encode Backups
```

#### `CreateBackupRequest`

``` purescript
newtype CreateBackupRequest
  = CreateBackupRequest { "ServerName" :: ServerName, "Description" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateBackupRequest _
Generic CreateBackupRequest _
Show CreateBackupRequest
Decode CreateBackupRequest
Encode CreateBackupRequest
```

#### `newCreateBackupRequest`

``` purescript
newCreateBackupRequest :: ServerName -> CreateBackupRequest
```

Constructs CreateBackupRequest from required parameters

#### `newCreateBackupRequest'`

``` purescript
newCreateBackupRequest' :: ServerName -> ({ "ServerName" :: ServerName, "Description" :: Maybe (String) } -> { "ServerName" :: ServerName, "Description" :: Maybe (String) }) -> CreateBackupRequest
```

Constructs CreateBackupRequest's fields from required parameters

#### `CreateBackupResponse`

``` purescript
newtype CreateBackupResponse
  = CreateBackupResponse { "Backup" :: Maybe (Backup) }
```

##### Instances
``` purescript
Newtype CreateBackupResponse _
Generic CreateBackupResponse _
Show CreateBackupResponse
Decode CreateBackupResponse
Encode CreateBackupResponse
```

#### `newCreateBackupResponse`

``` purescript
newCreateBackupResponse :: CreateBackupResponse
```

Constructs CreateBackupResponse from required parameters

#### `newCreateBackupResponse'`

``` purescript
newCreateBackupResponse' :: ({ "Backup" :: Maybe (Backup) } -> { "Backup" :: Maybe (Backup) }) -> CreateBackupResponse
```

Constructs CreateBackupResponse's fields from required parameters

#### `CreateServerRequest`

``` purescript
newtype CreateServerRequest
  = CreateServerRequest { "AssociatePublicIpAddress" :: Maybe (Boolean), "DisableAutomatedBackup" :: Maybe (Boolean), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: Maybe (KeyPair), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: Maybe (Strings), "BackupId" :: Maybe (BackupId) }
```

##### Instances
``` purescript
Newtype CreateServerRequest _
Generic CreateServerRequest _
Show CreateServerRequest
Decode CreateServerRequest
Encode CreateServerRequest
```

#### `newCreateServerRequest`

``` purescript
newCreateServerRequest :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> CreateServerRequest
```

Constructs CreateServerRequest from required parameters

#### `newCreateServerRequest'`

``` purescript
newCreateServerRequest' :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> ({ "AssociatePublicIpAddress" :: Maybe (Boolean), "DisableAutomatedBackup" :: Maybe (Boolean), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: Maybe (KeyPair), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: Maybe (Strings), "BackupId" :: Maybe (BackupId) } -> { "AssociatePublicIpAddress" :: Maybe (Boolean), "DisableAutomatedBackup" :: Maybe (Boolean), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineVersion" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: Maybe (KeyPair), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: Maybe (Strings), "BackupId" :: Maybe (BackupId) }) -> CreateServerRequest
```

Constructs CreateServerRequest's fields from required parameters

#### `CreateServerResponse`

``` purescript
newtype CreateServerResponse
  = CreateServerResponse { "Server" :: Maybe (Server) }
```

##### Instances
``` purescript
Newtype CreateServerResponse _
Generic CreateServerResponse _
Show CreateServerResponse
Decode CreateServerResponse
Encode CreateServerResponse
```

#### `newCreateServerResponse`

``` purescript
newCreateServerResponse :: CreateServerResponse
```

Constructs CreateServerResponse from required parameters

#### `newCreateServerResponse'`

``` purescript
newCreateServerResponse' :: ({ "Server" :: Maybe (Server) } -> { "Server" :: Maybe (Server) }) -> CreateServerResponse
```

Constructs CreateServerResponse's fields from required parameters

#### `DeleteBackupRequest`

``` purescript
newtype DeleteBackupRequest
  = DeleteBackupRequest { "BackupId" :: BackupId }
```

##### Instances
``` purescript
Newtype DeleteBackupRequest _
Generic DeleteBackupRequest _
Show DeleteBackupRequest
Decode DeleteBackupRequest
Encode DeleteBackupRequest
```

#### `newDeleteBackupRequest`

``` purescript
newDeleteBackupRequest :: BackupId -> DeleteBackupRequest
```

Constructs DeleteBackupRequest from required parameters

#### `newDeleteBackupRequest'`

``` purescript
newDeleteBackupRequest' :: BackupId -> ({ "BackupId" :: BackupId } -> { "BackupId" :: BackupId }) -> DeleteBackupRequest
```

Constructs DeleteBackupRequest's fields from required parameters

#### `DeleteBackupResponse`

``` purescript
newtype DeleteBackupResponse
  = DeleteBackupResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteBackupResponse _
Generic DeleteBackupResponse _
Show DeleteBackupResponse
Decode DeleteBackupResponse
Encode DeleteBackupResponse
```

#### `DeleteServerRequest`

``` purescript
newtype DeleteServerRequest
  = DeleteServerRequest { "ServerName" :: ServerName }
```

##### Instances
``` purescript
Newtype DeleteServerRequest _
Generic DeleteServerRequest _
Show DeleteServerRequest
Decode DeleteServerRequest
Encode DeleteServerRequest
```

#### `newDeleteServerRequest`

``` purescript
newDeleteServerRequest :: ServerName -> DeleteServerRequest
```

Constructs DeleteServerRequest from required parameters

#### `newDeleteServerRequest'`

``` purescript
newDeleteServerRequest' :: ServerName -> ({ "ServerName" :: ServerName } -> { "ServerName" :: ServerName }) -> DeleteServerRequest
```

Constructs DeleteServerRequest's fields from required parameters

#### `DeleteServerResponse`

``` purescript
newtype DeleteServerResponse
  = DeleteServerResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteServerResponse _
Generic DeleteServerResponse _
Show DeleteServerResponse
Decode DeleteServerResponse
Encode DeleteServerResponse
```

#### `DescribeAccountAttributesRequest`

``` purescript
newtype DescribeAccountAttributesRequest
  = DescribeAccountAttributesRequest NoArguments
```

##### Instances
``` purescript
Newtype DescribeAccountAttributesRequest _
Generic DescribeAccountAttributesRequest _
Show DescribeAccountAttributesRequest
Decode DescribeAccountAttributesRequest
Encode DescribeAccountAttributesRequest
```

#### `DescribeAccountAttributesResponse`

``` purescript
newtype DescribeAccountAttributesResponse
  = DescribeAccountAttributesResponse { "Attributes" :: Maybe (AccountAttributes) }
```

##### Instances
``` purescript
Newtype DescribeAccountAttributesResponse _
Generic DescribeAccountAttributesResponse _
Show DescribeAccountAttributesResponse
Decode DescribeAccountAttributesResponse
Encode DescribeAccountAttributesResponse
```

#### `newDescribeAccountAttributesResponse`

``` purescript
newDescribeAccountAttributesResponse :: DescribeAccountAttributesResponse
```

Constructs DescribeAccountAttributesResponse from required parameters

#### `newDescribeAccountAttributesResponse'`

``` purescript
newDescribeAccountAttributesResponse' :: ({ "Attributes" :: Maybe (AccountAttributes) } -> { "Attributes" :: Maybe (AccountAttributes) }) -> DescribeAccountAttributesResponse
```

Constructs DescribeAccountAttributesResponse's fields from required parameters

#### `DescribeBackupsRequest`

``` purescript
newtype DescribeBackupsRequest
  = DescribeBackupsRequest { "BackupId" :: Maybe (BackupId), "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype DescribeBackupsRequest _
Generic DescribeBackupsRequest _
Show DescribeBackupsRequest
Decode DescribeBackupsRequest
Encode DescribeBackupsRequest
```

#### `newDescribeBackupsRequest`

``` purescript
newDescribeBackupsRequest :: DescribeBackupsRequest
```

Constructs DescribeBackupsRequest from required parameters

#### `newDescribeBackupsRequest'`

``` purescript
newDescribeBackupsRequest' :: ({ "BackupId" :: Maybe (BackupId), "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "BackupId" :: Maybe (BackupId), "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> DescribeBackupsRequest
```

Constructs DescribeBackupsRequest's fields from required parameters

#### `DescribeBackupsResponse`

``` purescript
newtype DescribeBackupsResponse
  = DescribeBackupsResponse { "Backups" :: Maybe (Backups), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DescribeBackupsResponse _
Generic DescribeBackupsResponse _
Show DescribeBackupsResponse
Decode DescribeBackupsResponse
Encode DescribeBackupsResponse
```

#### `newDescribeBackupsResponse`

``` purescript
newDescribeBackupsResponse :: DescribeBackupsResponse
```

Constructs DescribeBackupsResponse from required parameters

#### `newDescribeBackupsResponse'`

``` purescript
newDescribeBackupsResponse' :: ({ "Backups" :: Maybe (Backups), "NextToken" :: Maybe (String) } -> { "Backups" :: Maybe (Backups), "NextToken" :: Maybe (String) }) -> DescribeBackupsResponse
```

Constructs DescribeBackupsResponse's fields from required parameters

#### `DescribeEventsRequest`

``` purescript
newtype DescribeEventsRequest
  = DescribeEventsRequest { "ServerName" :: ServerName, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype DescribeEventsRequest _
Generic DescribeEventsRequest _
Show DescribeEventsRequest
Decode DescribeEventsRequest
Encode DescribeEventsRequest
```

#### `newDescribeEventsRequest`

``` purescript
newDescribeEventsRequest :: ServerName -> DescribeEventsRequest
```

Constructs DescribeEventsRequest from required parameters

#### `newDescribeEventsRequest'`

``` purescript
newDescribeEventsRequest' :: ServerName -> ({ "ServerName" :: ServerName, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ServerName" :: ServerName, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> DescribeEventsRequest
```

Constructs DescribeEventsRequest's fields from required parameters

#### `DescribeEventsResponse`

``` purescript
newtype DescribeEventsResponse
  = DescribeEventsResponse { "ServerEvents" :: Maybe (ServerEvents), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DescribeEventsResponse _
Generic DescribeEventsResponse _
Show DescribeEventsResponse
Decode DescribeEventsResponse
Encode DescribeEventsResponse
```

#### `newDescribeEventsResponse`

``` purescript
newDescribeEventsResponse :: DescribeEventsResponse
```

Constructs DescribeEventsResponse from required parameters

#### `newDescribeEventsResponse'`

``` purescript
newDescribeEventsResponse' :: ({ "ServerEvents" :: Maybe (ServerEvents), "NextToken" :: Maybe (String) } -> { "ServerEvents" :: Maybe (ServerEvents), "NextToken" :: Maybe (String) }) -> DescribeEventsResponse
```

Constructs DescribeEventsResponse's fields from required parameters

#### `DescribeNodeAssociationStatusRequest`

``` purescript
newtype DescribeNodeAssociationStatusRequest
  = DescribeNodeAssociationStatusRequest { "NodeAssociationStatusToken" :: NodeAssociationStatusToken, "ServerName" :: ServerName }
```

##### Instances
``` purescript
Newtype DescribeNodeAssociationStatusRequest _
Generic DescribeNodeAssociationStatusRequest _
Show DescribeNodeAssociationStatusRequest
Decode DescribeNodeAssociationStatusRequest
Encode DescribeNodeAssociationStatusRequest
```

#### `newDescribeNodeAssociationStatusRequest`

``` purescript
newDescribeNodeAssociationStatusRequest :: NodeAssociationStatusToken -> ServerName -> DescribeNodeAssociationStatusRequest
```

Constructs DescribeNodeAssociationStatusRequest from required parameters

#### `newDescribeNodeAssociationStatusRequest'`

``` purescript
newDescribeNodeAssociationStatusRequest' :: NodeAssociationStatusToken -> ServerName -> ({ "NodeAssociationStatusToken" :: NodeAssociationStatusToken, "ServerName" :: ServerName } -> { "NodeAssociationStatusToken" :: NodeAssociationStatusToken, "ServerName" :: ServerName }) -> DescribeNodeAssociationStatusRequest
```

Constructs DescribeNodeAssociationStatusRequest's fields from required parameters

#### `DescribeNodeAssociationStatusResponse`

``` purescript
newtype DescribeNodeAssociationStatusResponse
  = DescribeNodeAssociationStatusResponse { "NodeAssociationStatus" :: Maybe (NodeAssociationStatus), "EngineAttributes" :: Maybe (EngineAttributes) }
```

##### Instances
``` purescript
Newtype DescribeNodeAssociationStatusResponse _
Generic DescribeNodeAssociationStatusResponse _
Show DescribeNodeAssociationStatusResponse
Decode DescribeNodeAssociationStatusResponse
Encode DescribeNodeAssociationStatusResponse
```

#### `newDescribeNodeAssociationStatusResponse`

``` purescript
newDescribeNodeAssociationStatusResponse :: DescribeNodeAssociationStatusResponse
```

Constructs DescribeNodeAssociationStatusResponse from required parameters

#### `newDescribeNodeAssociationStatusResponse'`

``` purescript
newDescribeNodeAssociationStatusResponse' :: ({ "NodeAssociationStatus" :: Maybe (NodeAssociationStatus), "EngineAttributes" :: Maybe (EngineAttributes) } -> { "NodeAssociationStatus" :: Maybe (NodeAssociationStatus), "EngineAttributes" :: Maybe (EngineAttributes) }) -> DescribeNodeAssociationStatusResponse
```

Constructs DescribeNodeAssociationStatusResponse's fields from required parameters

#### `DescribeServersRequest`

``` purescript
newtype DescribeServersRequest
  = DescribeServersRequest { "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype DescribeServersRequest _
Generic DescribeServersRequest _
Show DescribeServersRequest
Decode DescribeServersRequest
Encode DescribeServersRequest
```

#### `newDescribeServersRequest`

``` purescript
newDescribeServersRequest :: DescribeServersRequest
```

Constructs DescribeServersRequest from required parameters

#### `newDescribeServersRequest'`

``` purescript
newDescribeServersRequest' :: ({ "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ServerName" :: Maybe (ServerName), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> DescribeServersRequest
```

Constructs DescribeServersRequest's fields from required parameters

#### `DescribeServersResponse`

``` purescript
newtype DescribeServersResponse
  = DescribeServersResponse { "Servers" :: Maybe (Servers), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DescribeServersResponse _
Generic DescribeServersResponse _
Show DescribeServersResponse
Decode DescribeServersResponse
Encode DescribeServersResponse
```

#### `newDescribeServersResponse`

``` purescript
newDescribeServersResponse :: DescribeServersResponse
```

Constructs DescribeServersResponse from required parameters

#### `newDescribeServersResponse'`

``` purescript
newDescribeServersResponse' :: ({ "Servers" :: Maybe (Servers), "NextToken" :: Maybe (String) } -> { "Servers" :: Maybe (Servers), "NextToken" :: Maybe (String) }) -> DescribeServersResponse
```

Constructs DescribeServersResponse's fields from required parameters

#### `DisassociateNodeRequest`

``` purescript
newtype DisassociateNodeRequest
  = DisassociateNodeRequest { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: Maybe (EngineAttributes) }
```

##### Instances
``` purescript
Newtype DisassociateNodeRequest _
Generic DisassociateNodeRequest _
Show DisassociateNodeRequest
Decode DisassociateNodeRequest
Encode DisassociateNodeRequest
```

#### `newDisassociateNodeRequest`

``` purescript
newDisassociateNodeRequest :: NodeName -> ServerName -> DisassociateNodeRequest
```

Constructs DisassociateNodeRequest from required parameters

#### `newDisassociateNodeRequest'`

``` purescript
newDisassociateNodeRequest' :: NodeName -> ServerName -> ({ "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: Maybe (EngineAttributes) } -> { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: Maybe (EngineAttributes) }) -> DisassociateNodeRequest
```

Constructs DisassociateNodeRequest's fields from required parameters

#### `DisassociateNodeResponse`

``` purescript
newtype DisassociateNodeResponse
  = DisassociateNodeResponse { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) }
```

##### Instances
``` purescript
Newtype DisassociateNodeResponse _
Generic DisassociateNodeResponse _
Show DisassociateNodeResponse
Decode DisassociateNodeResponse
Encode DisassociateNodeResponse
```

#### `newDisassociateNodeResponse`

``` purescript
newDisassociateNodeResponse :: DisassociateNodeResponse
```

Constructs DisassociateNodeResponse from required parameters

#### `newDisassociateNodeResponse'`

``` purescript
newDisassociateNodeResponse' :: ({ "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } -> { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) }) -> DisassociateNodeResponse
```

Constructs DisassociateNodeResponse's fields from required parameters

#### `EngineAttribute`

``` purescript
newtype EngineAttribute
  = EngineAttribute { "Name" :: Maybe (EngineAttributeName), "Value" :: Maybe (EngineAttributeValue) }
```

<p>A name and value pair that is specific to the engine of the server. </p>

##### Instances
``` purescript
Newtype EngineAttribute _
Generic EngineAttribute _
Show EngineAttribute
Decode EngineAttribute
Encode EngineAttribute
```

#### `newEngineAttribute`

``` purescript
newEngineAttribute :: EngineAttribute
```

Constructs EngineAttribute from required parameters

#### `newEngineAttribute'`

``` purescript
newEngineAttribute' :: ({ "Name" :: Maybe (EngineAttributeName), "Value" :: Maybe (EngineAttributeValue) } -> { "Name" :: Maybe (EngineAttributeName), "Value" :: Maybe (EngineAttributeValue) }) -> EngineAttribute
```

Constructs EngineAttribute's fields from required parameters

#### `EngineAttributeName`

``` purescript
newtype EngineAttributeName
  = EngineAttributeName String
```

##### Instances
``` purescript
Newtype EngineAttributeName _
Generic EngineAttributeName _
Show EngineAttributeName
Decode EngineAttributeName
Encode EngineAttributeName
```

#### `EngineAttributeValue`

``` purescript
newtype EngineAttributeValue
  = EngineAttributeValue String
```

##### Instances
``` purescript
Newtype EngineAttributeValue _
Generic EngineAttributeValue _
Show EngineAttributeValue
Decode EngineAttributeValue
Encode EngineAttributeValue
```

#### `EngineAttributes`

``` purescript
newtype EngineAttributes
  = EngineAttributes (Array EngineAttribute)
```

##### Instances
``` purescript
Newtype EngineAttributes _
Generic EngineAttributes _
Show EngineAttributes
Decode EngineAttributes
Encode EngineAttributes
```

#### `InstanceProfileArn`

``` purescript
newtype InstanceProfileArn
  = InstanceProfileArn String
```

##### Instances
``` purescript
Newtype InstanceProfileArn _
Generic InstanceProfileArn _
Show InstanceProfileArn
Decode InstanceProfileArn
Encode InstanceProfileArn
```

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: Maybe (String) }
```

<p>This occurs when the provided nextToken is not valid. </p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `InvalidStateException`

``` purescript
newtype InvalidStateException
  = InvalidStateException { "Message" :: Maybe (String) }
```

<p>The resource is in a state that does not allow you to perform a specified action. </p>

##### Instances
``` purescript
Newtype InvalidStateException _
Generic InvalidStateException _
Show InvalidStateException
Decode InvalidStateException
Encode InvalidStateException
```

#### `newInvalidStateException`

``` purescript
newInvalidStateException :: InvalidStateException
```

Constructs InvalidStateException from required parameters

#### `newInvalidStateException'`

``` purescript
newInvalidStateException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InvalidStateException
```

Constructs InvalidStateException's fields from required parameters

#### `KeyPair`

``` purescript
newtype KeyPair
  = KeyPair String
```

##### Instances
``` purescript
Newtype KeyPair _
Generic KeyPair _
Show KeyPair
Decode KeyPair
Encode KeyPair
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: Maybe (String) }
```

<p>The limit of servers or backups has been reached. </p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `MaintenanceStatus`

``` purescript
newtype MaintenanceStatus
  = MaintenanceStatus String
```

##### Instances
``` purescript
Newtype MaintenanceStatus _
Generic MaintenanceStatus _
Show MaintenanceStatus
Decode MaintenanceStatus
Encode MaintenanceStatus
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NodeAssociationStatus`

``` purescript
newtype NodeAssociationStatus
  = NodeAssociationStatus String
```

<p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>

##### Instances
``` purescript
Newtype NodeAssociationStatus _
Generic NodeAssociationStatus _
Show NodeAssociationStatus
Decode NodeAssociationStatus
Encode NodeAssociationStatus
```

#### `NodeAssociationStatusToken`

``` purescript
newtype NodeAssociationStatusToken
  = NodeAssociationStatusToken String
```

##### Instances
``` purescript
Newtype NodeAssociationStatusToken _
Generic NodeAssociationStatusToken _
Show NodeAssociationStatusToken
Decode NodeAssociationStatusToken
Encode NodeAssociationStatusToken
```

#### `NodeName`

``` purescript
newtype NodeName
  = NodeName String
```

<p>The node name that is used by <code>chef-client</code> or <code>puppet-agent</code>for a new node. We recommend to use a unique FQDN as hostname. For more information, see the <a href="http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names">Chef</a> or <a href="http://docs.aws.amazon.com/https:/docs.puppet.com/puppet/4.10/man/agent.html">Puppet</a> documentation. </p>

##### Instances
``` purescript
Newtype NodeName _
Generic NodeName _
Show NodeName
Decode NodeName
Encode NodeName
```

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException { "Message" :: Maybe (String) }
```

<p>The requested resource cannot be created because it already exists. </p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `newResourceAlreadyExistsException`

``` purescript
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException from required parameters

#### `newResourceAlreadyExistsException'`

``` purescript
newResourceAlreadyExistsException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message" :: Maybe (String) }
```

<p>The requested resource does not exist, or access was denied. </p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RestoreServerRequest`

``` purescript
newtype RestoreServerRequest
  = RestoreServerRequest { "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (KeyPair) }
```

##### Instances
``` purescript
Newtype RestoreServerRequest _
Generic RestoreServerRequest _
Show RestoreServerRequest
Decode RestoreServerRequest
Encode RestoreServerRequest
```

#### `newRestoreServerRequest`

``` purescript
newRestoreServerRequest :: BackupId -> ServerName -> RestoreServerRequest
```

Constructs RestoreServerRequest from required parameters

#### `newRestoreServerRequest'`

``` purescript
newRestoreServerRequest' :: BackupId -> ServerName -> ({ "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (KeyPair) } -> { "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (KeyPair) }) -> RestoreServerRequest
```

Constructs RestoreServerRequest's fields from required parameters

#### `RestoreServerResponse`

``` purescript
newtype RestoreServerResponse
  = RestoreServerResponse NoArguments
```

##### Instances
``` purescript
Newtype RestoreServerResponse _
Generic RestoreServerResponse _
Show RestoreServerResponse
Decode RestoreServerResponse
Encode RestoreServerResponse
```

#### `Server`

``` purescript
newtype Server
  = Server { "AssociatePublicIpAddress" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: Maybe (String), "CreatedAt" :: Maybe (Timestamp), "CloudFormationStackArn" :: Maybe (String), "DisableAutomatedBackup" :: Maybe (Boolean), "Endpoint" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "MaintenanceStatus" :: Maybe (MaintenanceStatus), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (ServerStatus), "StatusReason" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ServerArn" :: Maybe (String) }
```

<p>Describes a configuration management server. </p>

##### Instances
``` purescript
Newtype Server _
Generic Server _
Show Server
Decode Server
Encode Server
```

#### `newServer`

``` purescript
newServer :: Server
```

Constructs Server from required parameters

#### `newServer'`

``` purescript
newServer' :: ({ "AssociatePublicIpAddress" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: Maybe (String), "CreatedAt" :: Maybe (Timestamp), "CloudFormationStackArn" :: Maybe (String), "DisableAutomatedBackup" :: Maybe (Boolean), "Endpoint" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "MaintenanceStatus" :: Maybe (MaintenanceStatus), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (ServerStatus), "StatusReason" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ServerArn" :: Maybe (String) } -> { "AssociatePublicIpAddress" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: Maybe (String), "CreatedAt" :: Maybe (Timestamp), "CloudFormationStackArn" :: Maybe (String), "DisableAutomatedBackup" :: Maybe (Boolean), "Endpoint" :: Maybe (String), "Engine" :: Maybe (String), "EngineModel" :: Maybe (String), "EngineAttributes" :: Maybe (EngineAttributes), "EngineVersion" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "KeyPair" :: Maybe (String), "MaintenanceStatus" :: Maybe (MaintenanceStatus), "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition), "SecurityGroupIds" :: Maybe (Strings), "ServiceRoleArn" :: Maybe (String), "Status" :: Maybe (ServerStatus), "StatusReason" :: Maybe (String), "SubnetIds" :: Maybe (Strings), "ServerArn" :: Maybe (String) }) -> Server
```

Constructs Server's fields from required parameters

#### `ServerEvent`

``` purescript
newtype ServerEvent
  = ServerEvent { "CreatedAt" :: Maybe (Timestamp), "ServerName" :: Maybe (String), "Message" :: Maybe (String), "LogUrl" :: Maybe (String) }
```

<p>An event that is related to the server, such as the start of maintenance or backup. </p>

##### Instances
``` purescript
Newtype ServerEvent _
Generic ServerEvent _
Show ServerEvent
Decode ServerEvent
Encode ServerEvent
```

#### `newServerEvent`

``` purescript
newServerEvent :: ServerEvent
```

Constructs ServerEvent from required parameters

#### `newServerEvent'`

``` purescript
newServerEvent' :: ({ "CreatedAt" :: Maybe (Timestamp), "ServerName" :: Maybe (String), "Message" :: Maybe (String), "LogUrl" :: Maybe (String) } -> { "CreatedAt" :: Maybe (Timestamp), "ServerName" :: Maybe (String), "Message" :: Maybe (String), "LogUrl" :: Maybe (String) }) -> ServerEvent
```

Constructs ServerEvent's fields from required parameters

#### `ServerEvents`

``` purescript
newtype ServerEvents
  = ServerEvents (Array ServerEvent)
```

##### Instances
``` purescript
Newtype ServerEvents _
Generic ServerEvents _
Show ServerEvents
Decode ServerEvents
Encode ServerEvents
```

#### `ServerName`

``` purescript
newtype ServerName
  = ServerName String
```

##### Instances
``` purescript
Newtype ServerName _
Generic ServerName _
Show ServerName
Decode ServerName
Encode ServerName
```

#### `ServerStatus`

``` purescript
newtype ServerStatus
  = ServerStatus String
```

##### Instances
``` purescript
Newtype ServerStatus _
Generic ServerStatus _
Show ServerStatus
Decode ServerStatus
Encode ServerStatus
```

#### `Servers`

``` purescript
newtype Servers
  = Servers (Array Server)
```

##### Instances
``` purescript
Newtype Servers _
Generic Servers _
Show Servers
Decode Servers
Encode Servers
```

#### `ServiceRoleArn`

``` purescript
newtype ServiceRoleArn
  = ServiceRoleArn String
```

##### Instances
``` purescript
Newtype ServiceRoleArn _
Generic ServiceRoleArn _
Show ServiceRoleArn
Decode ServiceRoleArn
Encode ServiceRoleArn
```

#### `StartMaintenanceRequest`

``` purescript
newtype StartMaintenanceRequest
  = StartMaintenanceRequest { "ServerName" :: ServerName, "EngineAttributes" :: Maybe (EngineAttributes) }
```

##### Instances
``` purescript
Newtype StartMaintenanceRequest _
Generic StartMaintenanceRequest _
Show StartMaintenanceRequest
Decode StartMaintenanceRequest
Encode StartMaintenanceRequest
```

#### `newStartMaintenanceRequest`

``` purescript
newStartMaintenanceRequest :: ServerName -> StartMaintenanceRequest
```

Constructs StartMaintenanceRequest from required parameters

#### `newStartMaintenanceRequest'`

``` purescript
newStartMaintenanceRequest' :: ServerName -> ({ "ServerName" :: ServerName, "EngineAttributes" :: Maybe (EngineAttributes) } -> { "ServerName" :: ServerName, "EngineAttributes" :: Maybe (EngineAttributes) }) -> StartMaintenanceRequest
```

Constructs StartMaintenanceRequest's fields from required parameters

#### `StartMaintenanceResponse`

``` purescript
newtype StartMaintenanceResponse
  = StartMaintenanceResponse { "Server" :: Maybe (Server) }
```

##### Instances
``` purescript
Newtype StartMaintenanceResponse _
Generic StartMaintenanceResponse _
Show StartMaintenanceResponse
Decode StartMaintenanceResponse
Encode StartMaintenanceResponse
```

#### `newStartMaintenanceResponse`

``` purescript
newStartMaintenanceResponse :: StartMaintenanceResponse
```

Constructs StartMaintenanceResponse from required parameters

#### `newStartMaintenanceResponse'`

``` purescript
newStartMaintenanceResponse' :: ({ "Server" :: Maybe (Server) } -> { "Server" :: Maybe (Server) }) -> StartMaintenanceResponse
```

Constructs StartMaintenanceResponse's fields from required parameters

#### `Strings`

``` purescript
newtype Strings
  = Strings (Array String)
```

##### Instances
``` purescript
Newtype Strings _
Generic Strings _
Show Strings
Decode Strings
Encode Strings
```

#### `TimeWindowDefinition`

``` purescript
newtype TimeWindowDefinition
  = TimeWindowDefinition String
```

<p> <code>DDD:HH:MM</code> (weekly start time) or <code>HH:MM</code> (daily start time). </p> <p> Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>, <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>

##### Instances
``` purescript
Newtype TimeWindowDefinition _
Generic TimeWindowDefinition _
Show TimeWindowDefinition
Decode TimeWindowDefinition
Encode TimeWindowDefinition
```

#### `UpdateServerEngineAttributesRequest`

``` purescript
newtype UpdateServerEngineAttributesRequest
  = UpdateServerEngineAttributesRequest { "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: Maybe (AttributeValue) }
```

##### Instances
``` purescript
Newtype UpdateServerEngineAttributesRequest _
Generic UpdateServerEngineAttributesRequest _
Show UpdateServerEngineAttributesRequest
Decode UpdateServerEngineAttributesRequest
Encode UpdateServerEngineAttributesRequest
```

#### `newUpdateServerEngineAttributesRequest`

``` purescript
newUpdateServerEngineAttributesRequest :: AttributeName -> ServerName -> UpdateServerEngineAttributesRequest
```

Constructs UpdateServerEngineAttributesRequest from required parameters

#### `newUpdateServerEngineAttributesRequest'`

``` purescript
newUpdateServerEngineAttributesRequest' :: AttributeName -> ServerName -> ({ "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: Maybe (AttributeValue) } -> { "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: Maybe (AttributeValue) }) -> UpdateServerEngineAttributesRequest
```

Constructs UpdateServerEngineAttributesRequest's fields from required parameters

#### `UpdateServerEngineAttributesResponse`

``` purescript
newtype UpdateServerEngineAttributesResponse
  = UpdateServerEngineAttributesResponse { "Server" :: Maybe (Server) }
```

##### Instances
``` purescript
Newtype UpdateServerEngineAttributesResponse _
Generic UpdateServerEngineAttributesResponse _
Show UpdateServerEngineAttributesResponse
Decode UpdateServerEngineAttributesResponse
Encode UpdateServerEngineAttributesResponse
```

#### `newUpdateServerEngineAttributesResponse`

``` purescript
newUpdateServerEngineAttributesResponse :: UpdateServerEngineAttributesResponse
```

Constructs UpdateServerEngineAttributesResponse from required parameters

#### `newUpdateServerEngineAttributesResponse'`

``` purescript
newUpdateServerEngineAttributesResponse' :: ({ "Server" :: Maybe (Server) } -> { "Server" :: Maybe (Server) }) -> UpdateServerEngineAttributesResponse
```

Constructs UpdateServerEngineAttributesResponse's fields from required parameters

#### `UpdateServerRequest`

``` purescript
newtype UpdateServerRequest
  = UpdateServerRequest { "DisableAutomatedBackup" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) }
```

##### Instances
``` purescript
Newtype UpdateServerRequest _
Generic UpdateServerRequest _
Show UpdateServerRequest
Decode UpdateServerRequest
Encode UpdateServerRequest
```

#### `newUpdateServerRequest`

``` purescript
newUpdateServerRequest :: ServerName -> UpdateServerRequest
```

Constructs UpdateServerRequest from required parameters

#### `newUpdateServerRequest'`

``` purescript
newUpdateServerRequest' :: ServerName -> ({ "DisableAutomatedBackup" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) } -> { "DisableAutomatedBackup" :: Maybe (Boolean), "BackupRetentionCount" :: Maybe (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition), "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) }) -> UpdateServerRequest
```

Constructs UpdateServerRequest's fields from required parameters

#### `UpdateServerResponse`

``` purescript
newtype UpdateServerResponse
  = UpdateServerResponse { "Server" :: Maybe (Server) }
```

##### Instances
``` purescript
Newtype UpdateServerResponse _
Generic UpdateServerResponse _
Show UpdateServerResponse
Decode UpdateServerResponse
Encode UpdateServerResponse
```

#### `newUpdateServerResponse`

``` purescript
newUpdateServerResponse :: UpdateServerResponse
```

Constructs UpdateServerResponse from required parameters

#### `newUpdateServerResponse'`

``` purescript
newUpdateServerResponse' :: ({ "Server" :: Maybe (Server) } -> { "Server" :: Maybe (Server) }) -> UpdateServerResponse
```

Constructs UpdateServerResponse's fields from required parameters

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException { "Message" :: Maybe (String) }
```

<p>One or more of the provided request parameters are not valid. </p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `newValidationException`

``` purescript
newValidationException :: ValidationException
```

Constructs ValidationException from required parameters

#### `newValidationException'`

``` purescript
newValidationException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ValidationException
```

Constructs ValidationException's fields from required parameters


