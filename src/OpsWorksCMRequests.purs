
module AWS.OpsWorksCM.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.OpsWorksCM as OpsWorksCM
import AWS.OpsWorksCM.Types as OpsWorksCMTypes


-- | <p> Associates a new node with the server. For more information about how to disassociate a node, see <a>DisassociateNode</a>.</p> <p> On a Chef server: This command is an alternative to <code>knife bootstrap</code>.</p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>CHEF_ORGANIZATION</i>,Value=default" "Name=<i>CHEF_NODE_PUBLIC_KEY</i>,Value=<i>public-key-pem</i>"</code> </p> <p> On a Puppet server, this command is an alternative to the <code>puppet cert sign</code> command that signs a Puppet node CSR. </p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>PUPPET_NODE_CSR</i>,Value=<i>csr-pem</i>"</code> </p> <p> A node can can only be associated with servers that are in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance. </p>
associateNode :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.AssociateNodeRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.AssociateNodeResponse
associateNode (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateNode"


-- | <p> Creates an application-level backup of a server. While the server is in the <code>BACKING_UP</code> state, the server cannot be changed, and no additional backup can be created. </p> <p> Backups can be created for servers in <code>RUNNING</code>, <code>HEALTHY</code>, and <code>UNHEALTHY</code> states. By default, you can create a maximum of 50 manual backups. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when the maximum number of manual backups is reached. An <code>InvalidStateException</code> is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A <code>ResourceNotFoundException</code> is thrown when the server is not found. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>
createBackup :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.CreateBackupRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.CreateBackupResponse
createBackup (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createBackup"


-- | <p> Creates and immedately starts a new server. The server is ready to use when it is in the <code>HEALTHY</code> state. By default, you can create a maximum of 10 servers. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when you have created the maximum number of servers (10). A <code>ResourceAlreadyExistsException</code> is thrown when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p> <p> If you do not specify a security group by adding the <code>SecurityGroupIds</code> parameter, AWS OpsWorks creates a new security group. </p> <p> <i>Chef Automate:</i> The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p> <i>Puppet Enterprise:</i> The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p>By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console. </p>
createServer :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.CreateServerRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.CreateServerResponse
createServer (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createServer"


-- | <p> Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a backup deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>
deleteBackup :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DeleteBackupRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DeleteBackupResponse
deleteBackup (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBackup"


-- | <p> Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to <code>DELETING</code>. After the server is deleted, it is no longer returned by <code>DescribeServer</code> requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a server deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p> <p> </p>
deleteServer :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DeleteServerRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DeleteServerResponse
deleteServer (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteServer"


-- | <p> Describes your account attributes, and creates requests to increase limits before they are reached or exceeded. </p> <p> This operation is synchronous. </p>
describeAccountAttributes :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DescribeAccountAttributesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DescribeAccountAttributesResponse
describeAccountAttributes (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAccountAttributes"


-- | <p> Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
describeBackups :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DescribeBackupsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DescribeBackupsResponse
describeBackups (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBackups"


-- | <p> Describes events for a specified server. Results are ordered by time, with newest events first. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
describeEvents :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DescribeEventsResponse
describeEvents (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEvents"


-- | <p> Returns the current status of an existing association or disassociation request. </p> <p> A <code>ResourceNotFoundException</code> is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
describeNodeAssociationStatus :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DescribeNodeAssociationStatusRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DescribeNodeAssociationStatusResponse
describeNodeAssociationStatus (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNodeAssociationStatus"


-- | <p> Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
describeServers :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DescribeServersRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DescribeServersResponse
describeServers (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeServers"


-- | <p> Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see <a>AssociateNode</a>. </p> <p>A node can can only be disassociated from a server that is in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
disassociateNode :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.DisassociateNodeRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.DisassociateNodeResponse
disassociateNode (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateNode"


-- | <p> Restores a backup to a server that is in a <code>CONNECTION_LOST</code>, <code>HEALTHY</code>, <code>RUNNING</code>, <code>UNHEALTHY</code>, or <code>TERMINATED</code> state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
restoreServer :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.RestoreServerRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.RestoreServerResponse
restoreServer (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "restoreServer"


-- | <p> Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an <code>UNDER_MAINTENANCE</code> state while maintenance is in progress. </p> <p> Maintenance can only be started on servers in <code>HEALTHY</code> and <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
startMaintenance :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.StartMaintenanceRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.StartMaintenanceResponse
startMaintenance (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startMaintenance"


-- | <p> Updates settings for a server. </p> <p> This operation is synchronous. </p>
updateServer :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.UpdateServerRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.UpdateServerResponse
updateServer (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateServer"


-- | <p> Updates engine-specific attributes on a specified server. The server enters the <code>MODIFYING</code> state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's private key (<code>CHEF_PIVOTAL_KEY</code>), a Chef server's admin password (<code>CHEF_DELIVERY_ADMIN_PASSWORD</code>), or a Puppet server's admin password (<code>PUPPET_ADMIN_PASSWORD</code>). </p> <p> This operation is asynchronous. </p> <p> This operation can only be called for servers in <code>HEALTHY</code> or <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is raised. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>
updateServerEngineAttributes :: forall eff. OpsWorksCM.Service -> OpsWorksCMTypes.UpdateServerEngineAttributesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksCMTypes.UpdateServerEngineAttributesResponse
updateServerEngineAttributes (OpsWorksCM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateServerEngineAttributes"
