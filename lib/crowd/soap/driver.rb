require File.join(File.dirname(__FILE__), 'default.rb')
require File.join(File.dirname(__FILE__), 'mapping_registry.rb')
require 'soap/rpc/driver'

class SecurityServerPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8095/crowd/services/SecurityServer"

  Methods = [
    [ "",
      "findAllGroupRelationships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupRelationships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupRelationshipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidGroupException_"=>{:use=>"literal", :name=>"InvalidGroupException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipalToRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findPrincipalByToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidTokenException_"=>{:use=>"literal", :name=>"InvalidTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "updatePrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :name=>"InvalidCredentialException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "getGrantedAuthorities",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getGrantedAuthorities"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getGrantedAuthoritiesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidUserException_"=>{:use=>"literal", :name=>"InvalidUserException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :name=>"InvalidCredentialException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addAttributeToPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "invalidatePrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllGroupNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findRoleMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "isValidPrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :name=>"ApplicationAccessDeniedException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticatePrincipalSimple",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalSimple"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalSimpleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :name=>"InactiveAccountException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :name=>"InvalidAuthenticationException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :name=>"ApplicationAccessDeniedException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ExpiredCredentialException_"=>{:use=>"literal", :name=>"ExpiredCredentialException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "getCookieInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCookieInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCookieInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "updatePrincipalAttribute",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttribute"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttributeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "getCacheTime",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTime"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "isRoleMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "updateGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addAttributeToGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllRoleNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findRoleByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "isCacheEnabled",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabled"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabledResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findGroupByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findGroupWithAttributesByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupWithAttributesByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupWithAttributesByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipalFromRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findPrincipalWithAttributesByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalWithAttributesByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalWithAttributesByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticatePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :name=>"InactiveAccountException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :name=>"InvalidAuthenticationException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :name=>"ApplicationAccessDeniedException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ExpiredCredentialException_"=>{:use=>"literal", :name=>"ExpiredCredentialException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findGroupMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipalToGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeAttributeFromGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addAllPrincipals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAllPrincipals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAllPrincipalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "BulkAddFailedException_"=>{:use=>"literal", :name=>"BulkAddFailedException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeAttributeFromPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "addRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidRoleException_"=>{:use=>"literal", :name=>"InvalidRoleException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllPrincipalNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "createPrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "createPrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "createPrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :name=>"InactiveAccountException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :name=>"InvalidAuthenticationException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :name=>"ApplicationAccessDeniedException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchRoles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRoles"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRolesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipalFromGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "findPrincipalByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "resetPrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidEmailAddressException_"=>{:use=>"literal", :name=>"InvalidEmailAddressException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :name=>"InvalidCredentialException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "updateGroupAttribute",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroupAttribute"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroupAttributeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :name=>"ApplicationPermissionException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :name=>"ObjectNotFoundException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "isGroupMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchPrincipals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "getDomain",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomain"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomainResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticateApplication",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplication"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplicationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :name=>"RemoteException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :name=>"InvalidAuthenticationException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :name=>"InvalidAuthorizationTokenException", :ns=>"urn:SecurityServer", :namespace=>nil, :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

