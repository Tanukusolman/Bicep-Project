param location string = 'westus3'
param containername string = 'container1'
param databasename string = 'db1'

module APIgateway './apim.bicep' = {
  name: 'apim'
  params:{
    
  }

}

module App './AppService.bicep' = {
  name: 'appservice'
  params:{
    location: location
  }
}


module db './cosmosdb.bicep' = {
  name: 'cosmosdb'
  params:{
    location:location
    containerName:containername
    databaseName:databasename

  }
}


module eventgrid './EventGrid.bicep' = {
  name: 'eventGrid'
  params:{

  }
}

module function './function.bicep' = {
  name: 'function'
  params:{
    location: location
    appInsightsLocation: location
  }
}

module staticapp './StaticApp.bicep' = {
  name: 'staticapp'
  params:{
  }
}
