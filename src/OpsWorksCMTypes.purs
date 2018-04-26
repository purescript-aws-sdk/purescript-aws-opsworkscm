
module AWS.OpsWorksCM.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Stores account attributes. </p>
newtype AccountAttribute = AccountAttribute 
  { "Name" :: Maybe (String)
  , "Maximum" :: Maybe (Int)
  , "Used" :: Maybe (Int)
  }
derive instance newtypeAccountAttribute :: Newtype AccountAttribute _
derive instance repGenericAccountAttribute :: Generic AccountAttribute _
instance showAccountAttribute :: Show AccountAttribute where show = genericShow
instance decodeAccountAttribute :: Decode AccountAttribute where decode = genericDecode options
instance encodeAccountAttribute :: Encode AccountAttribute where encode = genericEncode options

-- | Constructs AccountAttribute from required parameters
newAccountAttribute :: AccountAttribute
newAccountAttribute  = AccountAttribute { "Maximum": Nothing, "Name": Nothing, "Used": Nothing }

-- | Constructs AccountAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountAttribute' :: ( { "Name" :: Maybe (String) , "Maximum" :: Maybe (Int) , "Used" :: Maybe (Int) } -> {"Name" :: Maybe (String) , "Maximum" :: Maybe (Int) , "Used" :: Maybe (Int) } ) -> AccountAttribute
newAccountAttribute'  customize = (AccountAttribute <<< customize) { "Maximum": Nothing, "Name": Nothing, "Used": Nothing }



-- | <p> A list of individual account attributes. </p>
newtype AccountAttributes = AccountAttributes (Array AccountAttribute)
derive instance newtypeAccountAttributes :: Newtype AccountAttributes _
derive instance repGenericAccountAttributes :: Generic AccountAttributes _
instance showAccountAttributes :: Show AccountAttributes where show = genericShow
instance decodeAccountAttributes :: Decode AccountAttributes where decode = genericDecode options
instance encodeAccountAttributes :: Encode AccountAttributes where encode = genericEncode options



newtype AssociateNodeRequest = AssociateNodeRequest 
  { "ServerName" :: (ServerName)
  , "NodeName" :: (NodeName)
  , "EngineAttributes" :: (EngineAttributes)
  }
derive instance newtypeAssociateNodeRequest :: Newtype AssociateNodeRequest _
derive instance repGenericAssociateNodeRequest :: Generic AssociateNodeRequest _
instance showAssociateNodeRequest :: Show AssociateNodeRequest where show = genericShow
instance decodeAssociateNodeRequest :: Decode AssociateNodeRequest where decode = genericDecode options
instance encodeAssociateNodeRequest :: Encode AssociateNodeRequest where encode = genericEncode options

-- | Constructs AssociateNodeRequest from required parameters
newAssociateNodeRequest :: EngineAttributes -> NodeName -> ServerName -> AssociateNodeRequest
newAssociateNodeRequest _EngineAttributes _NodeName _ServerName = AssociateNodeRequest { "EngineAttributes": _EngineAttributes, "NodeName": _NodeName, "ServerName": _ServerName }

-- | Constructs AssociateNodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateNodeRequest' :: EngineAttributes -> NodeName -> ServerName -> ( { "ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: (EngineAttributes) } -> {"ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: (EngineAttributes) } ) -> AssociateNodeRequest
newAssociateNodeRequest' _EngineAttributes _NodeName _ServerName customize = (AssociateNodeRequest <<< customize) { "EngineAttributes": _EngineAttributes, "NodeName": _NodeName, "ServerName": _ServerName }



newtype AssociateNodeResponse = AssociateNodeResponse 
  { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken)
  }
derive instance newtypeAssociateNodeResponse :: Newtype AssociateNodeResponse _
derive instance repGenericAssociateNodeResponse :: Generic AssociateNodeResponse _
instance showAssociateNodeResponse :: Show AssociateNodeResponse where show = genericShow
instance decodeAssociateNodeResponse :: Decode AssociateNodeResponse where decode = genericDecode options
instance encodeAssociateNodeResponse :: Encode AssociateNodeResponse where encode = genericEncode options

-- | Constructs AssociateNodeResponse from required parameters
newAssociateNodeResponse :: AssociateNodeResponse
newAssociateNodeResponse  = AssociateNodeResponse { "NodeAssociationStatusToken": Nothing }

-- | Constructs AssociateNodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateNodeResponse' :: ( { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } -> {"NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } ) -> AssociateNodeResponse
newAssociateNodeResponse'  customize = (AssociateNodeResponse <<< customize) { "NodeAssociationStatusToken": Nothing }



newtype AttributeName = AttributeName String
derive instance newtypeAttributeName :: Newtype AttributeName _
derive instance repGenericAttributeName :: Generic AttributeName _
instance showAttributeName :: Show AttributeName where show = genericShow
instance decodeAttributeName :: Decode AttributeName where decode = genericDecode options
instance encodeAttributeName :: Encode AttributeName where encode = genericEncode options



newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options



-- | <p>Describes a single backup. </p>
newtype Backup = Backup 
  { "BackupArn" :: Maybe (String)
  , "BackupId" :: Maybe (BackupId)
  , "BackupType" :: Maybe (BackupType)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "Description" :: Maybe (String)
  , "Engine" :: Maybe (String)
  , "EngineModel" :: Maybe (String)
  , "EngineVersion" :: Maybe (String)
  , "InstanceProfileArn" :: Maybe (String)
  , "InstanceType" :: Maybe (String)
  , "KeyPair" :: Maybe (String)
  , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition)
  , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition)
  , "S3DataSize" :: Maybe (Int)
  , "S3DataUrl" :: Maybe (String)
  , "S3LogUrl" :: Maybe (String)
  , "SecurityGroupIds" :: Maybe (Strings)
  , "ServerName" :: Maybe (ServerName)
  , "ServiceRoleArn" :: Maybe (String)
  , "Status" :: Maybe (BackupStatus)
  , "StatusDescription" :: Maybe (String)
  , "SubnetIds" :: Maybe (Strings)
  , "ToolsVersion" :: Maybe (String)
  , "UserArn" :: Maybe (String)
  }
derive instance newtypeBackup :: Newtype Backup _
derive instance repGenericBackup :: Generic Backup _
instance showBackup :: Show Backup where show = genericShow
instance decodeBackup :: Decode Backup where decode = genericDecode options
instance encodeBackup :: Encode Backup where encode = genericEncode options

-- | Constructs Backup from required parameters
newBackup :: Backup
newBackup  = Backup { "BackupArn": Nothing, "BackupId": Nothing, "BackupType": Nothing, "CreatedAt": Nothing, "Description": Nothing, "Engine": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "KeyPair": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "S3DataSize": Nothing, "S3DataUrl": Nothing, "S3LogUrl": Nothing, "SecurityGroupIds": Nothing, "ServerName": Nothing, "ServiceRoleArn": Nothing, "Status": Nothing, "StatusDescription": Nothing, "SubnetIds": Nothing, "ToolsVersion": Nothing, "UserArn": Nothing }

-- | Constructs Backup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBackup' :: ( { "BackupArn" :: Maybe (String) , "BackupId" :: Maybe (BackupId) , "BackupType" :: Maybe (BackupType) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineVersion" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (String) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "S3DataSize" :: Maybe (Int) , "S3DataUrl" :: Maybe (String) , "S3LogUrl" :: Maybe (String) , "SecurityGroupIds" :: Maybe (Strings) , "ServerName" :: Maybe (ServerName) , "ServiceRoleArn" :: Maybe (String) , "Status" :: Maybe (BackupStatus) , "StatusDescription" :: Maybe (String) , "SubnetIds" :: Maybe (Strings) , "ToolsVersion" :: Maybe (String) , "UserArn" :: Maybe (String) } -> {"BackupArn" :: Maybe (String) , "BackupId" :: Maybe (BackupId) , "BackupType" :: Maybe (BackupType) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineVersion" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (String) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "S3DataSize" :: Maybe (Int) , "S3DataUrl" :: Maybe (String) , "S3LogUrl" :: Maybe (String) , "SecurityGroupIds" :: Maybe (Strings) , "ServerName" :: Maybe (ServerName) , "ServiceRoleArn" :: Maybe (String) , "Status" :: Maybe (BackupStatus) , "StatusDescription" :: Maybe (String) , "SubnetIds" :: Maybe (Strings) , "ToolsVersion" :: Maybe (String) , "UserArn" :: Maybe (String) } ) -> Backup
newBackup'  customize = (Backup <<< customize) { "BackupArn": Nothing, "BackupId": Nothing, "BackupType": Nothing, "CreatedAt": Nothing, "Description": Nothing, "Engine": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "KeyPair": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "S3DataSize": Nothing, "S3DataUrl": Nothing, "S3LogUrl": Nothing, "SecurityGroupIds": Nothing, "ServerName": Nothing, "ServiceRoleArn": Nothing, "Status": Nothing, "StatusDescription": Nothing, "SubnetIds": Nothing, "ToolsVersion": Nothing, "UserArn": Nothing }



