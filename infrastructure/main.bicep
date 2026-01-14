 @allowed(['dev', 'prod'])
 param environment string

 targetScope = 'resourceGroup'

 module appService  './appservice.bicep' = {
   name: 'appservice'
   params: {
     appName: 'workshop-dnazghbicep-heath1370-${environment}'
     location: 'centralus'
     environment: environment
   }
 }