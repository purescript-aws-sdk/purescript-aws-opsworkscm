## Module AWS.OpsWorksCM

<fullname>AWS OpsWorks CM</fullname> <p> AWS OpsWorks for configuration management (CM) is a service that runs and manages configuration management servers. </p> <p> <b>Glossary of terms</b> </p> <ul> <li> <p> <b>Server</b>: A configuration management server that can be highly-available. The configuration management server runs on an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS services, such as Amazon Relational Database Service (RDS) and Elastic Load Balancing. A server is a generic abstraction over the configuration manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not start or stop servers. After you create servers, they continue to run until they are deleted.</p> </li> <li> <p> <b>Engine</b>: The engine is the specific configuration manager that you want to use. Valid values in this release include <code>Chef</code> and <code>Puppet</code>.</p> </li> <li> <p> <b>Backup</b>: This is an application-level backup of the data that the configuration manager stores. AWS OpsWorks CM creates an S3 bucket for backups when you launch the first server. A backup maintains a snapshot of a server's configuration-related attributes at the time the backup starts.</p> </li> <li> <p> <b>Events</b>: Events are always related to a server. Events are written during server creation, when health checks run, when backups are created, when system maintenance is performed, etc. When you delete a server, the server's events are also deleted.</p> </li> <li> <p> <b>Account attributes</b>: Every account has attributes that are assigned in the AWS OpsWorks CM database. These attributes store information about configuration limits (servers, backups, etc.) and your customer account. </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Your servers can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks-cm.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks-cm.eu-west-1.amazonaws.com</p> </li> </ul> <p> <b>Throttling limits</b> </p> <p>All API operations allow for five requests per second with a burst of 10 requests per second.</p>

#### `associateNode`

``` purescript
associateNode :: forall eff. AssociateNodeRequest -> Aff (exception :: EXCEPTION | eff) AssociateNodeResponse
```

<p> Associates a new node with the server. For more information about how to disassociate a node, see <a>DisassociateNode</a>.</p> <p> On a Chef server: This command is an alternative to <code>knife bootstrap</code>.</p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>CHEF_ORGANIZATION</i>,Value=default" "Name=<i>CHEF_NODE_PUBLIC_KEY</i>,Value=<i>public-key-pem</i>"</code> </p> <p> On a Puppet server, this command is an alternative to the <code>puppet cert sign</code> command that signs a Puppet node CSR. </p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>PUPPET_NODE_CSR</i>,Value=<i>csr-pem</i>"</code> </p> <p> A node can can only be associated with servers that are in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance. </p>

#### `createBackup`

``` purescript
createBackup :: forall eff. CreateBackupRequest -> Aff (exception :: EXCEPTION | eff) CreateBackupResponse
```

<p> Creates an application-level backup of a server. While the server is in the <code>BACKING_UP</code> state, the server cannot be changed, and no additional backup can be created. </p> <p> Backups can be created for servers in <code>RUNNING</code>, <code>HEALTHY</code>, and <code>UNHEALTHY</code> states. By default, you can create a maximum of 50 manual backups. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when the maximum number of manual backups is reached. An <code>InvalidStateException</code> is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A <code>ResourceNotFoundException</code> is thrown when the server is not found. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

#### `createServer`

``` purescript
createServer :: forall eff. CreateServerRequest -> Aff (exception :: EXCEPTION | eff) CreateServerResponse
```

<p> Creates and immedately starts a new server. The server is ready to use when it is in the <code>HEALTHY</code> state. By default, you can create a maximum of 10 servers. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when you have created the maximum number of servers (10). A <code>ResourceAlreadyExistsException</code> is thrown when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p> <p> If you do not specify a security group by adding the <code>SecurityGroupIds</code> parameter, AWS OpsWorks creates a new security group. </p> <p> <i>Chef Automate:</i> The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p> <i>Puppet Enterprise:</i> The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p>By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console. </p>

#### `deleteBackup`

``` purescript
deleteBackup :: forall eff. DeleteBackupRequest -> Aff (exception :: EXCEPTION | eff) DeleteBackupResponse
```

<p> Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a backup deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

#### `deleteServer`

``` purescript
deleteServer :: forall eff. DeleteServerRequest -> Aff (exception :: EXCEPTION | eff) DeleteServerResponse
```

<p> Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to <code>DELETING</code>. After the server is deleted, it is no longer returned by <code>DescribeServer</code> requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a server deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p> <p> </p>