newtype BackupId = BackupId String
derive instance newtypeBackupId :: Newtype BackupId _
derive instance repGenericBackupId :: Generic BackupId _
instance showBackupId :: Show BackupId where show = genericShow
instance decodeBackupId :: Decode BackupId where decode = genericDecode options
instance encodeBackupId :: Encode BackupId where encode = genericEncode options



newtype BackupRetentionCountDefinition = BackupRetentionCountDefinition Int
derive instance newtypeBackupRetentionCountDefinition :: Newtype BackupRetentionCountDefinition _
derive instance repGenericBackupRetentionCountDefinition :: Generic BackupRetentionCountDefinition _
instance showBackupRetentionCountDefinition :: Show BackupRetentionCountDefinition where show = genericShow
instance decodeBackupRetentionCountDefinition :: Decode BackupRetentionCountDefinition where decode = genericDecode options
instance encodeBackupRetentionCountDefinition :: Encode BackupRetentionCountDefinition where encode = genericEncode options



newtype BackupStatus = BackupStatus String
derive instance newtypeBackupStatus :: Newtype BackupStatus _
derive instance repGenericBackupStatus :: Generic BackupStatus _
instance showBackupStatus :: Show BackupStatus where show = genericShow
instance decodeBackupStatus :: Decode BackupStatus where decode = genericDecode options
instance encodeBackupStatus :: Encode BackupStatus where encode = genericEncode options



newtype BackupType = BackupType String
derive instance newtypeBackupType :: Newtype BackupType _
derive instance repGenericBackupType :: Generic BackupType _
instance showBackupType :: Show BackupType where show = genericShow
instance decodeBackupType :: Decode BackupType where decode = genericDecode options
instance encodeBackupType :: Encode BackupType where encode = genericEncode options



newtype Backups = Backups (Array Backup)
derive instance newtypeBackups :: Newtype Backups _
derive instance repGenericBackups :: Generic Backups _
instance showBackups :: Show Backups where show = genericShow
instance decodeBackups :: Decode Backups where decode = genericDecode options
instance encodeBackups :: Encode Backups where encode = genericEncode options



newtype CreateBackupRequest = CreateBackupRequest 
  { "ServerName" :: (ServerName)
  , "Description" :: Maybe (String)
  }
derive instance newtypeCreateBackupRequest :: Newtype CreateBackupRequest _
derive instance repGenericCreateBackupRequest :: Generic CreateBackupRequest _
instance showCreateBackupRequest :: Show CreateBackupRequest where show = genericShow
instance decodeCreateBackupRequest :: Decode CreateBackupRequest where decode = genericDecode options
instance encodeCreateBackupRequest :: Encode CreateBackupRequest where encode = genericEncode options

-- | Constructs CreateBackupRequest from required parameters
newCreateBackupRequest :: ServerName -> CreateBackupRequest
newCreateBackupRequest _ServerName = CreateBackupRequest { "ServerName": _ServerName, "Description": Nothing }

-- | Constructs CreateBackupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBackupRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "Description" :: Maybe (String) } -> {"ServerName" :: (ServerName) , "Description" :: Maybe (String) } ) -> CreateBackupRequest
newCreateBackupRequest' _ServerName customize = (CreateBackupRequest <<< customize) { "ServerName": _ServerName, "Description": Nothing }



newtype CreateBackupResponse = CreateBackupResponse 
  { "Backup" :: Maybe (Backup)
  }
derive instance newtypeCreateBackupResponse :: Newtype CreateBackupResponse _
derive instance repGenericCreateBackupResponse :: Generic CreateBackupResponse _
instance showCreateBackupResponse :: Show CreateBackupResponse where show = genericShow
instance decodeCreateBackupResponse :: Decode CreateBackupResponse where decode = genericDecode options
instance encodeCreateBackupResponse :: Encode CreateBackupResponse where encode = genericEncode options

-- | Constructs CreateBackupResponse from required parameters
newCreateBackupResponse :: CreateBackupResponse
newCreateBackupResponse  = CreateBackupResponse { "Backup": Nothing }

-- | Constructs CreateBackupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBackupResponse' :: ( { "Backup" :: Maybe (Backup) } -> {"Backup" :: Maybe (Backup) } ) -> CreateBackupResponse
newCreateBackupResponse'  customize = (CreateBackupResponse <<< customize) { "Backup": Nothing }



newtype CreateServerRequest = CreateServerRequest 
  { "AssociatePublicIpAddress" :: Maybe (Boolean)
  , "DisableAutomatedBackup" :: Maybe (Boolean)
  , "Engine" :: Maybe (String)
  , "EngineModel" :: Maybe (String)
  , "EngineVersion" :: Maybe (String)
  , "EngineAttributes" :: Maybe (EngineAttributes)
  , "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition)
  , "ServerName" :: (ServerName)
  , "InstanceProfileArn" :: (InstanceProfileArn)
  , "InstanceType" :: (String)
  , "KeyPair" :: Maybe (KeyPair)
  , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition)
  , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition)
  , "SecurityGroupIds" :: Maybe (Strings)
  , "ServiceRoleArn" :: (ServiceRoleArn)
  , "SubnetIds" :: Maybe (Strings)
  , "BackupId" :: Maybe (BackupId)
  }
derive instance newtypeCreateServerRequest :: Newtype CreateServerRequest _
derive instance repGenericCreateServerRequest :: Generic CreateServerRequest _
instance showCreateServerRequest :: Show CreateServerRequest where show = genericShow
instance decodeCreateServerRequest :: Decode CreateServerRequest where decode = genericDecode options
instance encodeCreateServerRequest :: Encode CreateServerRequest where encode = genericEncode options

-- | Constructs CreateServerRequest from required parameters
newCreateServerRequest :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> CreateServerRequest
newCreateServerRequest _InstanceProfileArn _InstanceType _ServerName _ServiceRoleArn = CreateServerRequest { "InstanceProfileArn": _InstanceProfileArn, "InstanceType": _InstanceType, "ServerName": _ServerName, "ServiceRoleArn": _ServiceRoleArn, "AssociatePublicIpAddress": Nothing, "BackupId": Nothing, "BackupRetentionCount": Nothing, "DisableAutomatedBackup": Nothing, "Engine": Nothing, "EngineAttributes": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "KeyPair": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "SubnetIds": Nothing }

