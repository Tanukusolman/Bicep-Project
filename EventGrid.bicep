resource symbolicname 'Microsoft.EventGrid/topics@2022-06-15' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  identity: {
    principalId: 'string'
    tenantId: 'string'
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    dataResidencyBoundary: 'string'
    disableLocalAuth: false
    inboundIpRules: [
      {
        action: 'Allow'
        ipMask: 'string'
      }
    ]
    inputSchema: 'string'
    inputSchemaMapping: {
      inputSchemaMappingType: 'string'
      // For remaining properties, see InputSchemaMapping objects
    }
    publicNetworkAccess: 'string'
  }
}
