
module AWS.OpsWorksCM.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  { "Name" :: NullOrUndefined (String)
  , "Maximum" :: NullOrUndefined (Int)
  , "Used" :: NullOrUndefined (Int)
  }
derive instance newtypeAccountAttribute :: Newtype AccountAttribute _
derive instance repGenericAccountAttribute :: Generic AccountAttribute _
instance showAccountAttribute :: Show AccountAttribute where show = genericShow
instance decodeAccountAttribute :: Decode AccountAttribute where decode = genericDecode options
instance encodeAccountAttribute :: Encode AccountAttribute where encode = genericEncode options

-- | Constructs AccountAttribute from required parameters
newAccountAttribute :: AccountAttribute
newAccountAttribute  = AccountAttribute { "Maximum": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Used": (NullOrUndefined Nothing) }

-- | Constructs AccountAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountAttribute' :: ( { "Name" :: NullOrUndefined (String) , "Maximum" :: NullOrUndefined (Int) , "Used" :: NullOrUndefined (Int) } -> {"Name" :: NullOrUndefined (String) , "Maximum" :: NullOrUndefined (Int) , "Used" :: NullOrUndefined (Int) } ) -> AccountAttribute
newAccountAttribute'  customize = (AccountAttribute <<< customize) { "Maximum": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Used": (NullOrUndefined Nothing) }



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
  { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken)
  }
derive instance newtypeAssociateNodeResponse :: Newtype AssociateNodeResponse _
derive instance repGenericAssociateNodeResponse :: Generic AssociateNodeResponse _
instance showAssociateNodeResponse :: Show AssociateNodeResponse where show = genericShow
instance decodeAssociateNodeResponse :: Decode AssociateNodeResponse where decode = genericDecode options
instance encodeAssociateNodeResponse :: Encode AssociateNodeResponse where encode = genericEncode options

-- | Constructs AssociateNodeResponse from required parameters
newAssociateNodeResponse :: AssociateNodeResponse
newAssociateNodeResponse  = AssociateNodeResponse { "NodeAssociationStatusToken": (NullOrUndefined Nothing) }

-- | Constructs AssociateNodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateNodeResponse' :: ( { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } -> {"NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } ) -> AssociateNodeResponse
newAssociateNodeResponse'  customize = (AssociateNodeResponse <<< customize) { "NodeAssociationStatusToken": (NullOrUndefined Nothing) }



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
  { "BackupArn" :: NullOrUndefined (String)
  , "BackupId" :: NullOrUndefined (BackupId)
  , "BackupType" :: NullOrUndefined (BackupType)
  , "CreatedAt" :: NullOrUndefined (Types.Timestamp)
  , "Description" :: NullOrUndefined (String)
  , "Engine" :: NullOrUndefined (String)
  , "EngineModel" :: NullOrUndefined (String)
  , "EngineVersion" :: NullOrUndefined (String)
  , "InstanceProfileArn" :: NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined (String)
  , "KeyPair" :: NullOrUndefined (String)
  , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "S3DataSize" :: NullOrUndefined (Int)
  , "S3DataUrl" :: NullOrUndefined (String)
  , "S3LogUrl" :: NullOrUndefined (String)
  , "SecurityGroupIds" :: NullOrUndefined (Strings)
  , "ServerName" :: NullOrUndefined (ServerName)
  , "ServiceRoleArn" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (BackupStatus)
  , "StatusDescription" :: NullOrUndefined (String)
  , "SubnetIds" :: NullOrUndefined (Strings)
  , "ToolsVersion" :: NullOrUndefined (String)
  , "UserArn" :: NullOrUndefined (String)
  }
derive instance newtypeBackup :: Newtype Backup _
derive instance repGenericBackup :: Generic Backup _
instance showBackup :: Show Backup where show = genericShow
instance decodeBackup :: Decode Backup where decode = genericDecode options
instance encodeBackup :: Encode Backup where encode = genericEncode options

-- | Constructs Backup from required parameters
newBackup :: Backup
newBackup  = Backup { "BackupArn": (NullOrUndefined Nothing), "BackupId": (NullOrUndefined Nothing), "BackupType": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "S3DataSize": (NullOrUndefined Nothing), "S3DataUrl": (NullOrUndefined Nothing), "S3LogUrl": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDescription": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing), "ToolsVersion": (NullOrUndefined Nothing), "UserArn": (NullOrUndefined Nothing) }

-- | Constructs Backup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBackup' :: ( { "BackupArn" :: NullOrUndefined (String) , "BackupId" :: NullOrUndefined (BackupId) , "BackupType" :: NullOrUndefined (BackupType) , "CreatedAt" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineVersion" :: NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (String) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "S3DataSize" :: NullOrUndefined (Int) , "S3DataUrl" :: NullOrUndefined (String) , "S3LogUrl" :: NullOrUndefined (String) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServerName" :: NullOrUndefined (ServerName) , "ServiceRoleArn" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (BackupStatus) , "StatusDescription" :: NullOrUndefined (String) , "SubnetIds" :: NullOrUndefined (Strings) , "ToolsVersion" :: NullOrUndefined (String) , "UserArn" :: NullOrUndefined (String) } -> {"BackupArn" :: NullOrUndefined (String) , "BackupId" :: NullOrUndefined (BackupId) , "BackupType" :: NullOrUndefined (BackupType) , "CreatedAt" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineVersion" :: NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (String) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "S3DataSize" :: NullOrUndefined (Int) , "S3DataUrl" :: NullOrUndefined (String) , "S3LogUrl" :: NullOrUndefined (String) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServerName" :: NullOrUndefined (ServerName) , "ServiceRoleArn" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (BackupStatus) , "StatusDescription" :: NullOrUndefined (String) , "SubnetIds" :: NullOrUndefined (Strings) , "ToolsVersion" :: NullOrUndefined (String) , "UserArn" :: NullOrUndefined (String) } ) -> Backup
newBackup'  customize = (Backup <<< customize) { "BackupArn": (NullOrUndefined Nothing), "BackupId": (NullOrUndefined Nothing), "BackupType": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "S3DataSize": (NullOrUndefined Nothing), "S3DataUrl": (NullOrUndefined Nothing), "S3LogUrl": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDescription": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing), "ToolsVersion": (NullOrUndefined Nothing), "UserArn": (NullOrUndefined Nothing) }



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
  , "Description" :: NullOrUndefined (String)
  }