-- | Constructs CreateServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServerRequest' :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> ( { "AssociatePublicIpAddress" :: Maybe (Boolean) , "DisableAutomatedBackup" :: Maybe (Boolean) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineVersion" :: Maybe (String) , "EngineAttributes" :: Maybe (EngineAttributes) , "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition) , "ServerName" :: (ServerName) , "InstanceProfileArn" :: (InstanceProfileArn) , "InstanceType" :: (String) , "KeyPair" :: Maybe (KeyPair) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "SecurityGroupIds" :: Maybe (Strings) , "ServiceRoleArn" :: (ServiceRoleArn) , "SubnetIds" :: Maybe (Strings) , "BackupId" :: Maybe (BackupId) } -> {"AssociatePublicIpAddress" :: Maybe (Boolean) , "DisableAutomatedBackup" :: Maybe (Boolean) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineVersion" :: Maybe (String) , "EngineAttributes" :: Maybe (EngineAttributes) , "BackupRetentionCount" :: Maybe (BackupRetentionCountDefinition) , "ServerName" :: (ServerName) , "InstanceProfileArn" :: (InstanceProfileArn) , "InstanceType" :: (String) , "KeyPair" :: Maybe (KeyPair) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "SecurityGroupIds" :: Maybe (Strings) , "ServiceRoleArn" :: (ServiceRoleArn) , "SubnetIds" :: Maybe (Strings) , "BackupId" :: Maybe (BackupId) } ) -> CreateServerRequest
newCreateServerRequest' _InstanceProfileArn _InstanceType _ServerName _ServiceRoleArn customize = (CreateServerRequest <<< customize) { "InstanceProfileArn": _InstanceProfileArn, "InstanceType": _InstanceType, "ServerName": _ServerName, "ServiceRoleArn": _ServiceRoleArn, "AssociatePublicIpAddress": Nothing, "BackupId": Nothing, "BackupRetentionCount": Nothing, "DisableAutomatedBackup": Nothing, "Engine": Nothing, "EngineAttributes": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "KeyPair": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "SubnetIds": Nothing }



newtype CreateServerResponse = CreateServerResponse 
  { "Server" :: Maybe (Server)
  }
derive instance newtypeCreateServerResponse :: Newtype CreateServerResponse _
derive instance repGenericCreateServerResponse :: Generic CreateServerResponse _
instance showCreateServerResponse :: Show CreateServerResponse where show = genericShow
instance decodeCreateServerResponse :: Decode CreateServerResponse where decode = genericDecode options
instance encodeCreateServerResponse :: Encode CreateServerResponse where encode = genericEncode options

-- | Constructs CreateServerResponse from required parameters
newCreateServerResponse :: CreateServerResponse
newCreateServerResponse  = CreateServerResponse { "Server": Nothing }

-- | Constructs CreateServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServerResponse' :: ( { "Server" :: Maybe (Server) } -> {"Server" :: Maybe (Server) } ) -> CreateServerResponse
newCreateServerResponse'  customize = (CreateServerResponse <<< customize) { "Server": Nothing }



newtype DeleteBackupRequest = DeleteBackupRequest 
  { "BackupId" :: (BackupId)
  }
derive instance newtypeDeleteBackupRequest :: Newtype DeleteBackupRequest _
derive instance repGenericDeleteBackupRequest :: Generic DeleteBackupRequest _
instance showDeleteBackupRequest :: Show DeleteBackupRequest where show = genericShow
instance decodeDeleteBackupRequest :: Decode DeleteBackupRequest where decode = genericDecode options
instance encodeDeleteBackupRequest :: Encode DeleteBackupRequest where encode = genericEncode options

-- | Constructs DeleteBackupRequest from required parameters
newDeleteBackupRequest :: BackupId -> DeleteBackupRequest
newDeleteBackupRequest _BackupId = DeleteBackupRequest { "BackupId": _BackupId }

-- | Constructs DeleteBackupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBackupRequest' :: BackupId -> ( { "BackupId" :: (BackupId) } -> {"BackupId" :: (BackupId) } ) -> DeleteBackupRequest
newDeleteBackupRequest' _BackupId customize = (DeleteBackupRequest <<< customize) { "BackupId": _BackupId }



newtype DeleteBackupResponse = DeleteBackupResponse Types.NoArguments
derive instance newtypeDeleteBackupResponse :: Newtype DeleteBackupResponse _
derive instance repGenericDeleteBackupResponse :: Generic DeleteBackupResponse _
instance showDeleteBackupResponse :: Show DeleteBackupResponse where show = genericShow
instance decodeDeleteBackupResponse :: Decode DeleteBackupResponse where decode = genericDecode options
instance encodeDeleteBackupResponse :: Encode DeleteBackupResponse where encode = genericEncode options



newtype DeleteServerRequest = DeleteServerRequest 
  { "ServerName" :: (ServerName)
  }
derive instance newtypeDeleteServerRequest :: Newtype DeleteServerRequest _
derive instance repGenericDeleteServerRequest :: Generic DeleteServerRequest _
instance showDeleteServerRequest :: Show DeleteServerRequest where show = genericShow
instance decodeDeleteServerRequest :: Decode DeleteServerRequest where decode = genericDecode options
instance encodeDeleteServerRequest :: Encode DeleteServerRequest where encode = genericEncode options

-- | Constructs DeleteServerRequest from required parameters
newDeleteServerRequest :: ServerName -> DeleteServerRequest
newDeleteServerRequest _ServerName = DeleteServerRequest { "ServerName": _ServerName }

-- | Constructs DeleteServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServerRequest' :: ServerName -> ( { "ServerName" :: (ServerName) } -> {"ServerName" :: (ServerName) } ) -> DeleteServerRequest
newDeleteServerRequest' _ServerName customize = (DeleteServerRequest <<< customize) { "ServerName": _ServerName }



newtype DeleteServerResponse = DeleteServerResponse Types.NoArguments
derive instance newtypeDeleteServerResponse :: Newtype DeleteServerResponse _
derive instance repGenericDeleteServerResponse :: Generic DeleteServerResponse _
instance showDeleteServerResponse :: Show DeleteServerResponse where show = genericShow
instance decodeDeleteServerResponse :: Decode DeleteServerResponse where decode = genericDecode options
instance encodeDeleteServerResponse :: Encode DeleteServerResponse where encode = genericEncode options



newtype DescribeAccountAttributesRequest = DescribeAccountAttributesRequest Types.NoArguments
derive instance newtypeDescribeAccountAttributesRequest :: Newtype DescribeAccountAttributesRequest _
derive instance repGenericDescribeAccountAttributesRequest :: Generic DescribeAccountAttributesRequest _
instance showDescribeAccountAttributesRequest :: Show DescribeAccountAttributesRequest where show = genericShow
instance decodeDescribeAccountAttributesRequest :: Decode DescribeAccountAttributesRequest where decode = genericDecode options
instance encodeDescribeAccountAttributesRequest :: Encode DescribeAccountAttributesRequest where encode = genericEncode options



newtype DescribeAccountAttributesResponse = DescribeAccountAttributesResponse 
  { "Attributes" :: Maybe (AccountAttributes)
  }
derive instance newtypeDescribeAccountAttributesResponse :: Newtype DescribeAccountAttributesResponse _
derive instance repGenericDescribeAccountAttributesResponse :: Generic DescribeAccountAttributesResponse _
instance showDescribeAccountAttributesResponse :: Show DescribeAccountAttributesResponse where show = genericShow
instance decodeDescribeAccountAttributesResponse :: Decode DescribeAccountAttributesResponse where decode = genericDecode options
instance encodeDescribeAccountAttributesResponse :: Encode DescribeAccountAttributesResponse where encode = genericEncode options

-- | Constructs DescribeAccountAttributesResponse from required parameters
newDescribeAccountAttributesResponse :: DescribeAccountAttributesResponse
newDescribeAccountAttributesResponse  = DescribeAccountAttributesResponse { "Attributes": Nothing }

-- | Constructs DescribeAccountAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountAttributesResponse' :: ( { "Attributes" :: Maybe (AccountAttributes) } -> {"Attributes" :: Maybe (AccountAttributes) } ) -> DescribeAccountAttributesResponse
newDescribeAccountAttributesResponse'  customize = (DescribeAccountAttributesResponse <<< customize) { "Attributes": Nothing }



