@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_ADM_TABLE_1036'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_ADM_TABLE_1036
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_ADM_TABLE_1036
  association [1..1] to ZZCIR_CIT_ADM_TABLE_1036 as _BaseEntity on $projection.ID = _BaseEntity.ID
{
  key ID,
  StudentName,
  Dob,
  Email,
  AdmissionDate,
  AdmissionClass,
  ParentOrGaurdian,
  PhoneNumber,
  Location,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  AnnualAmount,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