derive instance newtypeCreateBackupRequest :: Newtype CreateBackupRequest _
derive instance repGenericCreateBackupRequest :: Generic CreateBackupRequest _
instance showCreateBackupRequest :: Show CreateBackupRequest where show = genericShow
instance decodeCreateBackupRequest :: Decode CreateBackupRequest where decode = genericDecode options
instance encodeCreateBackupRequest :: Encode CreateBackupRequest where encode = genericEncode options

-- | Constructs CreateBackupRequest from required parameters
newCreateBackupRequest :: ServerName -> CreateBackupRequest
newCreateBackupRequest _ServerName = CreateBackupRequest { "ServerName": _ServerName, "Description": (NullOrUndefined Nothing) }

-- | Constructs CreateBackupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBackupRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "Description" :: NullOrUndefined (String) } -> {"ServerName" :: (ServerName) , "Description" :: NullOrUndefined (String) } ) -> CreateBackupRequest
newCreateBackupRequest' _ServerName customize = (CreateBackupRequest <<< customize) { "ServerName": _ServerName, "Description": (NullOrUndefined Nothing) }



newtype CreateBackupResponse = CreateBackupResponse 
  { "Backup" :: NullOrUndefined (Backup)
  }
derive instance newtypeCreateBackupResponse :: Newtype CreateBackupResponse _
derive instance repGenericCreateBackupResponse :: Generic CreateBackupResponse _
instance showCreateBackupResponse :: Show CreateBackupResponse where show = genericShow
instance decodeCreateBackupResponse :: Decode CreateBackupResponse where decode = genericDecode options
instance encodeCreateBackupResponse :: Encode CreateBackupResponse where encode = genericEncode options

-- | Constructs CreateBackupResponse from required parameters
newCreateBackupResponse :: CreateBackupResponse
newCreateBackupResponse  = CreateBackupResponse { "Backup": (NullOrUndefined Nothing) }

-- | Constructs CreateBackupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBackupResponse' :: ( { "Backup" :: NullOrUndefined (Backup) } -> {"Backup" :: NullOrUndefined (Backup) } ) -> CreateBackupResponse
newCreateBackupResponse'  customize = (CreateBackupResponse <<< customize) { "Backup": (NullOrUndefined Nothing) }



newtype CreateServerRequest = CreateServerRequest 
  { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean)
  , "DisableAutomatedBackup" :: NullOrUndefined (Boolean)
  , "Engine" :: NullOrUndefined (String)
  , "EngineModel" :: NullOrUndefined (String)
  , "EngineVersion" :: NullOrUndefined (String)
  , "EngineAttributes" :: NullOrUndefined (EngineAttributes)
  , "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition)
  , "ServerName" :: (ServerName)
  , "InstanceProfileArn" :: (InstanceProfileArn)
  , "InstanceType" :: (String)
  , "KeyPair" :: NullOrUndefined (KeyPair)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "SecurityGroupIds" :: NullOrUndefined (Strings)
  , "ServiceRoleArn" :: (ServiceRoleArn)
  , "SubnetIds" :: NullOrUndefined (Strings)
  , "BackupId" :: NullOrUndefined (BackupId)
  }
derive instance newtypeCreateServerRequest :: Newtype CreateServerRequest _
derive instance repGenericCreateServerRequest :: Generic CreateServerRequest _
instance showCreateServerRequest :: Show CreateServerRequest where show = genericShow
instance decodeCreateServerRequest :: Decode CreateServerRequest where decode = genericDecode options
instance encodeCreateServerRequest :: Encode CreateServerRequest where encode = genericEncode options