newtype DescribeBackupsRequest = DescribeBackupsRequest 
  { "BackupId" :: Maybe (BackupId)
  , "ServerName" :: Maybe (ServerName)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeDescribeBackupsRequest :: Newtype DescribeBackupsRequest _
derive instance repGenericDescribeBackupsRequest :: Generic DescribeBackupsRequest _
instance showDescribeBackupsRequest :: Show DescribeBackupsRequest where show = genericShow
instance decodeDescribeBackupsRequest :: Decode DescribeBackupsRequest where decode = genericDecode options
instance encodeDescribeBackupsRequest :: Encode DescribeBackupsRequest where encode = genericEncode options

-- | Constructs DescribeBackupsRequest from required parameters
newDescribeBackupsRequest :: DescribeBackupsRequest
newDescribeBackupsRequest  = DescribeBackupsRequest { "BackupId": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServerName": Nothing }

-- | Constructs DescribeBackupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsRequest' :: ( { "BackupId" :: Maybe (BackupId) , "ServerName" :: Maybe (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"BackupId" :: Maybe (BackupId) , "ServerName" :: Maybe (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> DescribeBackupsRequest
newDescribeBackupsRequest'  customize = (DescribeBackupsRequest <<< customize) { "BackupId": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServerName": Nothing }



newtype DescribeBackupsResponse = DescribeBackupsResponse 
  { "Backups" :: Maybe (Backups)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeBackupsResponse :: Newtype DescribeBackupsResponse _
derive instance repGenericDescribeBackupsResponse :: Generic DescribeBackupsResponse _
instance showDescribeBackupsResponse :: Show DescribeBackupsResponse where show = genericShow
instance decodeDescribeBackupsResponse :: Decode DescribeBackupsResponse where decode = genericDecode options
instance encodeDescribeBackupsResponse :: Encode DescribeBackupsResponse where encode = genericEncode options

-- | Constructs DescribeBackupsResponse from required parameters
newDescribeBackupsResponse :: DescribeBackupsResponse
newDescribeBackupsResponse  = DescribeBackupsResponse { "Backups": Nothing, "NextToken": Nothing }

-- | Constructs DescribeBackupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsResponse' :: ( { "Backups" :: Maybe (Backups) , "NextToken" :: Maybe (String) } -> {"Backups" :: Maybe (Backups) , "NextToken" :: Maybe (String) } ) -> DescribeBackupsResponse
newDescribeBackupsResponse'  customize = (DescribeBackupsResponse <<< customize) { "Backups": Nothing, "NextToken": Nothing }



newtype DescribeEventsRequest = DescribeEventsRequest 
  { "ServerName" :: (ServerName)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeDescribeEventsRequest :: Newtype DescribeEventsRequest _
derive instance repGenericDescribeEventsRequest :: Generic DescribeEventsRequest _
instance showDescribeEventsRequest :: Show DescribeEventsRequest where show = genericShow
instance decodeDescribeEventsRequest :: Decode DescribeEventsRequest where decode = genericDecode options
instance encodeDescribeEventsRequest :: Encode DescribeEventsRequest where encode = genericEncode options

-- | Constructs DescribeEventsRequest from required parameters
newDescribeEventsRequest :: ServerName -> DescribeEventsRequest
newDescribeEventsRequest _ServerName = DescribeEventsRequest { "ServerName": _ServerName, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ServerName" :: (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> DescribeEventsRequest
newDescribeEventsRequest' _ServerName customize = (DescribeEventsRequest <<< customize) { "ServerName": _ServerName, "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeEventsResponse = DescribeEventsResponse 
  { "ServerEvents" :: Maybe (ServerEvents)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEventsResponse :: Newtype DescribeEventsResponse _
derive instance repGenericDescribeEventsResponse :: Generic DescribeEventsResponse _
instance showDescribeEventsResponse :: Show DescribeEventsResponse where show = genericShow
instance decodeDescribeEventsResponse :: Decode DescribeEventsResponse where decode = genericDecode options
instance encodeDescribeEventsResponse :: Encode DescribeEventsResponse where encode = genericEncode options

-- | Constructs DescribeEventsResponse from required parameters
newDescribeEventsResponse :: DescribeEventsResponse
newDescribeEventsResponse  = DescribeEventsResponse { "NextToken": Nothing, "ServerEvents": Nothing }

-- | Constructs DescribeEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsResponse' :: ( { "ServerEvents" :: Maybe (ServerEvents) , "NextToken" :: Maybe (String) } -> {"ServerEvents" :: Maybe (ServerEvents) , "NextToken" :: Maybe (String) } ) -> DescribeEventsResponse
newDescribeEventsResponse'  customize = (DescribeEventsResponse <<< customize) { "NextToken": Nothing, "ServerEvents": Nothing }



newtype DescribeNodeAssociationStatusRequest = DescribeNodeAssociationStatusRequest 
  { "NodeAssociationStatusToken" :: (NodeAssociationStatusToken)
  , "ServerName" :: (ServerName)
  }
derive instance newtypeDescribeNodeAssociationStatusRequest :: Newtype DescribeNodeAssociationStatusRequest _
derive instance repGenericDescribeNodeAssociationStatusRequest :: Generic DescribeNodeAssociationStatusRequest _
instance showDescribeNodeAssociationStatusRequest :: Show DescribeNodeAssociationStatusRequest where show = genericShow
instance decodeDescribeNodeAssociationStatusRequest :: Decode DescribeNodeAssociationStatusRequest where decode = genericDecode options
instance encodeDescribeNodeAssociationStatusRequest :: Encode DescribeNodeAssociationStatusRequest where encode = genericEncode options

-- | Constructs DescribeNodeAssociationStatusRequest from required parameters
newDescribeNodeAssociationStatusRequest :: NodeAssociationStatusToken -> ServerName -> DescribeNodeAssociationStatusRequest
newDescribeNodeAssociationStatusRequest _NodeAssociationStatusToken _ServerName = DescribeNodeAssociationStatusRequest { "NodeAssociationStatusToken": _NodeAssociationStatusToken, "ServerName": _ServerName }

-- | Constructs DescribeNodeAssociationStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeNodeAssociationStatusRequest' :: NodeAssociationStatusToken -> ServerName -> ( { "NodeAssociationStatusToken" :: (NodeAssociationStatusToken) , "ServerName" :: (ServerName) } -> {"NodeAssociationStatusToken" :: (NodeAssociationStatusToken) , "ServerName" :: (ServerName) } ) -> DescribeNodeAssociationStatusRequest
newDescribeNodeAssociationStatusRequest' _NodeAssociationStatusToken _ServerName customize = (DescribeNodeAssociationStatusRequest <<< customize) { "NodeAssociationStatusToken": _NodeAssociationStatusToken, "ServerName": _ServerName }



newtype DescribeNodeAssociationStatusResponse = DescribeNodeAssociationStatusResponse 
  { "NodeAssociationStatus" :: Maybe (NodeAssociationStatus)
  , "EngineAttributes" :: Maybe (EngineAttributes)
  }
derive instance newtypeDescribeNodeAssociationStatusResponse :: Newtype DescribeNodeAssociationStatusResponse _
derive instance repGenericDescribeNodeAssociationStatusResponse :: Generic DescribeNodeAssociationStatusResponse _
instance showDescribeNodeAssociationStatusResponse :: Show DescribeNodeAssociationStatusResponse where show = genericShow
instance decodeDescribeNodeAssociationStatusResponse :: Decode DescribeNodeAssociationStatusResponse where decode = genericDecode options
instance encodeDescribeNodeAssociationStatusResponse :: Encode DescribeNodeAssociationStatusResponse where encode = genericEncode options

-- | Constructs DescribeNodeAssociationStatusResponse from required parameters
newDescribeNodeAssociationStatusResponse :: DescribeNodeAssociationStatusResponse
newDescribeNodeAssociationStatusResponse  = DescribeNodeAssociationStatusResponse { "EngineAttributes": Nothing, "NodeAssociationStatus": Nothing }

-- | Constructs DescribeNodeAssociationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeNodeAssociationStatusResponse' :: ( { "NodeAssociationStatus" :: Maybe (NodeAssociationStatus) , "EngineAttributes" :: Maybe (EngineAttributes) } -> {"NodeAssociationStatus" :: Maybe (NodeAssociationStatus) , "EngineAttributes" :: Maybe (EngineAttributes) } ) -> DescribeNodeAssociationStatusResponse
newDescribeNodeAssociationStatusResponse'  customize = (DescribeNodeAssociationStatusResponse <<< customize) { "EngineAttributes": Nothing, "NodeAssociationStatus": Nothing }



newtype DescribeServersRequest = DescribeServersRequest 
  { "ServerName" :: Maybe (ServerName)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeDescribeServersRequest :: Newtype DescribeServersRequest _
derive instance repGenericDescribeServersRequest :: Generic DescribeServersRequest _
instance showDescribeServersRequest :: Show DescribeServersRequest where show = genericShow
instance decodeDescribeServersRequest :: Decode DescribeServersRequest where decode = genericDecode options
instance encodeDescribeServersRequest :: Encode DescribeServersRequest where encode = genericEncode options

-- | Constructs DescribeServersRequest from required parameters
newDescribeServersRequest :: DescribeServersRequest
newDescribeServersRequest  = DescribeServersRequest { "MaxResults": Nothing, "NextToken": Nothing, "ServerName": Nothing }

-- | Constructs DescribeServersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServersRequest' :: ( { "ServerName" :: Maybe (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ServerName" :: Maybe (ServerName) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> DescribeServersRequest
newDescribeServersRequest'  customize = (DescribeServersRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "ServerName": Nothing }



newtype DescribeServersResponse = DescribeServersResponse 
  { "Servers" :: Maybe (Servers)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeServersResponse :: Newtype DescribeServersResponse _
derive instance repGenericDescribeServersResponse :: Generic DescribeServersResponse _
instance showDescribeServersResponse :: Show DescribeServersResponse where show = genericShow
instance decodeDescribeServersResponse :: Decode DescribeServersResponse where decode = genericDecode options
instance encodeDescribeServersResponse :: Encode DescribeServersResponse where encode = genericEncode options

-- | Constructs DescribeServersResponse from required parameters
newDescribeServersResponse :: DescribeServersResponse
newDescribeServersResponse  = DescribeServersResponse { "NextToken": Nothing, "Servers": Nothing }

-- | Constructs DescribeServersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServersResponse' :: ( { "Servers" :: Maybe (Servers) , "NextToken" :: Maybe (String) } -> {"Servers" :: Maybe (Servers) , "NextToken" :: Maybe (String) } ) -> DescribeServersResponse
newDescribeServersResponse'  customize = (DescribeServersResponse <<< customize) { "NextToken": Nothing, "Servers": Nothing }



newtype DisassociateNodeRequest = DisassociateNodeRequest 
  { "ServerName" :: (ServerName)
  , "NodeName" :: (NodeName)
  , "EngineAttributes" :: Maybe (EngineAttributes)
  }
derive instance newtypeDisassociateNodeRequest :: Newtype DisassociateNodeRequest _
derive instance repGenericDisassociateNodeRequest :: Generic DisassociateNodeRequest _
instance showDisassociateNodeRequest :: Show DisassociateNodeRequest where show = genericShow
instance decodeDisassociateNodeRequest :: Decode DisassociateNodeRequest where decode = genericDecode options
instance encodeDisassociateNodeRequest :: Encode DisassociateNodeRequest where encode = genericEncode options

-- | Constructs DisassociateNodeRequest from required parameters
newDisassociateNodeRequest :: NodeName -> ServerName -> DisassociateNodeRequest
newDisassociateNodeRequest _NodeName _ServerName = DisassociateNodeRequest { "NodeName": _NodeName, "ServerName": _ServerName, "EngineAttributes": Nothing }

-- | Constructs DisassociateNodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateNodeRequest' :: NodeName -> ServerName -> ( { "ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: Maybe (EngineAttributes) } -> {"ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: Maybe (EngineAttributes) } ) -> DisassociateNodeRequest
newDisassociateNodeRequest' _NodeName _ServerName customize = (DisassociateNodeRequest <<< customize) { "NodeName": _NodeName, "ServerName": _ServerName, "EngineAttributes": Nothing }



newtype DisassociateNodeResponse = DisassociateNodeResponse 
  { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken)
  }
derive instance newtypeDisassociateNodeResponse :: Newtype DisassociateNodeResponse _
derive instance repGenericDisassociateNodeResponse :: Generic DisassociateNodeResponse _
instance showDisassociateNodeResponse :: Show DisassociateNodeResponse where show = genericShow
instance decodeDisassociateNodeResponse :: Decode DisassociateNodeResponse where decode = genericDecode options
instance encodeDisassociateNodeResponse :: Encode DisassociateNodeResponse where encode = genericEncode options

-- | Constructs DisassociateNodeResponse from required parameters
newDisassociateNodeResponse :: DisassociateNodeResponse
newDisassociateNodeResponse  = DisassociateNodeResponse { "NodeAssociationStatusToken": Nothing }

-- | Constructs DisassociateNodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateNodeResponse' :: ( { "NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } -> {"NodeAssociationStatusToken" :: Maybe (NodeAssociationStatusToken) } ) -> DisassociateNodeResponse
newDisassociateNodeResponse'  customize = (DisassociateNodeResponse <<< customize) { "NodeAssociationStatusToken": Nothing }



-- | <p>A name and value pair that is specific to the engine of the server. </p>
newtype EngineAttribute = EngineAttribute 
  { "Name" :: Maybe (EngineAttributeName)
  , "Value" :: Maybe (EngineAttributeValue)
  }
derive instance newtypeEngineAttribute :: Newtype EngineAttribute _
derive instance repGenericEngineAttribute :: Generic EngineAttribute _
instance showEngineAttribute :: Show EngineAttribute where show = genericShow
instance decodeEngineAttribute :: Decode EngineAttribute where decode = genericDecode options
instance encodeEngineAttribute :: Encode EngineAttribute where encode = genericEncode options

-- | Constructs EngineAttribute from required parameters
newEngineAttribute :: EngineAttribute
newEngineAttribute  = EngineAttribute { "Name": Nothing, "Value": Nothing }

-- | Constructs EngineAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEngineAttribute' :: ( { "Name" :: Maybe (EngineAttributeName) , "Value" :: Maybe (EngineAttributeValue) } -> {"Name" :: Maybe (EngineAttributeName) , "Value" :: Maybe (EngineAttributeValue) } ) -> EngineAttribute
newEngineAttribute'  customize = (EngineAttribute <<< customize) { "Name": Nothing, "Value": Nothing }



newtype EngineAttributeName = EngineAttributeName String
derive instance newtypeEngineAttributeName :: Newtype EngineAttributeName _
derive instance repGenericEngineAttributeName :: Generic EngineAttributeName _
instance showEngineAttributeName :: Show EngineAttributeName where show = genericShow
instance decodeEngineAttributeName :: Decode EngineAttributeName where decode = genericDecode options
instance encodeEngineAttributeName :: Encode EngineAttributeName where encode = genericEncode options



newtype EngineAttributeValue = EngineAttributeValue String
derive instance newtypeEngineAttributeValue :: Newtype EngineAttributeValue _
derive instance repGenericEngineAttributeValue :: Generic EngineAttributeValue _
instance showEngineAttributeValue :: Show EngineAttributeValue where show = genericShow
instance decodeEngineAttributeValue :: Decode EngineAttributeValue where decode = genericDecode options
instance encodeEngineAttributeValue :: Encode EngineAttributeValue where encode = genericEncode options



newtype EngineAttributes = EngineAttributes (Array EngineAttribute)
derive instance newtypeEngineAttributes :: Newtype EngineAttributes _
derive instance repGenericEngineAttributes :: Generic EngineAttributes _
instance showEngineAttributes :: Show EngineAttributes where show = genericShow
instance decodeEngineAttributes :: Decode EngineAttributes where decode = genericDecode options
instance encodeEngineAttributes :: Encode EngineAttributes where encode = genericEncode options



newtype InstanceProfileArn = InstanceProfileArn String
derive instance newtypeInstanceProfileArn :: Newtype InstanceProfileArn _
derive instance repGenericInstanceProfileArn :: Generic InstanceProfileArn _
instance showInstanceProfileArn :: Show InstanceProfileArn where show = genericShow
instance decodeInstanceProfileArn :: Decode InstanceProfileArn where decode = genericDecode options
instance encodeInstanceProfileArn :: Encode InstanceProfileArn where encode = genericEncode options



-- | <p>This occurs when the provided nextToken is not valid. </p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": Nothing }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": Nothing }



-- | <p>The resource is in a state that does not allow you to perform a specified action. </p>
newtype InvalidStateException = InvalidStateException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidStateException :: Newtype InvalidStateException _
derive instance repGenericInvalidStateException :: Generic InvalidStateException _
instance showInvalidStateException :: Show InvalidStateException where show = genericShow
instance decodeInvalidStateException :: Decode InvalidStateException where decode = genericDecode options
instance encodeInvalidStateException :: Encode InvalidStateException where encode = genericEncode options

-- | Constructs InvalidStateException from required parameters
newInvalidStateException :: InvalidStateException
newInvalidStateException  = InvalidStateException { "Message": Nothing }

-- | Constructs InvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidStateException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidStateException
newInvalidStateException'  customize = (InvalidStateException <<< customize) { "Message": Nothing }



newtype KeyPair = KeyPair String
derive instance newtypeKeyPair :: Newtype KeyPair _
derive instance repGenericKeyPair :: Generic KeyPair _
instance showKeyPair :: Show KeyPair where show = genericShow
instance decodeKeyPair :: Decode KeyPair where decode = genericDecode options
instance encodeKeyPair :: Encode KeyPair where encode = genericEncode options



-- | <p>The limit of servers or backups has been reached. </p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": Nothing }



newtype MaintenanceStatus = MaintenanceStatus String
derive instance newtypeMaintenanceStatus :: Newtype MaintenanceStatus _
derive instance repGenericMaintenanceStatus :: Generic MaintenanceStatus _
instance showMaintenanceStatus :: Show MaintenanceStatus where show = genericShow
instance decodeMaintenanceStatus :: Decode MaintenanceStatus where decode = genericDecode options
instance encodeMaintenanceStatus :: Encode MaintenanceStatus where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
newtype NodeAssociationStatus = NodeAssociationStatus String
derive instance newtypeNodeAssociationStatus :: Newtype NodeAssociationStatus _
derive instance repGenericNodeAssociationStatus :: Generic NodeAssociationStatus _
instance showNodeAssociationStatus :: Show NodeAssociationStatus where show = genericShow
instance decodeNodeAssociationStatus :: Decode NodeAssociationStatus where decode = genericDecode options
instance encodeNodeAssociationStatus :: Encode NodeAssociationStatus where encode = genericEncode options



newtype NodeAssociationStatusToken = NodeAssociationStatusToken String
derive instance newtypeNodeAssociationStatusToken :: Newtype NodeAssociationStatusToken _
derive instance repGenericNodeAssociationStatusToken :: Generic NodeAssociationStatusToken _
instance showNodeAssociationStatusToken :: Show NodeAssociationStatusToken where show = genericShow
instance decodeNodeAssociationStatusToken :: Decode NodeAssociationStatusToken where decode = genericDecode options
instance encodeNodeAssociationStatusToken :: Encode NodeAssociationStatusToken where encode = genericEncode options



-- | <p>The node name that is used by <code>chef-client</code> or <code>puppet-agent</code>for a new node. We recommend to use a unique FQDN as hostname. For more information, see the <a href="http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names">Chef</a> or <a href="http://docs.aws.amazon.com/https:/docs.puppet.com/puppet/4.10/man/agent.html">Puppet</a> documentation. </p>
newtype NodeName = NodeName String
derive instance newtypeNodeName :: Newtype NodeName _
derive instance repGenericNodeName :: Generic NodeName _
instance showNodeName :: Show NodeName where show = genericShow
instance decodeNodeName :: Decode NodeName where decode = genericDecode options
instance encodeNodeName :: Encode NodeName where encode = genericEncode options



-- | <p>The requested resource cannot be created because it already exists. </p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options

-- | Constructs ResourceAlreadyExistsException from required parameters
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
newResourceAlreadyExistsException  = ResourceAlreadyExistsException { "Message": Nothing }

-- | Constructs ResourceAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAlreadyExistsException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ResourceAlreadyExistsException
newResourceAlreadyExistsException'  customize = (ResourceAlreadyExistsException <<< customize) { "Message": Nothing }



-- | <p>The requested resource does not exist, or access was denied. </p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": Nothing }



newtype RestoreServerRequest = RestoreServerRequest 
  { "BackupId" :: (BackupId)
  , "ServerName" :: (ServerName)
  , "InstanceType" :: Maybe (String)
  , "KeyPair" :: Maybe (KeyPair)
  }
derive instance newtypeRestoreServerRequest :: Newtype RestoreServerRequest _
derive instance repGenericRestoreServerRequest :: Generic RestoreServerRequest _
instance showRestoreServerRequest :: Show RestoreServerRequest where show = genericShow
instance decodeRestoreServerRequest :: Decode RestoreServerRequest where decode = genericDecode options
instance encodeRestoreServerRequest :: Encode RestoreServerRequest where encode = genericEncode options

-- | Constructs RestoreServerRequest from required parameters
newRestoreServerRequest :: BackupId -> ServerName -> RestoreServerRequest
newRestoreServerRequest _BackupId _ServerName = RestoreServerRequest { "BackupId": _BackupId, "ServerName": _ServerName, "InstanceType": Nothing, "KeyPair": Nothing }

-- | Constructs RestoreServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRestoreServerRequest' :: BackupId -> ServerName -> ( { "BackupId" :: (BackupId) , "ServerName" :: (ServerName) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (KeyPair) } -> {"BackupId" :: (BackupId) , "ServerName" :: (ServerName) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (KeyPair) } ) -> RestoreServerRequest
newRestoreServerRequest' _BackupId _ServerName customize = (RestoreServerRequest <<< customize) { "BackupId": _BackupId, "ServerName": _ServerName, "InstanceType": Nothing, "KeyPair": Nothing }



newtype RestoreServerResponse = RestoreServerResponse Types.NoArguments
derive instance newtypeRestoreServerResponse :: Newtype RestoreServerResponse _
derive instance repGenericRestoreServerResponse :: Generic RestoreServerResponse _
instance showRestoreServerResponse :: Show RestoreServerResponse where show = genericShow
instance decodeRestoreServerResponse :: Decode RestoreServerResponse where decode = genericDecode options
instance encodeRestoreServerResponse :: Encode RestoreServerResponse where encode = genericEncode options



-- | <p>Describes a configuration management server. </p>
newtype Server = Server 
  { "AssociatePublicIpAddress" :: Maybe (Boolean)
  , "BackupRetentionCount" :: Maybe (Int)
  , "ServerName" :: Maybe (String)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "CloudFormationStackArn" :: Maybe (String)
  , "DisableAutomatedBackup" :: Maybe (Boolean)
  , "Endpoint" :: Maybe (String)
  , "Engine" :: Maybe (String)
  , "EngineModel" :: Maybe (String)
  , "EngineAttributes" :: Maybe (EngineAttributes)
  , "EngineVersion" :: Maybe (String)
  , "InstanceProfileArn" :: Maybe (String)
  , "InstanceType" :: Maybe (String)
  , "KeyPair" :: Maybe (String)
  , "MaintenanceStatus" :: Maybe (MaintenanceStatus)
  , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition)
  , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition)
  , "SecurityGroupIds" :: Maybe (Strings)
  , "ServiceRoleArn" :: Maybe (String)
  , "Status" :: Maybe (ServerStatus)
  , "StatusReason" :: Maybe (String)
  , "SubnetIds" :: Maybe (Strings)
  , "ServerArn" :: Maybe (String)
  }
derive instance newtypeServer :: Newtype Server _
derive instance repGenericServer :: Generic Server _
instance showServer :: Show Server where show = genericShow
instance decodeServer :: Decode Server where decode = genericDecode options
instance encodeServer :: Encode Server where encode = genericEncode options

-- | Constructs Server from required parameters
newServer :: Server
newServer  = Server { "AssociatePublicIpAddress": Nothing, "BackupRetentionCount": Nothing, "CloudFormationStackArn": Nothing, "CreatedAt": Nothing, "DisableAutomatedBackup": Nothing, "Endpoint": Nothing, "Engine": Nothing, "EngineAttributes": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "KeyPair": Nothing, "MaintenanceStatus": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "ServerArn": Nothing, "ServerName": Nothing, "ServiceRoleArn": Nothing, "Status": Nothing, "StatusReason": Nothing, "SubnetIds": Nothing }

-- | Constructs Server's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServer' :: ( { "AssociatePublicIpAddress" :: Maybe (Boolean) , "BackupRetentionCount" :: Maybe (Int) , "ServerName" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "CloudFormationStackArn" :: Maybe (String) , "DisableAutomatedBackup" :: Maybe (Boolean) , "Endpoint" :: Maybe (String) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineAttributes" :: Maybe (EngineAttributes) , "EngineVersion" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (String) , "MaintenanceStatus" :: Maybe (MaintenanceStatus) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "SecurityGroupIds" :: Maybe (Strings) , "ServiceRoleArn" :: Maybe (String) , "Status" :: Maybe (ServerStatus) , "StatusReason" :: Maybe (String) , "SubnetIds" :: Maybe (Strings) , "ServerArn" :: Maybe (String) } -> {"AssociatePublicIpAddress" :: Maybe (Boolean) , "BackupRetentionCount" :: Maybe (Int) , "ServerName" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "CloudFormationStackArn" :: Maybe (String) , "DisableAutomatedBackup" :: Maybe (Boolean) , "Endpoint" :: Maybe (String) , "Engine" :: Maybe (String) , "EngineModel" :: Maybe (String) , "EngineAttributes" :: Maybe (EngineAttributes) , "EngineVersion" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "KeyPair" :: Maybe (String) , "MaintenanceStatus" :: Maybe (MaintenanceStatus) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) , "SecurityGroupIds" :: Maybe (Strings) , "ServiceRoleArn" :: Maybe (String) , "Status" :: Maybe (ServerStatus) , "StatusReason" :: Maybe (String) , "SubnetIds" :: Maybe (Strings) , "ServerArn" :: Maybe (String) } ) -> Server
newServer'  customize = (Server <<< customize) { "AssociatePublicIpAddress": Nothing, "BackupRetentionCount": Nothing, "CloudFormationStackArn": Nothing, "CreatedAt": Nothing, "DisableAutomatedBackup": Nothing, "Endpoint": Nothing, "Engine": Nothing, "EngineAttributes": Nothing, "EngineModel": Nothing, "EngineVersion": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "KeyPair": Nothing, "MaintenanceStatus": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "ServerArn": Nothing, "ServerName": Nothing, "ServiceRoleArn": Nothing, "Status": Nothing, "StatusReason": Nothing, "SubnetIds": Nothing }



-- | <p>An event that is related to the server, such as the start of maintenance or backup. </p>
newtype ServerEvent = ServerEvent 
  { "CreatedAt" :: Maybe (Types.Timestamp)
  , "ServerName" :: Maybe (String)
  , "Message" :: Maybe (String)
  , "LogUrl" :: Maybe (String)
  }
derive instance newtypeServerEvent :: Newtype ServerEvent _
derive instance repGenericServerEvent :: Generic ServerEvent _
instance showServerEvent :: Show ServerEvent where show = genericShow
instance decodeServerEvent :: Decode ServerEvent where decode = genericDecode options
instance encodeServerEvent :: Encode ServerEvent where encode = genericEncode options

-- | Constructs ServerEvent from required parameters
newServerEvent :: ServerEvent
newServerEvent  = ServerEvent { "CreatedAt": Nothing, "LogUrl": Nothing, "Message": Nothing, "ServerName": Nothing }

-- | Constructs ServerEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerEvent' :: ( { "CreatedAt" :: Maybe (Types.Timestamp) , "ServerName" :: Maybe (String) , "Message" :: Maybe (String) , "LogUrl" :: Maybe (String) } -> {"CreatedAt" :: Maybe (Types.Timestamp) , "ServerName" :: Maybe (String) , "Message" :: Maybe (String) , "LogUrl" :: Maybe (String) } ) -> ServerEvent
newServerEvent'  customize = (ServerEvent <<< customize) { "CreatedAt": Nothing, "LogUrl": Nothing, "Message": Nothing, "ServerName": Nothing }



newtype ServerEvents = ServerEvents (Array ServerEvent)
derive instance newtypeServerEvents :: Newtype ServerEvents _
derive instance repGenericServerEvents :: Generic ServerEvents _
instance showServerEvents :: Show ServerEvents where show = genericShow
instance decodeServerEvents :: Decode ServerEvents where decode = genericDecode options
instance encodeServerEvents :: Encode ServerEvents where encode = genericEncode options



newtype ServerName = ServerName String
derive instance newtypeServerName :: Newtype ServerName _
derive instance repGenericServerName :: Generic ServerName _
instance showServerName :: Show ServerName where show = genericShow
instance decodeServerName :: Decode ServerName where decode = genericDecode options
instance encodeServerName :: Encode ServerName where encode = genericEncode options



newtype ServerStatus = ServerStatus String
derive instance newtypeServerStatus :: Newtype ServerStatus _
derive instance repGenericServerStatus :: Generic ServerStatus _
instance showServerStatus :: Show ServerStatus where show = genericShow
instance decodeServerStatus :: Decode ServerStatus where decode = genericDecode options
instance encodeServerStatus :: Encode ServerStatus where encode = genericEncode options



newtype Servers = Servers (Array Server)
derive instance newtypeServers :: Newtype Servers _
derive instance repGenericServers :: Generic Servers _
instance showServers :: Show Servers where show = genericShow
instance decodeServers :: Decode Servers where decode = genericDecode options
instance encodeServers :: Encode Servers where encode = genericEncode options



newtype ServiceRoleArn = ServiceRoleArn String
derive instance newtypeServiceRoleArn :: Newtype ServiceRoleArn _
derive instance repGenericServiceRoleArn :: Generic ServiceRoleArn _
instance showServiceRoleArn :: Show ServiceRoleArn where show = genericShow
instance decodeServiceRoleArn :: Decode ServiceRoleArn where decode = genericDecode options
instance encodeServiceRoleArn :: Encode ServiceRoleArn where encode = genericEncode options



newtype StartMaintenanceRequest = StartMaintenanceRequest 
  { "ServerName" :: (ServerName)
  , "EngineAttributes" :: Maybe (EngineAttributes)
  }
derive instance newtypeStartMaintenanceRequest :: Newtype StartMaintenanceRequest _
derive instance repGenericStartMaintenanceRequest :: Generic StartMaintenanceRequest _
instance showStartMaintenanceRequest :: Show StartMaintenanceRequest where show = genericShow
instance decodeStartMaintenanceRequest :: Decode StartMaintenanceRequest where decode = genericDecode options
instance encodeStartMaintenanceRequest :: Encode StartMaintenanceRequest where encode = genericEncode options

-- | Constructs StartMaintenanceRequest from required parameters
newStartMaintenanceRequest :: ServerName -> StartMaintenanceRequest
newStartMaintenanceRequest _ServerName = StartMaintenanceRequest { "ServerName": _ServerName, "EngineAttributes": Nothing }

-- | Constructs StartMaintenanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMaintenanceRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "EngineAttributes" :: Maybe (EngineAttributes) } -> {"ServerName" :: (ServerName) , "EngineAttributes" :: Maybe (EngineAttributes) } ) -> StartMaintenanceRequest
newStartMaintenanceRequest' _ServerName customize = (StartMaintenanceRequest <<< customize) { "ServerName": _ServerName, "EngineAttributes": Nothing }



newtype StartMaintenanceResponse = StartMaintenanceResponse 
  { "Server" :: Maybe (Server)
  }
derive instance newtypeStartMaintenanceResponse :: Newtype StartMaintenanceResponse _
derive instance repGenericStartMaintenanceResponse :: Generic StartMaintenanceResponse _
instance showStartMaintenanceResponse :: Show StartMaintenanceResponse where show = genericShow
instance decodeStartMaintenanceResponse :: Decode StartMaintenanceResponse where decode = genericDecode options
instance encodeStartMaintenanceResponse :: Encode StartMaintenanceResponse where encode = genericEncode options

-- | Constructs StartMaintenanceResponse from required parameters
newStartMaintenanceResponse :: StartMaintenanceResponse
newStartMaintenanceResponse  = StartMaintenanceResponse { "Server": Nothing }

-- | Constructs StartMaintenanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMaintenanceResponse' :: ( { "Server" :: Maybe (Server) } -> {"Server" :: Maybe (Server) } ) -> StartMaintenanceResponse
newStartMaintenanceResponse'  customize = (StartMaintenanceResponse <<< customize) { "Server": Nothing }



newtype Strings = Strings (Array String)
derive instance newtypeStrings :: Newtype Strings _
derive instance repGenericStrings :: Generic Strings _
instance showStrings :: Show Strings where show = genericShow
instance decodeStrings :: Decode Strings where decode = genericDecode options
instance encodeStrings :: Encode Strings where encode = genericEncode options



-- | <p> <code>DDD:HH:MM</code> (weekly start time) or <code>HH:MM</code> (daily start time). </p> <p> Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>, <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
newtype TimeWindowDefinition = TimeWindowDefinition String
derive instance newtypeTimeWindowDefinition :: Newtype TimeWindowDefinition _
derive instance repGenericTimeWindowDefinition :: Generic TimeWindowDefinition _
instance showTimeWindowDefinition :: Show TimeWindowDefinition where show = genericShow
instance decodeTimeWindowDefinition :: Decode TimeWindowDefinition where decode = genericDecode options
instance encodeTimeWindowDefinition :: Encode TimeWindowDefinition where encode = genericEncode options



newtype UpdateServerEngineAttributesRequest = UpdateServerEngineAttributesRequest 
  { "ServerName" :: (ServerName)
  , "AttributeName" :: (AttributeName)
  , "AttributeValue" :: Maybe (AttributeValue)
  }
derive instance newtypeUpdateServerEngineAttributesRequest :: Newtype UpdateServerEngineAttributesRequest _
derive instance repGenericUpdateServerEngineAttributesRequest :: Generic UpdateServerEngineAttributesRequest _
instance showUpdateServerEngineAttributesRequest :: Show UpdateServerEngineAttributesRequest where show = genericShow
instance decodeUpdateServerEngineAttributesRequest :: Decode UpdateServerEngineAttributesRequest where decode = genericDecode options
instance encodeUpdateServerEngineAttributesRequest :: Encode UpdateServerEngineAttributesRequest where encode = genericEncode options

-- | Constructs UpdateServerEngineAttributesRequest from required parameters
newUpdateServerEngineAttributesRequest :: AttributeName -> ServerName -> UpdateServerEngineAttributesRequest
newUpdateServerEngineAttributesRequest _AttributeName _ServerName = UpdateServerEngineAttributesRequest { "AttributeName": _AttributeName, "ServerName": _ServerName, "AttributeValue": Nothing }

-- | Constructs UpdateServerEngineAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerEngineAttributesRequest' :: AttributeName -> ServerName -> ( { "ServerName" :: (ServerName) , "AttributeName" :: (AttributeName) , "AttributeValue" :: Maybe (AttributeValue) } -> {"ServerName" :: (ServerName) , "AttributeName" :: (AttributeName) , "AttributeValue" :: Maybe (AttributeValue) } ) -> UpdateServerEngineAttributesRequest
newUpdateServerEngineAttributesRequest' _AttributeName _ServerName customize = (UpdateServerEngineAttributesRequest <<< customize) { "AttributeName": _AttributeName, "ServerName": _ServerName, "AttributeValue": Nothing }



newtype UpdateServerEngineAttributesResponse = UpdateServerEngineAttributesResponse 
  { "Server" :: Maybe (Server)
  }
derive instance newtypeUpdateServerEngineAttributesResponse :: Newtype UpdateServerEngineAttributesResponse _
derive instance repGenericUpdateServerEngineAttributesResponse :: Generic UpdateServerEngineAttributesResponse _
instance showUpdateServerEngineAttributesResponse :: Show UpdateServerEngineAttributesResponse where show = genericShow
instance decodeUpdateServerEngineAttributesResponse :: Decode UpdateServerEngineAttributesResponse where decode = genericDecode options
instance encodeUpdateServerEngineAttributesResponse :: Encode UpdateServerEngineAttributesResponse where encode = genericEncode options

-- | Constructs UpdateServerEngineAttributesResponse from required parameters
newUpdateServerEngineAttributesResponse :: UpdateServerEngineAttributesResponse
newUpdateServerEngineAttributesResponse  = UpdateServerEngineAttributesResponse { "Server": Nothing }

-- | Constructs UpdateServerEngineAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerEngineAttributesResponse' :: ( { "Server" :: Maybe (Server) } -> {"Server" :: Maybe (Server) } ) -> UpdateServerEngineAttributesResponse
newUpdateServerEngineAttributesResponse'  customize = (UpdateServerEngineAttributesResponse <<< customize) { "Server": Nothing }



newtype UpdateServerRequest = UpdateServerRequest 
  { "DisableAutomatedBackup" :: Maybe (Boolean)
  , "BackupRetentionCount" :: Maybe (Int)
  , "ServerName" :: (ServerName)
  , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition)
  , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition)
  }
derive instance newtypeUpdateServerRequest :: Newtype UpdateServerRequest _
derive instance repGenericUpdateServerRequest :: Generic UpdateServerRequest _
instance showUpdateServerRequest :: Show UpdateServerRequest where show = genericShow
instance decodeUpdateServerRequest :: Decode UpdateServerRequest where decode = genericDecode options
instance encodeUpdateServerRequest :: Encode UpdateServerRequest where encode = genericEncode options

-- | Constructs UpdateServerRequest from required parameters
newUpdateServerRequest :: ServerName -> UpdateServerRequest
newUpdateServerRequest _ServerName = UpdateServerRequest { "ServerName": _ServerName, "BackupRetentionCount": Nothing, "DisableAutomatedBackup": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing }

-- | Constructs UpdateServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerRequest' :: ServerName -> ( { "DisableAutomatedBackup" :: Maybe (Boolean) , "BackupRetentionCount" :: Maybe (Int) , "ServerName" :: (ServerName) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) } -> {"DisableAutomatedBackup" :: Maybe (Boolean) , "BackupRetentionCount" :: Maybe (Int) , "ServerName" :: (ServerName) , "PreferredMaintenanceWindow" :: Maybe (TimeWindowDefinition) , "PreferredBackupWindow" :: Maybe (TimeWindowDefinition) } ) -> UpdateServerRequest
newUpdateServerRequest' _ServerName customize = (UpdateServerRequest <<< customize) { "ServerName": _ServerName, "BackupRetentionCount": Nothing, "DisableAutomatedBackup": Nothing, "PreferredBackupWindow": Nothing, "PreferredMaintenanceWindow": Nothing }



newtype UpdateServerResponse = UpdateServerResponse 
  { "Server" :: Maybe (Server)
  }
derive instance newtypeUpdateServerResponse :: Newtype UpdateServerResponse _
derive instance repGenericUpdateServerResponse :: Generic UpdateServerResponse _
instance showUpdateServerResponse :: Show UpdateServerResponse where show = genericShow
instance decodeUpdateServerResponse :: Decode UpdateServerResponse where decode = genericDecode options
instance encodeUpdateServerResponse :: Encode UpdateServerResponse where encode = genericEncode options

-- | Constructs UpdateServerResponse from required parameters
newUpdateServerResponse :: UpdateServerResponse
newUpdateServerResponse  = UpdateServerResponse { "Server": Nothing }

-- | Constructs UpdateServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerResponse' :: ( { "Server" :: Maybe (Server) } -> {"Server" :: Maybe (Server) } ) -> UpdateServerResponse
newUpdateServerResponse'  customize = (UpdateServerResponse <<< customize) { "Server": Nothing }



-- | <p>One or more of the provided request parameters are not valid. </p>
newtype ValidationException = ValidationException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": Nothing }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": Nothing }