#### `describeAccountAttributes`

``` purescript
describeAccountAttributes :: forall eff. DescribeAccountAttributesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAccountAttributesResponse
```

<p> Describes your account attributes, and creates requests to increase limits before they are reached or exceeded. </p> <p> This operation is synchronous. </p>

#### `describeBackups`

``` purescript
describeBackups :: forall eff. DescribeBackupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeBackupsResponse
```

<p> Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventsResponse
```

<p> Describes events for a specified server. Results are ordered by time, with newest events first. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `describeNodeAssociationStatus`

``` purescript
describeNodeAssociationStatus :: forall eff. DescribeNodeAssociationStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeNodeAssociationStatusResponse
```

<p> Returns the current status of an existing association or disassociation request. </p> <p> A <code>ResourceNotFoundException</code> is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `describeServers`

``` purescript
describeServers :: forall eff. DescribeServersRequest -> Aff (exception :: EXCEPTION | eff) DescribeServersResponse
```

<p> Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `disassociateNode`

``` purescript
disassociateNode :: forall eff. DisassociateNodeRequest -> Aff (exception :: EXCEPTION | eff) DisassociateNodeResponse
```

<p> Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see <a>AssociateNode</a>. </p> <p>A node can can only be disassociated from a server that is in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `restoreServer`

``` purescript
restoreServer :: forall eff. RestoreServerRequest -> Aff (exception :: EXCEPTION | eff) RestoreServerResponse
```

<p> Restores a backup to a server that is in a <code>CONNECTION_LOST</code>, <code>HEALTHY</code>, <code>RUNNING</code>, <code>UNHEALTHY</code>, or <code>TERMINATED</code> state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `startMaintenance`

``` purescript
startMaintenance :: forall eff. StartMaintenanceRequest -> Aff (exception :: EXCEPTION | eff) StartMaintenanceResponse
```

<p> Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an <code>UNDER_MAINTENANCE</code> state while maintenance is in progress. </p> <p> Maintenance can only be started on servers in <code>HEALTHY</code> and <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `updateServer`

``` purescript
updateServer :: forall eff. UpdateServerRequest -> Aff (exception :: EXCEPTION | eff) UpdateServerResponse
```

<p> Updates settings for a server. </p> <p> This operation is synchronous. </p>

#### `updateServerEngineAttributes`

``` purescript
updateServerEngineAttributes :: forall eff. UpdateServerEngineAttributesRequest -> Aff (exception :: EXCEPTION | eff) UpdateServerEngineAttributesResponse
```

<p> Updates engine-specific attributes on a specified server. The server enters the <code>MODIFYING</code> state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's private key (<code>CHEF_PIVOTAL_KEY</code>), a Chef server's admin password (<code>CHEF_DELIVERY_ADMIN_PASSWORD</code>), or a Puppet server's admin password (<code>PUPPET_ADMIN_PASSWORD</code>). </p> <p> This operation is asynchronous. </p> <p> This operation can only be called for servers in <code>HEALTHY</code> or <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is raised. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

#### `AccountAttribute`

``` purescript
newtype AccountAttribute
  = AccountAttribute { "Name" :: NullOrUndefined (String), "Maximum" :: NullOrUndefined (Int), "Used" :: NullOrUndefined (Int) }
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
newAccountAttribute' :: ({ "Name" :: NullOrUndefined (String), "Maximum" :: NullOrUndefined (Int), "Used" :: NullOrUndefined (Int) } -> { "Name" :: NullOrUndefined (String), "Maximum" :: NullOrUndefined (Int), "Used" :: NullOrUndefined (Int) }) -> AccountAttribute
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
  = AssociateNodeResponse { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) }
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
newAssociateNodeResponse' :: ({ "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } -> { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) }) -> AssociateNodeResponse
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
  = Backup { "BackupArn" :: NullOrUndefined (String), "BackupId" :: NullOrUndefined (BackupId), "BackupType" :: NullOrUndefined (BackupType), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "S3DataSize" :: NullOrUndefined (Int), "S3DataUrl" :: NullOrUndefined (String), "S3LogUrl" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServerName" :: NullOrUndefined (ServerName), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (BackupStatus), "StatusDescription" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ToolsVersion" :: NullOrUndefined (String), "UserArn" :: NullOrUndefined (String) }
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
newBackup' :: ({ "BackupArn" :: NullOrUndefined (String), "BackupId" :: NullOrUndefined (BackupId), "BackupType" :: NullOrUndefined (BackupType), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "S3DataSize" :: NullOrUndefined (Int), "S3DataUrl" :: NullOrUndefined (String), "S3LogUrl" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServerName" :: NullOrUndefined (ServerName), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (BackupStatus), "StatusDescription" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ToolsVersion" :: NullOrUndefined (String), "UserArn" :: NullOrUndefined (String) } -> { "BackupArn" :: NullOrUndefined (String), "BackupId" :: NullOrUndefined (BackupId), "BackupType" :: NullOrUndefined (BackupType), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "S3DataSize" :: NullOrUndefined (Int), "S3DataUrl" :: NullOrUndefined (String), "S3LogUrl" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServerName" :: NullOrUndefined (ServerName), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (BackupStatus), "StatusDescription" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ToolsVersion" :: NullOrUndefined (String), "UserArn" :: NullOrUndefined (String) }) -> Backup
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
  = CreateBackupRequest { "ServerName" :: ServerName, "Description" :: NullOrUndefined (String) }
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
newCreateBackupRequest' :: ServerName -> ({ "ServerName" :: ServerName, "Description" :: NullOrUndefined (String) } -> { "ServerName" :: ServerName, "Description" :: NullOrUndefined (String) }) -> CreateBackupRequest
```

Constructs CreateBackupRequest's fields from required parameters

#### `CreateBackupResponse`

``` purescript
newtype CreateBackupResponse
  = CreateBackupResponse { "Backup" :: NullOrUndefined (Backup) }
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
newCreateBackupResponse' :: ({ "Backup" :: NullOrUndefined (Backup) } -> { "Backup" :: NullOrUndefined (Backup) }) -> CreateBackupResponse
```

Constructs CreateBackupResponse's fields from required parameters

#### `CreateServerRequest`

``` purescript
newtype CreateServerRequest
  = CreateServerRequest { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: NullOrUndefined (KeyPair), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: NullOrUndefined (Strings), "BackupId" :: NullOrUndefined (BackupId) }
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
newCreateServerRequest' :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> ({ "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: NullOrUndefined (KeyPair), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: NullOrUndefined (Strings), "BackupId" :: NullOrUndefined (BackupId) } -> { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineVersion" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition), "ServerName" :: ServerName, "InstanceProfileArn" :: InstanceProfileArn, "InstanceType" :: String, "KeyPair" :: NullOrUndefined (KeyPair), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: ServiceRoleArn, "SubnetIds" :: NullOrUndefined (Strings), "BackupId" :: NullOrUndefined (BackupId) }) -> CreateServerRequest
```

Constructs CreateServerRequest's fields from required parameters

#### `CreateServerResponse`

``` purescript
newtype CreateServerResponse
  = CreateServerResponse { "Server" :: NullOrUndefined (Server) }
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
newCreateServerResponse' :: ({ "Server" :: NullOrUndefined (Server) } -> { "Server" :: NullOrUndefined (Server) }) -> CreateServerResponse
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
  = DescribeAccountAttributesResponse { "Attributes" :: NullOrUndefined (AccountAttributes) }
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
newDescribeAccountAttributesResponse' :: ({ "Attributes" :: NullOrUndefined (AccountAttributes) } -> { "Attributes" :: NullOrUndefined (AccountAttributes) }) -> DescribeAccountAttributesResponse
```

Constructs DescribeAccountAttributesResponse's fields from required parameters

#### `DescribeBackupsRequest`

``` purescript
newtype DescribeBackupsRequest
  = DescribeBackupsRequest { "BackupId" :: NullOrUndefined (BackupId), "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newDescribeBackupsRequest' :: ({ "BackupId" :: NullOrUndefined (BackupId), "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "BackupId" :: NullOrUndefined (BackupId), "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> DescribeBackupsRequest
```

Constructs DescribeBackupsRequest's fields from required parameters

#### `DescribeBackupsResponse`

``` purescript
newtype DescribeBackupsResponse
  = DescribeBackupsResponse { "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (String) }
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
newDescribeBackupsResponse' :: ({ "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (String) } -> { "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (String) }) -> DescribeBackupsResponse
```

Constructs DescribeBackupsResponse's fields from required parameters

#### `DescribeEventsRequest`

``` purescript
newtype DescribeEventsRequest
  = DescribeEventsRequest { "ServerName" :: ServerName, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newDescribeEventsRequest' :: ServerName -> ({ "ServerName" :: ServerName, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ServerName" :: ServerName, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> DescribeEventsRequest
```

Constructs DescribeEventsRequest's fields from required parameters

#### `DescribeEventsResponse`

``` purescript
newtype DescribeEventsResponse
  = DescribeEventsResponse { "ServerEvents" :: NullOrUndefined (ServerEvents), "NextToken" :: NullOrUndefined (String) }
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
newDescribeEventsResponse' :: ({ "ServerEvents" :: NullOrUndefined (ServerEvents), "NextToken" :: NullOrUndefined (String) } -> { "ServerEvents" :: NullOrUndefined (ServerEvents), "NextToken" :: NullOrUndefined (String) }) -> DescribeEventsResponse
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
  = DescribeNodeAssociationStatusResponse { "NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus), "EngineAttributes" :: NullOrUndefined (EngineAttributes) }
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
newDescribeNodeAssociationStatusResponse' :: ({ "NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus), "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> { "NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus), "EngineAttributes" :: NullOrUndefined (EngineAttributes) }) -> DescribeNodeAssociationStatusResponse
```

Constructs DescribeNodeAssociationStatusResponse's fields from required parameters

#### `DescribeServersRequest`

``` purescript
newtype DescribeServersRequest
  = DescribeServersRequest { "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newDescribeServersRequest' :: ({ "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ServerName" :: NullOrUndefined (ServerName), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> DescribeServersRequest
```

Constructs DescribeServersRequest's fields from required parameters

#### `DescribeServersResponse`

``` purescript
newtype DescribeServersResponse
  = DescribeServersResponse { "Servers" :: NullOrUndefined (Servers), "NextToken" :: NullOrUndefined (String) }
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
newDescribeServersResponse' :: ({ "Servers" :: NullOrUndefined (Servers), "NextToken" :: NullOrUndefined (String) } -> { "Servers" :: NullOrUndefined (Servers), "NextToken" :: NullOrUndefined (String) }) -> DescribeServersResponse
```

Constructs DescribeServersResponse's fields from required parameters

#### `DisassociateNodeRequest`

``` purescript
newtype DisassociateNodeRequest
  = DisassociateNodeRequest { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) }
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
newDisassociateNodeRequest' :: NodeName -> ServerName -> ({ "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> { "ServerName" :: ServerName, "NodeName" :: NodeName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) }) -> DisassociateNodeRequest
```

Constructs DisassociateNodeRequest's fields from required parameters

#### `DisassociateNodeResponse`

``` purescript
newtype DisassociateNodeResponse
  = DisassociateNodeResponse { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) }
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
newDisassociateNodeResponse' :: ({ "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } -> { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) }) -> DisassociateNodeResponse
```

Constructs DisassociateNodeResponse's fields from required parameters

#### `EngineAttribute`

``` purescript
newtype EngineAttribute
  = EngineAttribute { "Name" :: NullOrUndefined (EngineAttributeName), "Value" :: NullOrUndefined (EngineAttributeValue) }
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
newEngineAttribute' :: ({ "Name" :: NullOrUndefined (EngineAttributeName), "Value" :: NullOrUndefined (EngineAttributeValue) } -> { "Name" :: NullOrUndefined (EngineAttributeName), "Value" :: NullOrUndefined (EngineAttributeValue) }) -> EngineAttribute
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
  = InvalidNextTokenException { "Message" :: NullOrUndefined (String) }
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
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `InvalidStateException`

``` purescript
newtype InvalidStateException
  = InvalidStateException { "Message" :: NullOrUndefined (String) }
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
newInvalidStateException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidStateException
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
  = LimitExceededException { "Message" :: NullOrUndefined (String) }
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
newLimitExceededException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> LimitExceededException
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
  = ResourceAlreadyExistsException { "Message" :: NullOrUndefined (String) }
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
newResourceAlreadyExistsException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message" :: NullOrUndefined (String) }
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
newResourceNotFoundException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RestoreServerRequest`

``` purescript
newtype RestoreServerRequest
  = RestoreServerRequest { "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (KeyPair) }
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
newRestoreServerRequest' :: BackupId -> ServerName -> ({ "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (KeyPair) } -> { "BackupId" :: BackupId, "ServerName" :: ServerName, "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (KeyPair) }) -> RestoreServerRequest
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
  = Server { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "CloudFormationStackArn" :: NullOrUndefined (String), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ServerStatus), "StatusReason" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ServerArn" :: NullOrUndefined (String) }
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
newServer' :: ({ "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "CloudFormationStackArn" :: NullOrUndefined (String), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ServerStatus), "StatusReason" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ServerArn" :: NullOrUndefined (String) } -> { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "CloudFormationStackArn" :: NullOrUndefined (String), "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "EngineModel" :: NullOrUndefined (String), "EngineAttributes" :: NullOrUndefined (EngineAttributes), "EngineVersion" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "KeyPair" :: NullOrUndefined (String), "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus), "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition), "SecurityGroupIds" :: NullOrUndefined (Strings), "ServiceRoleArn" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ServerStatus), "StatusReason" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (Strings), "ServerArn" :: NullOrUndefined (String) }) -> Server
```

Constructs Server's fields from required parameters

#### `ServerEvent`

``` purescript
newtype ServerEvent
  = ServerEvent { "CreatedAt" :: NullOrUndefined (Timestamp), "ServerName" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogUrl" :: NullOrUndefined (String) }
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
newServerEvent' :: ({ "CreatedAt" :: NullOrUndefined (Timestamp), "ServerName" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogUrl" :: NullOrUndefined (String) } -> { "CreatedAt" :: NullOrUndefined (Timestamp), "ServerName" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogUrl" :: NullOrUndefined (String) }) -> ServerEvent
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
  = StartMaintenanceRequest { "ServerName" :: ServerName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) }
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
newStartMaintenanceRequest' :: ServerName -> ({ "ServerName" :: ServerName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> { "ServerName" :: ServerName, "EngineAttributes" :: NullOrUndefined (EngineAttributes) }) -> StartMaintenanceRequest
```

Constructs StartMaintenanceRequest's fields from required parameters

#### `StartMaintenanceResponse`

``` purescript
newtype StartMaintenanceResponse
  = StartMaintenanceResponse { "Server" :: NullOrUndefined (Server) }
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
newStartMaintenanceResponse' :: ({ "Server" :: NullOrUndefined (Server) } -> { "Server" :: NullOrUndefined (Server) }) -> StartMaintenanceResponse
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
  = UpdateServerEngineAttributesRequest { "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: NullOrUndefined (AttributeValue) }
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
newUpdateServerEngineAttributesRequest' :: AttributeName -> ServerName -> ({ "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: NullOrUndefined (AttributeValue) } -> { "ServerName" :: ServerName, "AttributeName" :: AttributeName, "AttributeValue" :: NullOrUndefined (AttributeValue) }) -> UpdateServerEngineAttributesRequest
```

Constructs UpdateServerEngineAttributesRequest's fields from required parameters

#### `UpdateServerEngineAttributesResponse`

``` purescript
newtype UpdateServerEngineAttributesResponse
  = UpdateServerEngineAttributesResponse { "Server" :: NullOrUndefined (Server) }
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
newUpdateServerEngineAttributesResponse' :: ({ "Server" :: NullOrUndefined (Server) } -> { "Server" :: NullOrUndefined (Server) }) -> UpdateServerEngineAttributesResponse
```

Constructs UpdateServerEngineAttributesResponse's fields from required parameters

#### `UpdateServerRequest`

``` purescript
newtype UpdateServerRequest
  = UpdateServerRequest { "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) }
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
newUpdateServerRequest' :: ServerName -> ({ "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) } -> { "DisableAutomatedBackup" :: NullOrUndefined (Boolean), "BackupRetentionCount" :: NullOrUndefined (Int), "ServerName" :: ServerName, "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition), "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) }) -> UpdateServerRequest
```

Constructs UpdateServerRequest's fields from required parameters

#### `UpdateServerResponse`

``` purescript
newtype UpdateServerResponse
  = UpdateServerResponse { "Server" :: NullOrUndefined (Server) }
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
newUpdateServerResponse' :: ({ "Server" :: NullOrUndefined (Server) } -> { "Server" :: NullOrUndefined (Server) }) -> UpdateServerResponse
```

Constructs UpdateServerResponse's fields from required parameters

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException { "Message" :: NullOrUndefined (String) }
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
newValidationException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ValidationException
```

Constructs ValidationException's fields from required parameters