-- | Constructs CreateServerRequest from required parameters
newCreateServerRequest :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> CreateServerRequest
newCreateServerRequest _InstanceProfileArn _InstanceType _ServerName _ServiceRoleArn = CreateServerRequest { "InstanceProfileArn": _InstanceProfileArn, "InstanceType": _InstanceType, "ServerName": _ServerName, "ServiceRoleArn": _ServiceRoleArn, "AssociatePublicIpAddress": (NullOrUndefined Nothing), "BackupId": (NullOrUndefined Nothing), "BackupRetentionCount": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineAttributes": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing) }

-- | Constructs CreateServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServerRequest' :: InstanceProfileArn -> String -> ServerName -> ServiceRoleArn -> ( { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean) , "DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineVersion" :: NullOrUndefined (String) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) , "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition) , "ServerName" :: (ServerName) , "InstanceProfileArn" :: (InstanceProfileArn) , "InstanceType" :: (String) , "KeyPair" :: NullOrUndefined (KeyPair) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServiceRoleArn" :: (ServiceRoleArn) , "SubnetIds" :: NullOrUndefined (Strings) , "BackupId" :: NullOrUndefined (BackupId) } -> {"AssociatePublicIpAddress" :: NullOrUndefined (Boolean) , "DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineVersion" :: NullOrUndefined (String) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) , "BackupRetentionCount" :: NullOrUndefined (BackupRetentionCountDefinition) , "ServerName" :: (ServerName) , "InstanceProfileArn" :: (InstanceProfileArn) , "InstanceType" :: (String) , "KeyPair" :: NullOrUndefined (KeyPair) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServiceRoleArn" :: (ServiceRoleArn) , "SubnetIds" :: NullOrUndefined (Strings) , "BackupId" :: NullOrUndefined (BackupId) } ) -> CreateServerRequest
newCreateServerRequest' _InstanceProfileArn _InstanceType _ServerName _ServiceRoleArn customize = (CreateServerRequest <<< customize) { "InstanceProfileArn": _InstanceProfileArn, "InstanceType": _InstanceType, "ServerName": _ServerName, "ServiceRoleArn": _ServiceRoleArn, "AssociatePublicIpAddress": (NullOrUndefined Nothing), "BackupId": (NullOrUndefined Nothing), "BackupRetentionCount": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineAttributes": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing) }



newtype CreateServerResponse = CreateServerResponse 
  { "Server" :: NullOrUndefined (Server)
  }
derive instance newtypeCreateServerResponse :: Newtype CreateServerResponse _
derive instance repGenericCreateServerResponse :: Generic CreateServerResponse _
instance showCreateServerResponse :: Show CreateServerResponse where show = genericShow
instance decodeCreateServerResponse :: Decode CreateServerResponse where decode = genericDecode options
instance encodeCreateServerResponse :: Encode CreateServerResponse where encode = genericEncode options

-- | Constructs CreateServerResponse from required parameters
newCreateServerResponse :: CreateServerResponse
newCreateServerResponse  = CreateServerResponse { "Server": (NullOrUndefined Nothing) }

-- | Constructs CreateServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServerResponse' :: ( { "Server" :: NullOrUndefined (Server) } -> {"Server" :: NullOrUndefined (Server) } ) -> CreateServerResponse
newCreateServerResponse'  customize = (CreateServerResponse <<< customize) { "Server": (NullOrUndefined Nothing) }



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
  { "Attributes" :: NullOrUndefined (AccountAttributes)
  }
derive instance newtypeDescribeAccountAttributesResponse :: Newtype DescribeAccountAttributesResponse _
derive instance repGenericDescribeAccountAttributesResponse :: Generic DescribeAccountAttributesResponse _
instance showDescribeAccountAttributesResponse :: Show DescribeAccountAttributesResponse where show = genericShow
instance decodeDescribeAccountAttributesResponse :: Decode DescribeAccountAttributesResponse where decode = genericDecode options
instance encodeDescribeAccountAttributesResponse :: Encode DescribeAccountAttributesResponse where encode = genericEncode options

-- | Constructs DescribeAccountAttributesResponse from required parameters
newDescribeAccountAttributesResponse :: DescribeAccountAttributesResponse
newDescribeAccountAttributesResponse  = DescribeAccountAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs DescribeAccountAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountAttributesResponse' :: ( { "Attributes" :: NullOrUndefined (AccountAttributes) } -> {"Attributes" :: NullOrUndefined (AccountAttributes) } ) -> DescribeAccountAttributesResponse
newDescribeAccountAttributesResponse'  customize = (DescribeAccountAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



newtype DescribeBackupsRequest = DescribeBackupsRequest 
  { "BackupId" :: NullOrUndefined (BackupId)
  , "ServerName" :: NullOrUndefined (ServerName)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }
derive instance newtypeDescribeBackupsRequest :: Newtype DescribeBackupsRequest _
derive instance repGenericDescribeBackupsRequest :: Generic DescribeBackupsRequest _
instance showDescribeBackupsRequest :: Show DescribeBackupsRequest where show = genericShow
instance decodeDescribeBackupsRequest :: Decode DescribeBackupsRequest where decode = genericDecode options
instance encodeDescribeBackupsRequest :: Encode DescribeBackupsRequest where encode = genericEncode options

-- | Constructs DescribeBackupsRequest from required parameters
newDescribeBackupsRequest :: DescribeBackupsRequest
newDescribeBackupsRequest  = DescribeBackupsRequest { "BackupId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }

-- | Constructs DescribeBackupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsRequest' :: ( { "BackupId" :: NullOrUndefined (BackupId) , "ServerName" :: NullOrUndefined (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } -> {"BackupId" :: NullOrUndefined (BackupId) , "ServerName" :: NullOrUndefined (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } ) -> DescribeBackupsRequest
newDescribeBackupsRequest'  customize = (DescribeBackupsRequest <<< customize) { "BackupId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }



newtype DescribeBackupsResponse = DescribeBackupsResponse 
  { "Backups" :: NullOrUndefined (Backups)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeBackupsResponse :: Newtype DescribeBackupsResponse _
derive instance repGenericDescribeBackupsResponse :: Generic DescribeBackupsResponse _
instance showDescribeBackupsResponse :: Show DescribeBackupsResponse where show = genericShow
instance decodeDescribeBackupsResponse :: Decode DescribeBackupsResponse where decode = genericDecode options
instance encodeDescribeBackupsResponse :: Encode DescribeBackupsResponse where encode = genericEncode options

-- | Constructs DescribeBackupsResponse from required parameters
newDescribeBackupsResponse :: DescribeBackupsResponse
newDescribeBackupsResponse  = DescribeBackupsResponse { "Backups": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeBackupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsResponse' :: ( { "Backups" :: NullOrUndefined (Backups) , "NextToken" :: NullOrUndefined (String) } -> {"Backups" :: NullOrUndefined (Backups) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeBackupsResponse
newDescribeBackupsResponse'  customize = (DescribeBackupsResponse <<< customize) { "Backups": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeEventsRequest = DescribeEventsRequest 
  { "ServerName" :: (ServerName)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }
derive instance newtypeDescribeEventsRequest :: Newtype DescribeEventsRequest _
derive instance repGenericDescribeEventsRequest :: Generic DescribeEventsRequest _
instance showDescribeEventsRequest :: Show DescribeEventsRequest where show = genericShow
instance decodeDescribeEventsRequest :: Decode DescribeEventsRequest where decode = genericDecode options
instance encodeDescribeEventsRequest :: Encode DescribeEventsRequest where encode = genericEncode options

-- | Constructs DescribeEventsRequest from required parameters
newDescribeEventsRequest :: ServerName -> DescribeEventsRequest
newDescribeEventsRequest _ServerName = DescribeEventsRequest { "ServerName": _ServerName, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } -> {"ServerName" :: (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } ) -> DescribeEventsRequest
newDescribeEventsRequest' _ServerName customize = (DescribeEventsRequest <<< customize) { "ServerName": _ServerName, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeEventsResponse = DescribeEventsResponse 
  { "ServerEvents" :: NullOrUndefined (ServerEvents)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeEventsResponse :: Newtype DescribeEventsResponse _
derive instance repGenericDescribeEventsResponse :: Generic DescribeEventsResponse _
instance showDescribeEventsResponse :: Show DescribeEventsResponse where show = genericShow
instance decodeDescribeEventsResponse :: Decode DescribeEventsResponse where decode = genericDecode options
instance encodeDescribeEventsResponse :: Encode DescribeEventsResponse where encode = genericEncode options

-- | Constructs DescribeEventsResponse from required parameters
newDescribeEventsResponse :: DescribeEventsResponse
newDescribeEventsResponse  = DescribeEventsResponse { "NextToken": (NullOrUndefined Nothing), "ServerEvents": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsResponse' :: ( { "ServerEvents" :: NullOrUndefined (ServerEvents) , "NextToken" :: NullOrUndefined (String) } -> {"ServerEvents" :: NullOrUndefined (ServerEvents) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeEventsResponse
newDescribeEventsResponse'  customize = (DescribeEventsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ServerEvents": (NullOrUndefined Nothing) }



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
  { "NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus)
  , "EngineAttributes" :: NullOrUndefined (EngineAttributes)
  }
derive instance newtypeDescribeNodeAssociationStatusResponse :: Newtype DescribeNodeAssociationStatusResponse _
derive instance repGenericDescribeNodeAssociationStatusResponse :: Generic DescribeNodeAssociationStatusResponse _
instance showDescribeNodeAssociationStatusResponse :: Show DescribeNodeAssociationStatusResponse where show = genericShow
instance decodeDescribeNodeAssociationStatusResponse :: Decode DescribeNodeAssociationStatusResponse where decode = genericDecode options
instance encodeDescribeNodeAssociationStatusResponse :: Encode DescribeNodeAssociationStatusResponse where encode = genericEncode options

-- | Constructs DescribeNodeAssociationStatusResponse from required parameters
newDescribeNodeAssociationStatusResponse :: DescribeNodeAssociationStatusResponse
newDescribeNodeAssociationStatusResponse  = DescribeNodeAssociationStatusResponse { "EngineAttributes": (NullOrUndefined Nothing), "NodeAssociationStatus": (NullOrUndefined Nothing) }

-- | Constructs DescribeNodeAssociationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeNodeAssociationStatusResponse' :: ( { "NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> {"NodeAssociationStatus" :: NullOrUndefined (NodeAssociationStatus) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } ) -> DescribeNodeAssociationStatusResponse
newDescribeNodeAssociationStatusResponse'  customize = (DescribeNodeAssociationStatusResponse <<< customize) { "EngineAttributes": (NullOrUndefined Nothing), "NodeAssociationStatus": (NullOrUndefined Nothing) }



newtype DescribeServersRequest = DescribeServersRequest 
  { "ServerName" :: NullOrUndefined (ServerName)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }
derive instance newtypeDescribeServersRequest :: Newtype DescribeServersRequest _
derive instance repGenericDescribeServersRequest :: Generic DescribeServersRequest _
instance showDescribeServersRequest :: Show DescribeServersRequest where show = genericShow
instance decodeDescribeServersRequest :: Decode DescribeServersRequest where decode = genericDecode options
instance encodeDescribeServersRequest :: Encode DescribeServersRequest where encode = genericEncode options

-- | Constructs DescribeServersRequest from required parameters
newDescribeServersRequest :: DescribeServersRequest
newDescribeServersRequest  = DescribeServersRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }

-- | Constructs DescribeServersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServersRequest' :: ( { "ServerName" :: NullOrUndefined (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } -> {"ServerName" :: NullOrUndefined (ServerName) , "NextToken" :: NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined (MaxResults) } ) -> DescribeServersRequest
newDescribeServersRequest'  customize = (DescribeServersRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }



newtype DescribeServersResponse = DescribeServersResponse 
  { "Servers" :: NullOrUndefined (Servers)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeServersResponse :: Newtype DescribeServersResponse _
derive instance repGenericDescribeServersResponse :: Generic DescribeServersResponse _
instance showDescribeServersResponse :: Show DescribeServersResponse where show = genericShow
instance decodeDescribeServersResponse :: Decode DescribeServersResponse where decode = genericDecode options
instance encodeDescribeServersResponse :: Encode DescribeServersResponse where encode = genericEncode options

-- | Constructs DescribeServersResponse from required parameters
newDescribeServersResponse :: DescribeServersResponse
newDescribeServersResponse  = DescribeServersResponse { "NextToken": (NullOrUndefined Nothing), "Servers": (NullOrUndefined Nothing) }

-- | Constructs DescribeServersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServersResponse' :: ( { "Servers" :: NullOrUndefined (Servers) , "NextToken" :: NullOrUndefined (String) } -> {"Servers" :: NullOrUndefined (Servers) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeServersResponse
newDescribeServersResponse'  customize = (DescribeServersResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Servers": (NullOrUndefined Nothing) }



newtype DisassociateNodeRequest = DisassociateNodeRequest 
  { "ServerName" :: (ServerName)
  , "NodeName" :: (NodeName)
  , "EngineAttributes" :: NullOrUndefined (EngineAttributes)
  }
derive instance newtypeDisassociateNodeRequest :: Newtype DisassociateNodeRequest _
derive instance repGenericDisassociateNodeRequest :: Generic DisassociateNodeRequest _
instance showDisassociateNodeRequest :: Show DisassociateNodeRequest where show = genericShow
instance decodeDisassociateNodeRequest :: Decode DisassociateNodeRequest where decode = genericDecode options
instance encodeDisassociateNodeRequest :: Encode DisassociateNodeRequest where encode = genericEncode options

-- | Constructs DisassociateNodeRequest from required parameters
newDisassociateNodeRequest :: NodeName -> ServerName -> DisassociateNodeRequest
newDisassociateNodeRequest _NodeName _ServerName = DisassociateNodeRequest { "NodeName": _NodeName, "ServerName": _ServerName, "EngineAttributes": (NullOrUndefined Nothing) }

-- | Constructs DisassociateNodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateNodeRequest' :: NodeName -> ServerName -> ( { "ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> {"ServerName" :: (ServerName) , "NodeName" :: (NodeName) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } ) -> DisassociateNodeRequest
newDisassociateNodeRequest' _NodeName _ServerName customize = (DisassociateNodeRequest <<< customize) { "NodeName": _NodeName, "ServerName": _ServerName, "EngineAttributes": (NullOrUndefined Nothing) }



newtype DisassociateNodeResponse = DisassociateNodeResponse 
  { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken)
  }
derive instance newtypeDisassociateNodeResponse :: Newtype DisassociateNodeResponse _
derive instance repGenericDisassociateNodeResponse :: Generic DisassociateNodeResponse _
instance showDisassociateNodeResponse :: Show DisassociateNodeResponse where show = genericShow
instance decodeDisassociateNodeResponse :: Decode DisassociateNodeResponse where decode = genericDecode options
instance encodeDisassociateNodeResponse :: Encode DisassociateNodeResponse where encode = genericEncode options

-- | Constructs DisassociateNodeResponse from required parameters
newDisassociateNodeResponse :: DisassociateNodeResponse
newDisassociateNodeResponse  = DisassociateNodeResponse { "NodeAssociationStatusToken": (NullOrUndefined Nothing) }

-- | Constructs DisassociateNodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateNodeResponse' :: ( { "NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } -> {"NodeAssociationStatusToken" :: NullOrUndefined (NodeAssociationStatusToken) } ) -> DisassociateNodeResponse
newDisassociateNodeResponse'  customize = (DisassociateNodeResponse <<< customize) { "NodeAssociationStatusToken": (NullOrUndefined Nothing) }



-- | <p>A name and value pair that is specific to the engine of the server. </p>
newtype EngineAttribute = EngineAttribute 
  { "Name" :: NullOrUndefined (EngineAttributeName)
  , "Value" :: NullOrUndefined (EngineAttributeValue)
  }
derive instance newtypeEngineAttribute :: Newtype EngineAttribute _
derive instance repGenericEngineAttribute :: Generic EngineAttribute _
instance showEngineAttribute :: Show EngineAttribute where show = genericShow
instance decodeEngineAttribute :: Decode EngineAttribute where decode = genericDecode options
instance encodeEngineAttribute :: Encode EngineAttribute where encode = genericEncode options

-- | Constructs EngineAttribute from required parameters
newEngineAttribute :: EngineAttribute
newEngineAttribute  = EngineAttribute { "Name": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs EngineAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEngineAttribute' :: ( { "Name" :: NullOrUndefined (EngineAttributeName) , "Value" :: NullOrUndefined (EngineAttributeValue) } -> {"Name" :: NullOrUndefined (EngineAttributeName) , "Value" :: NullOrUndefined (EngineAttributeValue) } ) -> EngineAttribute
newEngineAttribute'  customize = (EngineAttribute <<< customize) { "Name": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



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
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The resource is in a state that does not allow you to perform a specified action. </p>
newtype InvalidStateException = InvalidStateException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidStateException :: Newtype InvalidStateException _
derive instance repGenericInvalidStateException :: Generic InvalidStateException _
instance showInvalidStateException :: Show InvalidStateException where show = genericShow
instance decodeInvalidStateException :: Decode InvalidStateException where decode = genericDecode options
instance encodeInvalidStateException :: Encode InvalidStateException where encode = genericEncode options

-- | Constructs InvalidStateException from required parameters
newInvalidStateException :: InvalidStateException
newInvalidStateException  = InvalidStateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidStateException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidStateException
newInvalidStateException'  customize = (InvalidStateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype KeyPair = KeyPair String
derive instance newtypeKeyPair :: Newtype KeyPair _
derive instance repGenericKeyPair :: Generic KeyPair _
instance showKeyPair :: Show KeyPair where show = genericShow
instance decodeKeyPair :: Decode KeyPair where decode = genericDecode options
instance encodeKeyPair :: Encode KeyPair where encode = genericEncode options



-- | <p>The limit of servers or backups has been reached. </p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



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
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options

-- | Constructs ResourceAlreadyExistsException from required parameters
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
newResourceAlreadyExistsException  = ResourceAlreadyExistsException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAlreadyExistsException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> ResourceAlreadyExistsException
newResourceAlreadyExistsException'  customize = (ResourceAlreadyExistsException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The requested resource does not exist, or access was denied. </p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype RestoreServerRequest = RestoreServerRequest 
  { "BackupId" :: (BackupId)
  , "ServerName" :: (ServerName)
  , "InstanceType" :: NullOrUndefined (String)
  , "KeyPair" :: NullOrUndefined (KeyPair)
  }
derive instance newtypeRestoreServerRequest :: Newtype RestoreServerRequest _
derive instance repGenericRestoreServerRequest :: Generic RestoreServerRequest _
instance showRestoreServerRequest :: Show RestoreServerRequest where show = genericShow
instance decodeRestoreServerRequest :: Decode RestoreServerRequest where decode = genericDecode options
instance encodeRestoreServerRequest :: Encode RestoreServerRequest where encode = genericEncode options

-- | Constructs RestoreServerRequest from required parameters
newRestoreServerRequest :: BackupId -> ServerName -> RestoreServerRequest
newRestoreServerRequest _BackupId _ServerName = RestoreServerRequest { "BackupId": _BackupId, "ServerName": _ServerName, "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing) }

-- | Constructs RestoreServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRestoreServerRequest' :: BackupId -> ServerName -> ( { "BackupId" :: (BackupId) , "ServerName" :: (ServerName) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (KeyPair) } -> {"BackupId" :: (BackupId) , "ServerName" :: (ServerName) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (KeyPair) } ) -> RestoreServerRequest
newRestoreServerRequest' _BackupId _ServerName customize = (RestoreServerRequest <<< customize) { "BackupId": _BackupId, "ServerName": _ServerName, "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing) }



newtype RestoreServerResponse = RestoreServerResponse Types.NoArguments
derive instance newtypeRestoreServerResponse :: Newtype RestoreServerResponse _
derive instance repGenericRestoreServerResponse :: Generic RestoreServerResponse _
instance showRestoreServerResponse :: Show RestoreServerResponse where show = genericShow
instance decodeRestoreServerResponse :: Decode RestoreServerResponse where decode = genericDecode options
instance encodeRestoreServerResponse :: Encode RestoreServerResponse where encode = genericEncode options



-- | <p>Describes a configuration management server. </p>
newtype Server = Server 
  { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean)
  , "BackupRetentionCount" :: NullOrUndefined (Int)
  , "ServerName" :: NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined (Types.Timestamp)
  , "CloudFormationStackArn" :: NullOrUndefined (String)
  , "DisableAutomatedBackup" :: NullOrUndefined (Boolean)
  , "Endpoint" :: NullOrUndefined (String)
  , "Engine" :: NullOrUndefined (String)
  , "EngineModel" :: NullOrUndefined (String)
  , "EngineAttributes" :: NullOrUndefined (EngineAttributes)
  , "EngineVersion" :: NullOrUndefined (String)
  , "InstanceProfileArn" :: NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined (String)
  , "KeyPair" :: NullOrUndefined (String)
  , "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "SecurityGroupIds" :: NullOrUndefined (Strings)
  , "ServiceRoleArn" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (ServerStatus)
  , "StatusReason" :: NullOrUndefined (String)
  , "SubnetIds" :: NullOrUndefined (Strings)
  , "ServerArn" :: NullOrUndefined (String)
  }
derive instance newtypeServer :: Newtype Server _
derive instance repGenericServer :: Generic Server _
instance showServer :: Show Server where show = genericShow
instance decodeServer :: Decode Server where decode = genericDecode options
instance encodeServer :: Encode Server where encode = genericEncode options

-- | Constructs Server from required parameters
newServer :: Server
newServer  = Server { "AssociatePublicIpAddress": (NullOrUndefined Nothing), "BackupRetentionCount": (NullOrUndefined Nothing), "CloudFormationStackArn": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "Endpoint": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineAttributes": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "MaintenanceStatus": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "ServerArn": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing) }

-- | Constructs Server's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServer' :: ( { "AssociatePublicIpAddress" :: NullOrUndefined (Boolean) , "BackupRetentionCount" :: NullOrUndefined (Int) , "ServerName" :: NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined (Types.Timestamp) , "CloudFormationStackArn" :: NullOrUndefined (String) , "DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "Endpoint" :: NullOrUndefined (String) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) , "EngineVersion" :: NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (String) , "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServiceRoleArn" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (ServerStatus) , "StatusReason" :: NullOrUndefined (String) , "SubnetIds" :: NullOrUndefined (Strings) , "ServerArn" :: NullOrUndefined (String) } -> {"AssociatePublicIpAddress" :: NullOrUndefined (Boolean) , "BackupRetentionCount" :: NullOrUndefined (Int) , "ServerName" :: NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined (Types.Timestamp) , "CloudFormationStackArn" :: NullOrUndefined (String) , "DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "Endpoint" :: NullOrUndefined (String) , "Engine" :: NullOrUndefined (String) , "EngineModel" :: NullOrUndefined (String) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) , "EngineVersion" :: NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "KeyPair" :: NullOrUndefined (String) , "MaintenanceStatus" :: NullOrUndefined (MaintenanceStatus) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) , "SecurityGroupIds" :: NullOrUndefined (Strings) , "ServiceRoleArn" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (ServerStatus) , "StatusReason" :: NullOrUndefined (String) , "SubnetIds" :: NullOrUndefined (Strings) , "ServerArn" :: NullOrUndefined (String) } ) -> Server
newServer'  customize = (Server <<< customize) { "AssociatePublicIpAddress": (NullOrUndefined Nothing), "BackupRetentionCount": (NullOrUndefined Nothing), "CloudFormationStackArn": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "Endpoint": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "EngineAttributes": (NullOrUndefined Nothing), "EngineModel": (NullOrUndefined Nothing), "EngineVersion": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "KeyPair": (NullOrUndefined Nothing), "MaintenanceStatus": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "ServerArn": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing) }



-- | <p>An event that is related to the server, such as the start of maintenance or backup. </p>
newtype ServerEvent = ServerEvent 
  { "CreatedAt" :: NullOrUndefined (Types.Timestamp)
  , "ServerName" :: NullOrUndefined (String)
  , "Message" :: NullOrUndefined (String)
  , "LogUrl" :: NullOrUndefined (String)
  }
derive instance newtypeServerEvent :: Newtype ServerEvent _
derive instance repGenericServerEvent :: Generic ServerEvent _
instance showServerEvent :: Show ServerEvent where show = genericShow
instance decodeServerEvent :: Decode ServerEvent where decode = genericDecode options
instance encodeServerEvent :: Encode ServerEvent where encode = genericEncode options

-- | Constructs ServerEvent from required parameters
newServerEvent :: ServerEvent
newServerEvent  = ServerEvent { "CreatedAt": (NullOrUndefined Nothing), "LogUrl": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }

-- | Constructs ServerEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerEvent' :: ( { "CreatedAt" :: NullOrUndefined (Types.Timestamp) , "ServerName" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) , "LogUrl" :: NullOrUndefined (String) } -> {"CreatedAt" :: NullOrUndefined (Types.Timestamp) , "ServerName" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) , "LogUrl" :: NullOrUndefined (String) } ) -> ServerEvent
newServerEvent'  customize = (ServerEvent <<< customize) { "CreatedAt": (NullOrUndefined Nothing), "LogUrl": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServerName": (NullOrUndefined Nothing) }



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
  , "EngineAttributes" :: NullOrUndefined (EngineAttributes)
  }
derive instance newtypeStartMaintenanceRequest :: Newtype StartMaintenanceRequest _
derive instance repGenericStartMaintenanceRequest :: Generic StartMaintenanceRequest _
instance showStartMaintenanceRequest :: Show StartMaintenanceRequest where show = genericShow
instance decodeStartMaintenanceRequest :: Decode StartMaintenanceRequest where decode = genericDecode options
instance encodeStartMaintenanceRequest :: Encode StartMaintenanceRequest where encode = genericEncode options

-- | Constructs StartMaintenanceRequest from required parameters
newStartMaintenanceRequest :: ServerName -> StartMaintenanceRequest
newStartMaintenanceRequest _ServerName = StartMaintenanceRequest { "ServerName": _ServerName, "EngineAttributes": (NullOrUndefined Nothing) }

-- | Constructs StartMaintenanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMaintenanceRequest' :: ServerName -> ( { "ServerName" :: (ServerName) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } -> {"ServerName" :: (ServerName) , "EngineAttributes" :: NullOrUndefined (EngineAttributes) } ) -> StartMaintenanceRequest
newStartMaintenanceRequest' _ServerName customize = (StartMaintenanceRequest <<< customize) { "ServerName": _ServerName, "EngineAttributes": (NullOrUndefined Nothing) }



newtype StartMaintenanceResponse = StartMaintenanceResponse 
  { "Server" :: NullOrUndefined (Server)
  }
derive instance newtypeStartMaintenanceResponse :: Newtype StartMaintenanceResponse _
derive instance repGenericStartMaintenanceResponse :: Generic StartMaintenanceResponse _
instance showStartMaintenanceResponse :: Show StartMaintenanceResponse where show = genericShow
instance decodeStartMaintenanceResponse :: Decode StartMaintenanceResponse where decode = genericDecode options
instance encodeStartMaintenanceResponse :: Encode StartMaintenanceResponse where encode = genericEncode options

-- | Constructs StartMaintenanceResponse from required parameters
newStartMaintenanceResponse :: StartMaintenanceResponse
newStartMaintenanceResponse  = StartMaintenanceResponse { "Server": (NullOrUndefined Nothing) }

-- | Constructs StartMaintenanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMaintenanceResponse' :: ( { "Server" :: NullOrUndefined (Server) } -> {"Server" :: NullOrUndefined (Server) } ) -> StartMaintenanceResponse
newStartMaintenanceResponse'  customize = (StartMaintenanceResponse <<< customize) { "Server": (NullOrUndefined Nothing) }



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
  , "AttributeValue" :: NullOrUndefined (AttributeValue)
  }
derive instance newtypeUpdateServerEngineAttributesRequest :: Newtype UpdateServerEngineAttributesRequest _
derive instance repGenericUpdateServerEngineAttributesRequest :: Generic UpdateServerEngineAttributesRequest _
instance showUpdateServerEngineAttributesRequest :: Show UpdateServerEngineAttributesRequest where show = genericShow
instance decodeUpdateServerEngineAttributesRequest :: Decode UpdateServerEngineAttributesRequest where decode = genericDecode options
instance encodeUpdateServerEngineAttributesRequest :: Encode UpdateServerEngineAttributesRequest where encode = genericEncode options

-- | Constructs UpdateServerEngineAttributesRequest from required parameters
newUpdateServerEngineAttributesRequest :: AttributeName -> ServerName -> UpdateServerEngineAttributesRequest
newUpdateServerEngineAttributesRequest _AttributeName _ServerName = UpdateServerEngineAttributesRequest { "AttributeName": _AttributeName, "ServerName": _ServerName, "AttributeValue": (NullOrUndefined Nothing) }

-- | Constructs UpdateServerEngineAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerEngineAttributesRequest' :: AttributeName -> ServerName -> ( { "ServerName" :: (ServerName) , "AttributeName" :: (AttributeName) , "AttributeValue" :: NullOrUndefined (AttributeValue) } -> {"ServerName" :: (ServerName) , "AttributeName" :: (AttributeName) , "AttributeValue" :: NullOrUndefined (AttributeValue) } ) -> UpdateServerEngineAttributesRequest
newUpdateServerEngineAttributesRequest' _AttributeName _ServerName customize = (UpdateServerEngineAttributesRequest <<< customize) { "AttributeName": _AttributeName, "ServerName": _ServerName, "AttributeValue": (NullOrUndefined Nothing) }



newtype UpdateServerEngineAttributesResponse = UpdateServerEngineAttributesResponse 
  { "Server" :: NullOrUndefined (Server)
  }
derive instance newtypeUpdateServerEngineAttributesResponse :: Newtype UpdateServerEngineAttributesResponse _
derive instance repGenericUpdateServerEngineAttributesResponse :: Generic UpdateServerEngineAttributesResponse _
instance showUpdateServerEngineAttributesResponse :: Show UpdateServerEngineAttributesResponse where show = genericShow
instance decodeUpdateServerEngineAttributesResponse :: Decode UpdateServerEngineAttributesResponse where decode = genericDecode options
instance encodeUpdateServerEngineAttributesResponse :: Encode UpdateServerEngineAttributesResponse where encode = genericEncode options

-- | Constructs UpdateServerEngineAttributesResponse from required parameters
newUpdateServerEngineAttributesResponse :: UpdateServerEngineAttributesResponse
newUpdateServerEngineAttributesResponse  = UpdateServerEngineAttributesResponse { "Server": (NullOrUndefined Nothing) }

-- | Constructs UpdateServerEngineAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerEngineAttributesResponse' :: ( { "Server" :: NullOrUndefined (Server) } -> {"Server" :: NullOrUndefined (Server) } ) -> UpdateServerEngineAttributesResponse
newUpdateServerEngineAttributesResponse'  customize = (UpdateServerEngineAttributesResponse <<< customize) { "Server": (NullOrUndefined Nothing) }



newtype UpdateServerRequest = UpdateServerRequest 
  { "DisableAutomatedBackup" :: NullOrUndefined (Boolean)
  , "BackupRetentionCount" :: NullOrUndefined (Int)
  , "ServerName" :: (ServerName)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition)
  , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition)
  }
derive instance newtypeUpdateServerRequest :: Newtype UpdateServerRequest _
derive instance repGenericUpdateServerRequest :: Generic UpdateServerRequest _
instance showUpdateServerRequest :: Show UpdateServerRequest where show = genericShow
instance decodeUpdateServerRequest :: Decode UpdateServerRequest where decode = genericDecode options
instance encodeUpdateServerRequest :: Encode UpdateServerRequest where encode = genericEncode options

-- | Constructs UpdateServerRequest from required parameters
newUpdateServerRequest :: ServerName -> UpdateServerRequest
newUpdateServerRequest _ServerName = UpdateServerRequest { "ServerName": _ServerName, "BackupRetentionCount": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing) }

-- | Constructs UpdateServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerRequest' :: ServerName -> ( { "DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "BackupRetentionCount" :: NullOrUndefined (Int) , "ServerName" :: (ServerName) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) } -> {"DisableAutomatedBackup" :: NullOrUndefined (Boolean) , "BackupRetentionCount" :: NullOrUndefined (Int) , "ServerName" :: (ServerName) , "PreferredMaintenanceWindow" :: NullOrUndefined (TimeWindowDefinition) , "PreferredBackupWindow" :: NullOrUndefined (TimeWindowDefinition) } ) -> UpdateServerRequest
newUpdateServerRequest' _ServerName customize = (UpdateServerRequest <<< customize) { "ServerName": _ServerName, "BackupRetentionCount": (NullOrUndefined Nothing), "DisableAutomatedBackup": (NullOrUndefined Nothing), "PreferredBackupWindow": (NullOrUndefined Nothing), "PreferredMaintenanceWindow": (NullOrUndefined Nothing) }



newtype UpdateServerResponse = UpdateServerResponse 
  { "Server" :: NullOrUndefined (Server)
  }
derive instance newtypeUpdateServerResponse :: Newtype UpdateServerResponse _
derive instance repGenericUpdateServerResponse :: Generic UpdateServerResponse _
instance showUpdateServerResponse :: Show UpdateServerResponse where show = genericShow
instance decodeUpdateServerResponse :: Decode UpdateServerResponse where decode = genericDecode options
instance encodeUpdateServerResponse :: Encode UpdateServerResponse where encode = genericEncode options

-- | Constructs UpdateServerResponse from required parameters
newUpdateServerResponse :: UpdateServerResponse
newUpdateServerResponse  = UpdateServerResponse { "Server": (NullOrUndefined Nothing) }

-- | Constructs UpdateServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerResponse' :: ( { "Server" :: NullOrUndefined (Server) } -> {"Server" :: NullOrUndefined (Server) } ) -> UpdateServerResponse
newUpdateServerResponse'  customize = (UpdateServerResponse <<< customize) { "Server": (NullOrUndefined Nothing) }



-- | <p>One or more of the provided request parameters are not valid. </p>
newtype ValidationException = ValidationException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": (NullOrUndefined Nothing) }

