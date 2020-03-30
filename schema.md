<!-- START dblookup-markdown -->
## Database > **SAS_DEV**
### Address
Consolidated table to hold all types of addresses      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Contact.AddressId`<br>`Customer.AddressId`<br>`CustomerPurchaseOrderRequestHeader.AddressId`<br>`CustomerReturnHeader.AddressId`<br>`DispatchHeader.CustomerDeliveryAddressId`<br>`Supplier.AddressId`<br> |  |
| AddressTypeId  | int(10)  | Foreign key<br>` AddressType.Id ` |  |
| Reference  | nvarchar(100) <br> `nullable` |  |  |
| CompanyName  | nvarchar(100) <br> `nullable` |  |  |
| Address1  | nvarchar(255) <br> `nullable` |  |  |
| Address2  | nvarchar(255) <br> `nullable` |  |  |
| Address3  | nvarchar(255) <br> `nullable` |  |  |
| Address4  | nvarchar(255) <br> `nullable` |  |  |
| City  | nvarchar(255) <br> `nullable` |  |  |
| County  | nvarchar(255) <br> `nullable` |  |  |
| PostCode  | nvarchar(50) <br> `nullable` |  |  |
| PhoneNumber  | nvarchar(25) <br> `nullable` |  |  |
| Extension  | nvarchar(25) <br> `nullable` |  |  |
| FaxNumber  | nvarchar(25) <br> `nullable` |  |  |
| CountryId  | int(10) <br> `nullable` | Foreign key<br>` Country.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| Authorized  | bit  |  | ((0)) |
| IsDeleted  | bit  |  | ((0)) |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrdWF1v2jAUfa_U_xDRl44WCdiqaXujsI9Ko42A7QXtwcQ3YCmxM9upmqH99zlgitNC7LCwThNPROee-J577rWdaQ9jDkJ895azecAixt97jTMIIAiDxqUnyE9QDzrdxq_Tk-YN9pYRmkGkHhEqzzvtV5ceZdKjaRStEBeabpIlYEWPIAQONIAtjt4jHiwQV-Ac_QjtszhBNLtFsQNYr6GzA9m9utqB7DojXzsj39iRfSIzBxRLqQvOZ0L2Gd6lz1VBHn_BKNym8Qz4TlYT--FBAhWEUSvyI3pw5GxerFLi2U6DGLBvvUmeUDmsl8oF48qmBmpGZNFpN2IAEchSTPNiCDEboiQhdH5TQM5Xr31XqAoHVODD6q8kMXTP3z5rCg2-tmQ8ZJiExI10g73O9tX7SV8mSUQCJFUprX35KSUGJKXkRwoEA5X5G3kRe3oyNVq-OEVwG9q4XX2KTLU_amLTNqqHrZpLpga48vtNxkJCXwVwn7OQRLUl1VMOdYANIEFcxsoKtt4dS8bjsUQyFTZoFWtODXA9ua8s3GdUokAWGcMg3wYPUbOfCsli4NbM151To5ZVzOk8lyqWaJN9XWo6quRzEiOe6VL-qabFJfhInVOka1mrFcFpl8s9xfOzkrVUYxSB8IELVaqBhZIDJjIXjLMosud1XLv4ab55CbjjGPgI1J4j5GdA-AAj7ZucWp3VG9bUDvWp5hRHs7paybXqriY6agVHIFNOa69ZqVa7oeuVaBNZRXGcGEZjuUCruczRN9VGS4WNQ2u1995mLlUIMqeAJ-y_cO-AiATJYPEvzJoXGgvqMMnCu1Ddkcg92O9lFWy1SWhDfRSbH8cX4zRH__VjjOM08lGWH8MnwGNH6BDURRlbwXoX_gJ4Dtz9bPCSLZz_zrwRRCu4WJBE5I-04F6n1Wp6xiXVW3obusLXKqOobeNDzjpeX0mN2MePGKVxWhcj7lGp0jijA4zYQl-Uxht3RHPNW_lLow31TbXMmjyN3zI0W62Op238XOv9b17H6YFxcOD-Y-TBlOa5pjJJcXsxa7FvNJbSbaaSyzp-A-e41hU= "Address")
### AddressType
Lookup Table For Address Types      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.AddressTypeId`<br> |  |
| AddressType  | nvarchar(50)  |  |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqVkUGLwjAQhe_C_oehvdSqYAVZ1lvtyYOXRfYie0iTsQZiEpJ0wS3-d1utmIpQZU55fLx587JNGTNo7eao8ReqvKBKKLOAIESKdEeDMVj-j7WQzILTxyBeMagEyVHUEpcuSqbDMUjlQJZCNIRneCflHzF0T0w0f8Qzg8ShZ8rqp-MHnEWfD-h1tu2CbtodbfK-nzYeeXlfoDNVSmeOT0kP-0k3mWLYh63xoNZEay4LH815caG_unRb1bJ3e6q14JQ4rmTvSc2E8I3igts91_Yq-v8YTyYJtAJUcDPsVOd1P22Mz60ruRw= "AddressType")
### Application
Lookup table to Identify application      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.ApplicationId`<br>`Area.ApplicationId`<br>`BulkAssetGroup.ApplicationId`<br>`Contact.ApplicationId`<br>`Customer.ApplicationId`<br>`CustomerFeatureMapping.ApplicationId`<br>`CustomerPurchaseOrderRequestHeader.ApplicationId`<br>`CustomerPurchaseOrderRequestHeaderAttributeMapping.ApplicationId`<br>`CustomerPurchaseOrderRequestItem.ApplicationId`<br>`CustomerReturnHeader.ApplicationId`<br>`CustomerReturnHeaderAttributeMapping.ApplicationId`<br>`CustomerReturnItem.ApplicationId`<br>`CustomerReturnItemUnit.ApplicationId`<br>`CustomerReturnRequestHeader.ApplicationId`<br>`CustomerReturnRequestItem.ApplicationId`<br>`CustomerReturnRequestItemUnit.ApplicationId`<br>`CustomerStockLevel.ApplicationId`<br>`DispatchHeader.ApplicationId`<br>`DispatchHeaderFeatureMapping.ApplicationId`<br>`DispatchItem.ApplicationId`<br>`DispatchItemUnit.ApplicationId`<br>`Feature.ApplicationId`<br>`PurchaseOrderHeader.ApplicationId`<br>`PurchaseOrderHeaderFeatureMapping.ApplicationId`<br>`PurchaseOrderItem.ApplicationId`<br>`PurchaseOrderItemUnit.ApplicationId`<br>`QuoteHeader.ApplicationId`<br>`QuoteHeaderFeatureMapping.ApplicationId`<br>`QuoteItem.ApplicationId`<br>`SalesOrderHeader.ApplicationId`<br>`SalesOrderHeaderFeatureMapping.ApplicationId`<br>`SalesOrderItem.ApplicationId`<br>`SalesOrderItemUnit.ApplicationId`<br>`StockAsset.ApplicationId`<br>`StockAssetAttribute.ApplicationId`<br>`StockAssetTransaction.ApplicationId`<br>`StockLocation.ApplicationId`<br>`StockMovement.ApplicationId`<br>`StockMovementNote.ApplicationId`<br>`StockMovementParentType.ApplicationId`<br>`StockMovementRequest.ApplicationId`<br>`StockMovementRequestItem.ApplicationId`<br>`StockMovementType.ApplicationId`<br>`StockNonOrderedItem.ApplicationId`<br>`StockProduct.ApplicationId`<br>`StockTakeAdjustmentCode.ApplicationId`<br>`StockTakeDiscrepancies.ApplicationId`<br>`StockTakeHeader.ApplicationId`<br>`StockTakeItem.ApplicationId`<br>`StockTally.ApplicationId`<br>`StockThreshold.ApplicationId`<br>`Supplier.ApplicationId`<br>`SupplierFeatureMapping.ApplicationId`<br>`UserProfile.ApplicationId`<br>`Warranty.ApplicationId`<br> |  |
| Name  | nvarchar(50)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(2)  |  | (getdate()) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrdV8uO2jAU3VfqP1jMhtIZaUDqot1lMuqUxbQI0GxQFya-MFYdO_WjEkX99zoQVJsOtQPJPKqsYh2fe--5r2SWFAWjGdZU8K9oPV9mggn5AXXOIINskXXOkaI_wR70B51fr1_1hgStGZ4Ds0eU627_8s054kIjbhgrEZ9xDn8g_AeW2T2W3Xf7uKG6BgYaHL451T4mlYA9BLGvmuYw6A726G4MdXCG0-8GKAGu6YKC9LHbZ5YQIkEpP-xFVgZeP-ze24puuiogAp0Kw7VcPYh0YHfJNBUEQrBbyMUtLgrKl0NP0OUG_d5HV7JeBa07xREMaZZY1qa0HGFpU1cyhlxsJ5Yrw74lSoG-kcIUtaNydd9LeyvupoJrnOmm1E-N0iIHGfRxW_Eh2EQLmU801ka9hDreRd_wXAj5OJI0x3JVpfJUTR9qp9i01ktC5IRKjbQ-ZMFUTTADNQKpbKqug61PqC4Fk4KxcFztlstHS24kVMI1OTL-lTYfWvnwtEKMTLnxFXyRBOQY7B5W-hNgckRHHRZlUyYbC1vqiEKt1zKRXRvbU7HlH9tNT5TBRGtJ50a3WOaHjcfxPNseGGrIH0mv0lTM_nxJRTkGm1be-CCpMV19T3ZSh0SJ3OfO2ouB1ht9kcOs3uKv8VlXaXXw18h1VSm65ECm4r8aqW71PsIQdc09_7FZPmdoDGwDV_e0UNtDhwT1Li76qCpktEY7Qs-Oo9plSfz3fev-0Zf9n8KjaaqJcPz9KscnE_hfrCfTHV7cLVLv91Irpsp1ejKx25KNkh0rwW9YBFxR "Application")
### Area
Lookup Table For Specific Building Locations      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Area.ParentAreaId`<br>`StockLocation.AreaId`<br>`UserProfile.AreaId`<br> |  |
| AreaName  | nvarchar(50)  |  |  |
| ParentAreaId  | int(10) <br> `nullable` | Foreign key<br>` Area.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrVVVFLwzAQfh_sP4TtZdYV2oEIvm0OZKAyHD4NH7L06oJpUtNUmMP_brKtmmyd66Si0pf2-L67-767o9O-BPyAlrNHIpiQF6jVBgIkJq0uyugr6EDYa701G94oQkuGZ8B0iHLVCYOTLuJCIZ4zZhAm0y1O4BPGX7Akcyw7Z9tY73SMJXBlOKWJP5CjbAgMFFigGVVutkudxUFE-lPRBHqd853CG_Bg8XXdGxHRmFZLWmAHi2ra-2nKKMGKCn7Q1aucWpCc0-ccaKStMxWli202prvjjAIIouD4cVYfUWVPj1M-vc9AjqWIKYO6JO0V48KGkGKpEq3-kKCJEjKZKKzyrFbtFrge7Xu2Iybm3P_jdmjnydO1KPPo-6Iq7sdau9PBHzuRH7fg10_EPG10B2wFz-Y0zUzItI9C3_fQ6m2JiiT2vlq-BMWva02yDLW41vD2U63mLaojaZu8oXu-Hx7d7orkrKBd9QCvXGY56x3ZK4Iq "Area")
### BulkAssetGroup
Holds the BulkAssetId Ref      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAsset.BulkAssetGroupId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` | Unique<br>` IdRef ` | (&#39;BA&#39;+CONVERT([nvarchar](23),[Id])) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlMFrwjAYxe-C_0PQi6sWWkHGdrMTRNhA1J1kh5h-1WBMuiQdONn_vrSbmNSidYyeGn5538vLa5dRxrZDpUCPpcjSN3RYrYlgQj6iVhsIkIS0ekjRTzALYb_11Wx4kxgdGF4BM0sruqZcd8KHux7iQiOeMZZDk3gGyQnjH1iSDZad_sCAJ0qNgIEGR1C7Sk8SsEPE5lXTHfQ796WhXvcXjva2x8JgYM99ETFNaD3RIxvtK44zCM4sDNOUUYI1FbzShE2PM2ohGafvGdAYuM4nSpdtNpavCuRUioQycC8qDiCIg4sXVTnfuDWB1cBGkGKpd8bZ5WC97lwLuZtrrDN1Db0lqaUF_8_Zi0SNW_JTf1c0IXn3_9T8IgKyXexTqBFsJMR2wvOLrQGf3C4k5gqTcnRXPJnuxBnRN-x4Fhfup9LZFMtSS-wRlVvqtcX9UdUYUPNfcFsP86eNZsAKXG1oqvIl1xwKfd9D1teKDuioarmy6hXk2lUiljdLxHFcljkT8nw_RKe4LZ1ypmWpb5LL8Ao= "BulkAssetGroup")
### Category
Lookup Table For Categories      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Category.ParentCategoryId`<br>`StockProduct.CategoryId`<br> |  |
| ParentCategoryId  | int(10) <br> `nullable` | Foreign key<br>` Category.Id ` |  |
| Name  | nvarchar(50) <br> `nullable` |  |  |
| SortOrder  | int(10) <br> `nullable` |  |  |
| UNSPSC  | nvarchar(8) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |


![alt text](https://kroki.io/erd/svg/eNrVVE1PwkAQvZPwHzZwwUKTlsT4cUO4cBCJDafGw3Y7hY3bbjOdmijxv1sawS1gAcWDx52-eZn33kz9ISeYa3x9YstgLrTSeMtabRAgItHqsUy-QVFw-633ZsMah2ypeACqKMmEOq5z0WOJJpbkSpWI7pQjJLRm3duwQU94DF_fkxeOYsGxc1kBeRrpAUPAOqbZxJt6wz1c1ybK6nqkMfaIU57VjzbORqCAwAAFkqpihwi8ggiLJ8kY-p2rHV8-wXcHLGk2_P2JhA44ofPXiZzg0NGSfIPyPJr8WQY4RR1JBedyaVCIOQI2gpQjxYWhZzRykKZKCk5SJwdHqFmRSKzO9r-uiHguEg1zQSeLCuS8pLzZ0XXPkzzignIEPMKGWgN-dM6nZ9tmj6BKeLaQabYqrcdirm1bbPNasjXZdnyGW075o6oQGPEZHJVQ6wmM6zMIDEe22w0Cy7bdX0koCcx1MUf4tv0DrqglKw== "Category")
### Contact
Stores all Contact data      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Customer.PrimaryContactId`<br>`CustomerReturnHeader.ContactId`<br>`QuoteHeader.ContactId`<br>`SalesOrderHeader.ContactId`<br>`Supplier.ContactId`<br> |  |
| CustomerId  | int(10) <br> `nullable` | Foreign key<br>` Customer.Id ` |  |
| AddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| Title  | nvarchar(20) <br> `nullable` |  |  |
| Name  | nvarchar(50)  |  |  |
| JobTitle  | nvarchar(50) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| Email  | nvarchar(80) <br> `nullable` |  |  |
| PhoneNumber  | nvarchar(25) <br> `nullable` |  |  |
| Extension  | nvarchar(25) <br> `nullable` |  |  |
| Fax  | nvarchar(25) <br> `nullable` |  |  |
| Mailshots  | bit  |  | ((0)) |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtWE1v2kAQvUfKf7CSSwpBgkhRP24J9CNVSWmgvaAe1t4BVlrvuvtRhaL-966Jqdeu8a4pSVs14oT1ZpiZ997umGmfM4Ui9TlYhfOIUy5eBEfHEEE0i45OA0m-gXnQOzv6fnjQusLBiqIQqHlEmDrpdZ-cBoyrgGlK14h2X0vFYxCVUAt3gbEAKethE6Io5AD2FYlogcTJWQF1jeIq0Hm5uLc83JbwvFTdWHERjxVS2lHhyxgRWpHwWQE1WnAG1zoOQVR1c17IeKuAScKZE_kK3ToxQ1OeXHAlc2RIVJm0IcR8iJKEsLndbkjm646f2xmv5AAoKMA1GfsCUAGBzVdFYjg7efqrYu7Al8v6SQ85JjPil3SDvVz66MKIMUkoiZAyU3dK_LUmFkQz8kUDwcBU-ouiiD08mG78UPQX7kIXd3fxl5dvWu2RIDESy8zcLrRL7sUSRkiYdn2N3kRbrfani0mfY3Al7WthaoiWzsYQBTkCIQ2xA0dKAZiodGCCU-ruy1O2zcQ1zejds1omywR8zm6uTffOhjw5akb8_YzTEvZ-Rjq1umqc0W69kPSjBDESfEYo7I15M08P2AASJFRs_Py7Z8TOis_B--m95tidReli83jsPh67JRFupnoDSgv2BhDeQTrb7O1Yiquhd5XcgNkupFNIvnqzaPGBvhdmDHfD8NCQp0WaCbPBqZPNautdZ5cqJZkzwBO-L8X7Guhe1PtBcwV_g2hHaJleJRMQ8cNLds9UNVDePe0uJQv-b9QW62hAh2UHn8XzX3D4WKfoB19nPJlsoI0MOgS14NgJ1ukbu4R3gOcg_HeEP0lV-jkOboCu4XJBEpk-yiYZ9DqdVrDxVLAKNrlyR1p0dtf_pdiRGW9W4E8ma-Ms91ixBU_VxluXthVfuMpr460XHLvpnID6rvP5253brJTj8wytTqdXNfHyqr6tgkK8vR_ajXglsc6lxrHly6B5guwE8Qn8AReX484= "Contact")
### Country
Lookup Table for Countries      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.CountryId`<br> |  |
| Code  | nvarchar(3) <br> `nullable` |  |  |
| Name  | nvarchar(50) <br> `nullable` |  |  |
| DialingCode  | nvarchar(10) <br> `nullable` |  |  |
| DefaultVATCodeID  | int(10) <br> `nullable` |  |  |
| SortOrder  | int(10) <br> `nullable` |  |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqV0UFLwzAUB_C74Hd4dJdaN2gnMvRWu8sOU9DhZXhIk9cukCYhTYVZ_O62W1dbqXbyTnn8eMn7ZxupQlqzf4MyTqkSytyDM0GKNKHOFHL-gVUjmDuflxfeikEpSIyianFp3cC_moJUFmQhRC0ixfCbyHdi6I4Y96ZirXkk2ZC59btoyYngMv1lXtC3mJBC2NdwU_PVcuCNrX1Rxj4ZhuYvFBkkFju7supoeYZzd_Fj4WNtQ8YM5nk_xITWMf4_RO-6GbfZazxDNz84KDvslM8IW2Om1kTrKv0ujXl60Hd93UT1MHp7qLXglFiu5OhKdU3gGcWB5zuu82Oz2RS82SyAJiQo4TSsDaKTuV8P_AIi0uM8 "Country")
### Currency
Lookup Table for Currencies      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Customer.CurrencyId`<br>`CustomerPurchaseOrderRequestHeader.CurrencyId`<br>`CustomerPurchaseOrderRequestItem.CurrencyId`<br>`CustomerReturnHeader.CurrencyId`<br>`CustomerReturnItem.CurrencyId`<br>`DispatchHeader.CurrencyId`<br>`DispatchItem.CurrencyId`<br>`DispatchItemUnit.CurrencyId`<br>`PurchaseOrderHeader.CurrencyId`<br>`PurchaseOrderItemUnit.CurrencyId`<br>`QuoteHeader.CurrencyId`<br>`QuoteItem.CurrencyId`<br>`SalesOrderHeader.CurrencyId`<br>`SalesOrderItemUnit.CurrencyId`<br> |  |
| Name  | nvarchar(50) <br> `nullable` |  |  |
| CurrencyCode  | nvarchar(20) <br> `nullable` |  |  |
| Symbol  | nvarchar(20) <br> `nullable` |  |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| SortOrder  | int(10) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |


![alt text](https://kroki.io/erd/svg/eNrdWEFv2jAUvk_af4johbFWKkjTtN0oTBoHVgZsl2oHYz_AmmNntlONof33JkCovaW1Q5KWIk5YX579vve9L8-56cVSAserH8F6tsCCCfkxaJwBBjzHjfNA0T-QLLQ7jb-vX7UGJFgzNAOWLFGum-3LN-cBFzrgMWMp4gsK4R7Cb5HESySb71LcHpRt2RMkD9yxwJNVOBPMCfv0O1nkCxgjbcQkgGmIWLPdsUIKqa8lAZmTzB40UH1goMHIeEa1nW1PArIQJPmraQid5vt_iBkKQue0GPZq9RCVJnr7u-nFSosQpF3HOU4rWbyOrbddQiQolYs0YCOZECyTUnKNsHahJ1rIcKKRjpXHEUYokYnOEnPFHkIohiiKKF8MrKItNugPNvp7d5rKzxU0k6ozMcRAjUAqwQd9R0gJhOqUMCkYc-e1E9mV8wzdKGIUI02TM7jI3ctlFKeyUrDphzH8ikHpz4DIAUIymbYLuWFns8M2tEd9iinFU6y-UvKtuq-InryCAw1hhfVzbeVRzxdF6Rh0LHnlbfCo_PKh25NkVLtI8TRhw6t8oMUa17MVi7m1yw0M6I6r6SpyiqirFF1wIFNxUoaw1UxNFmC2hqf5a4F_jqQgsS3NkkZRQBL10N2nKkIaL4_hbflML7akqmJ-PU8GZXoLstKS7RLKQtfiKvXqouIGtOXm27QvrJdSzr5xqmvg7bE5JcewkncDnJRdWbPbUUz4_mOIr71N4pQRrwGrkBdVaprH4FGWGGpouv_iF1VRdiZfHRW-XFbf4Z7lf3Yj-BoLDcdwtxmhVQhcT0GGT3-zObGqpr-zYAxsA1dLGqntYpZn0Lq4aAcZ9cE6yMLdE2FU_tL8TGs_-vAHo4qDphZQIqR5USkd5sCz2DNbiQAl98_c9IAQOWND2SglTmN4l9fTd56Z3AA= "Currency")
### Customer
Stores all Customer data      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Contact.CustomerId`<br>`Customer.ParentCustomerId`<br>`CustomerFeatureMapping.CustomerId`<br>`CustomerPurchaseOrderRequestHeader.CustomerId`<br>`CustomerReturnHeader.CustomerId`<br>`CustomerReturnRequestHeader.CustomerId`<br>`CustomerStockLevel.CustomerId`<br>`CustomerStockLevel.ParentCustomerId`<br>`DispatchHeader.CustomerId`<br>`PurchaseOrderHeader.CustomerId`<br>`QuoteHeader.CustomerId`<br>`SalesOrderHeader.CustomerId`<br>`StockNonOrderedItem.CustomerId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;CUS&#39;+CONVERT([nvarchar](22),[Id])) |
| AddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| SageAccount  | nvarchar(8) <br> `nullable` |  |  |
| CustomerName  | nvarchar(60) <br> `nullable` |  |  |
| PrimaryContactId  | int(10) <br> `nullable` | Foreign key<br>` Contact.Id ` |  |
| AccountSetupDate  | datetime2(7) <br> `nullable` |  |  |
| StormStatusId  | int(10)  | Foreign key<br>` StormStatus.Id ` |  |
| ParentCustomerId  | int(10) <br> `nullable` | Foreign key<br>` Customer.Id ` |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| SalesPersonID  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| CreditControllerId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtWV1v2jAUfa_U_xC1Lx0tElTqvt4oaFuldWXA9oL24MYXai2JM9upxND--xxIqE1DbEMYqEN9Iro-uT733I_cDtsJFzQE9sOb3o99GlD23js5BR_8kX9y4XHyG-SD5uXJn-Oj2g32pgG6h0A-IpE4azZeXXgRFV6UBEFqcYN7MHqyiR4R8x8QO7u8koYLq9p5C2MGnBfiLcz6aAwt36dJJAog36qm-S2-oBAKbF839Nd3GQkRm7RpJJAvyr3IPOiDSOIOEgo8lr8ECeHy7I0O3xeUhX2BRMKNjElnEINI5Dcod6Z2fgshvUVxTKKxanpPxjPrd7r199agTTGYQNsJkz74E5NdHwXAu8A4jW46BkgGmIiUYUaDwHQvaS3JxKu41QnLjK8N7t5STEbEDjS3vZ4UqOfqecxacRwQHwkiiTBF-GNCFJMkIr8SIFiGPH0j022Pj4ZZauj5iBvQwA33fFxk2mASg4V1O5U6M-rAUlZuWrUMqxv5wyzHq6LTNk2tCpy5UuwZmYq71RA6LG4_G8vddGuXBnCo5-71fFsCVNhyVoxKqQaakVqVBF0iOswjVVE6fePAuoyOSFDZdVoykBZmHYgRE6FUfoU1z0kbh7v_n3dXjKu5-2wMK5wbRn76YXSYG5yHsMIuvz6bhy7_ort8zuoHCZ4wKGz4FuJZ1fAN2aibZj7slohukn6JcrhjGFgP5AckF58A4TUyajUpM5nM3jCHthCqW8pYZq1tTtnK3zabthrBHkgVRZXHzEHIuieZiIykWJZOpcLYmLqpzFI3bjXWoYNmXK1coaiuck7GEeABfYHq3azwrDMYFRQoS5XZR3e7zElH_J-f4RGCHRBmMaMsMZx6K78jcKLnfEkBOrC3d-x1CI-R8B_2YULYUTOXUaCju1EHAvII5n22S7nILpRDb6U5bUcX2hS5F-OjfUG31VE_SRmxTVf7oFeqzn0Qw9eECtiHebSLJun2aAAs_PfTaMWB3fXYkf6dej0IZub8gcQ8fZRT7TXr9ZqXVSxv6uVYixqmRL2h_lt9fjCjXzm4vGApP6-wo2BonBkcyH8pHiw16XIAJfEUDC0dywEyHSiHF8owuT4XmnLySXvlR5XdrkqbutRZB-D5qmdNlFzG5ccVGavKU8W9DKBA1Or1ZoH-LOI-P7mBcDQAfSO1gSerNzobgKpLho1hqnLqaYavGsQthPpUvIYvBePTGihK37U6_Rdtm89E "Customer")
### CustomerFeatureMapping
Customer feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lctuwjAQRfdI_IMFG8pDCkhV1e4gtBULJNQHG9SFiQew5Njp2KlEUf-9hhIwryS0VFllcnR9Z3wdj_xYGxUCPgA1MUKfRhGX0zeyGE8DJRTekVIZAggmQalONP8EW2i2Sl_FQrXHyELQMQhbGvMpl6bSvL2qE6kMkbEQK6iWLODSK9Q7QNcejpIbbEhFDFtAflAMZhQr1_t6PX0v6VjAjkuzz3RBgEllfLS2XILZV8NDaFVuDrv9gTvz9Cb6ivEJzyeasJ15nq6rtXYUCR5Qw5XMnPljzB0klvw9Bs5AmuWKuMsWC6NkL3fjwTzwmJcajxMb3mYMQev0WVVrA-QhxbmvpKGByaKfjcLw2dgo6RwWBhRtu6khdeg-hGp9RE6l36GH7RdfMcgS9WO0HoJ5ZmNUgB4Aarux3QxJBMbNcmCohMjuK2dszwvXaH2eL5WW_zH5qgEHqCZcXMxo2xrNgXUhomhCG7-_Rvq3vTvwZXpPnjJ5ArHS1TMe6WXp-EVDmo1GlSTfyIIk8tsT6bjwVv_jFKF1zdHZ3CnnyDiZcC1t83eOmDNkR2xnn_blioVvKJJkMQ== "CustomerFeatureMapping")
### CustomerPaymentTerm
Lookup Table for Customer Payment Terms      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `QuoteHeader.CustomerPaymentTermId`<br>`SalesOrderHeader.CustomerPaymentTermId`<br> |  |
| Name  | nvarchar(100) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNrllD9PwzAQxXckvoOVLiW0UtMFwVbCQBcotGKJOjjOtbXk2JF9QSoV3538UakTJVgdOiFPOf38Lu_eJVGYG1Qp6AXdpyBxBTpdk0O8ZUoo_UC8ATBgG-aNiOFfUBSCqfd9feXPE3IQNAZRlLjEYTC5GRGpkMhciJJ4oSmcEPlJNdtRXXAl-EvNzRMIQLDUYo5NpVADbRBJ8Yg8henwrtW0PtFbrhCegSagm2Y2rLTzp5mYbys_9y1p__Y4Kqf1E2pNtfOWfUVJpAxd2JIKMAvQRkmnYq41SLZ3cR-zVagScHZGpdMlUsyNs3Od2KOz9SzLBGcUeY8be6pRZf1VF6H-z2ib73FGHNbn0DeOy63NRXahPAPyDqLCzY5npi52pEP88Tgg1gzIgRzFO8O0dmhS_X_6NNsLea7wDxXiuiE= "CustomerPaymentTerm")
### CustomerPurchaseOrderRequestHeader
Table to display any Customer Purchase Order Requests      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerPurchaseOrderRequestHeaderAttributeMapping.CustomerPurchaseOrderRequestHeaderId`<br>`CustomerPurchaseOrderRequestItem.CustomerPurchaseOrderRequestItemId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` | Unique<br>` IdRef ` | (&#39;CPR&#39;+CONVERT([nvarchar](22),[Id])) |
| DateRequired  | datetime2(7) <br> `nullable` |  |  |
| SalesOrderHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderHeader.Id ` |  |
| StormStatusId  | int(10)  | Foreign key<br>` StormStatus.Id ` |  |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| AddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| CustomerId  | int(10) <br> `nullable` | Foreign key<br>` Customer.Id ` |  |
| PurchaseOrderRequestType  | nvarchar(50) <br> `nullable` |  |  |
| PurchaseOrderReference  | nvarchar(30) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrdV02P2jAQva-0_yFiL5QuUqBaVe2NhX5wQKUs7QX1YJKBteTEqT2plqL977XDl5MF7GSzrVRxInp58zzzZiae9VOJPAIxTkVwTyR8ESGICfxMQeJnIOrPD289XwaccfHea1xBAMEiaFx7kv4G9aDTbTxeXrSGobdmZA5MPZrTJY2x2Xn36tqLOXpxypgGDcMJLA6w-BfRIUWze6OAe9SAIOj4VIDBGaqnSCPoNt-a4NbrO8JAZqI3ak8JMV9BLqI7JJhKE51B_YJmpRgExAEc0X3j53l7YShAHuc0YLuMn8cdq8d0ldh1FF48Lf_NE11CQ1fndX14UC_HS5ioghjlgYBGhDU73Tzn9960z0M4TznlSFifS7TxZcCxoAE4IafkwYYbygEwQMiZBvMW6AsgeNqLJlQlcQO-tWRxxEO6oG6kO-zt6lTt8xJ6ScJoQJDy2GrvTyk1IGlMlc9oCDHqiCKPvbyYFZstPxpCH_zQrzQaLF1xHDomq0hJnYKIrD3HYyQB2mDZ-cYgpEPq7HPEgH5NOYLzgHLrRMfucvZkOefMjNOXtsFxxu38rIdtP4710HQxFU9jFHWlfAQRH5EkofHSpd4vUqBdm9ScT5tGNZ8jIlauHVdiFytuovoC3RZo2SK4NpNjb5qjZGDtz5CiTpjgjNnP9VJ22RyspmbeprMu85Wp5eybVMtB8AVltcXvqZw7wAaQEIF6Kz3X-FXLaIDrOXu2-O23hB6ioPMUYVulfPBFoO8Nz_w0OB3cjeejaptUwL9qr9OHGCJEfylfOtR_8gWif1feBFgGl_c0kfqR3S1ep91uecVvWW_t7cI9vVMalfCzO4FrkEOXm_xm71el3q5jg3a_oKtS7nAG52HXVifdWClHunNXVdKt7wzOvROrUhpLw5R6cG7lQh08bRbLdHqR2om81W53vPKD-Uhxzw3WCqe2CtNDyFHGZl4VRfwBYAYFTQ== "CustomerPurchaseOrderRequestHeader")
### CustomerPurchaseOrderRequestHeaderAttributeMapping
Customer Purchase Order Header Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| CustomerPurchaseOrderRequestHeaderId  | bigint(19)  | Foreign key<br>` CustomerPurchaseOrderRequestHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lUlvwjAQhe9I_AcLLpRFCkhV1d5YunBAraDlgnpw4gEsOXbqpRJF_e81KYtDWxwQVU6xvsyb53mOJ12jtIhBPhkZzbGCR0lADuHNgNIPgO1LW2tJQ6NhgJOE8tkrWoazSDAhb1CpDBFE06hUR4p-gF1otkqfxUK1T9CS4RCYXQrpjHJdaV5f1BEXGnHDWArV_OL56twB1kaCC6dkYMktNsbMwA7g73glKiuXwV69vrrlOGSQkdb7TA8Y6INMV9q2XILYV01jaFWufm7FN9xZHDYxEIROab6iG7azyOO6WmsnCaMR1lTwX5tw6XtDHcRwamdGCXC9UpRZtliY-AedTRUJICDBiakaYQYqVTicIfcTLWQ80jZFymvdbhQhEpQ6PKlduv2clMCjhY8bt5-7goC3XL4kHTfvyfqIHT2mP7bwf5p8UTZiUkwpO1ujbdtoDqwHCZY6tgfAZ8gXtVO9O_B5vG-eMhoCS-uqOU3Uaun4SwM1G40q8n-HlmjTVJ7LwXEVpL_cExtbp9tR314p55Jwsuma3J2Dcwk5QXCEMlnalyoWvgDyRJ0C "CustomerPurchaseOrderRequestHeaderAttributeMapping")
### CustomerPurchaseOrderRequestItem
Customer Purchase Order Requested Items      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| CustomerPurchaseOrderRequestItemId  | bigint(19) <br> `nullable` | Foreign key<br>` CustomerPurchaseOrderRequestHeader.Id ` |  |
| Description  | nvarchar(150)  |  |  |
| ManufacturerName  | nvarchar(25)  |  |  |
| PartNo  | nvarchar(75)  |  |  |
| RequestedQty  | int(10)  |  | ((0)) |
| UnitCost  | decimal(12)  |  | ((0)) |
| UnitPrice  | decimal(12)  |  | ((0)) |
| Type  | nvarchar(25) <br> `nullable` |  |  |
| UOM  | nvarchar(25) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlk1v2jAYx-9IfAeLXhi0EkGqqu1Godo4pGWU7oJ6MPYDteTYme1MZWjffQ5vcWiI0whxSvTz_3n7Pw7zYaKNjEBNEkXesIYnRUFN4XcC2owNRK9os1gRyaX6hlpXQIAsSesaafYX7Iug3_rXbHTGFG04XgC3rxZsxYRpB1-_XCMhDRIJ51uo6wt1TuUoMQJNFIsNkyIjxR-cyql2cNs7CRlikSwxMYkC9YgjKDjUvz05M8HKPMoC8u6U3GcO9KdZZ_w269NEXgQzQ6lNhlEgLMK8HfQL0IliBCqws3V8tqZM8Cn0MulslAJB1u4MjqUcuYd3e1isYIrNufwczV-D2VBSKJecSYN5SW_yYFln8uQMv_u4sR4BBztA13Ym3-KhApwjqH00LIJ---6jwXfwvaeLoaRsyaqJHtj7dcEQPxi-0x3EMWcEpytSmIRLf0-YgySCWT8zCsKkEVWebTbmZev7A7B9yN8VtAc92qt5VzxjDnobYSftvRvsESNV9GywSbS3dNsoShVoXT6p7M7yc1X2p-JOVHbS5-Y9PyT56TkVy-1ruYxapxtCJEMcx0ysvNOev2hrRCWXjF8s_sD2vAI2gth-IiK7Jr7Z-AxZd4wOfJnaD78rNAW-1dVvLNbpK983GwU3Nx3kvxrQBh1S8P8NcCrobS_hikns3J0LddjKepJ7hzuKx_2tJ-jY1k0z2_Z6so4jHNmcqU6Fm43_WXA0yg== "CustomerPurchaseOrderRequestItem")
### CustomerReturnHeader
Store Customer Return Header data      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnHeaderAttributeMapping.CustomerReturnHeaderId`<br>`CustomerReturnItem.CustomerReturnHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;CRH&#39;+CONVERT([nvarchar](22),[Id])) |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| CustomerReturnRequestId  | int(10) <br> `nullable` | Foreign key<br>` CustomerReturnRequestHeader.Id ` |  |
| ContactId  | int(10) <br> `nullable` | Foreign key<br>` Contact.Id ` |  |
| SalesPersonId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Reason  | nvarchar(255) <br> `nullable` |  |  |
| Action  | nvarchar(255) <br> `nullable` |  |  |
| SalesOrderHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderHeader.Id ` |  |
| AddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| RequestTypeId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| AssignedToId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_CustomerReturnHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_CustomerReturnHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_CustomerReturnHeaderTotalPrice]([Id])) |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrlWF1P2zAUfUfiP0Tw0nVUaiuhaXsrZR88oHWl20u1Bze-LdYcO7OdiQ7x3-fQhtohqW2aMiTEE-nx8b3H98ueDjOpeAJiDCoT7AsgDOJndDtbxJxy8SE6OoYY4nl8dBJJ8hf0h17_6O7woH2Bo1uKZkD1pxlZEKZavfdvTiLGVcQySnPQBR7DfANjf5CIr5Fo9U818AHVflsYYXLeE3ZLhBvoyt4x_M5Aqsp15iLOFIqdsCtEQY5ASM62Q8eANKbSMcuzQayID2699VehxV8dQZ26xpIBxgKkdDl1CQm_RGlK2MKD9EpxkVwppDLpkmAOAlgMFd6dlkxYn9JkmYLL2oGUZMEAT_h25IQrRIdcqg0IQ0wSRFu9_iPgSBDT0C3ICbpx4fIYFLnry-0mfrzRYrAFjJECN-ePwWTIsUOfoQBNZkCw_leRBPqtd48zZQU-c5h5yTGZEz_SAnu2rDt124RBmlISozwJnKn9OSMGJGNExwzBwFS-o7CxhwfTog7YtQp3oYu7W2tVTV3xzCYdSQkSS9-C4sgm24QR0lGlttbCJ-e1V3j5RrZdKc8dlAIwUblgglPq9sszbMOCa1rZNqq63dMjKKCJeTeagIK8N-VWof4sKoXnY4A8YQmzHzG_SxAjweeEQmOFSxvqATuHFAmV6ALToKRBvpdHnGAB6qbMJ82PI7TMxZiASJ5peiyVAH-Vv2VcgfdY6FvCfTvCXvJgnd0NN-_aAbMUAjzTzagpgV5CWTFsaCyrpkaENnNOe2B8zfW0SPSGpFyHe1MyhqTFqz5GA9yM79b1yHzWGSglyCxTUFkq5nH-0LNjAza381v5SdfDTMBLuBVcKEhehCY61OJfOh9wZk8dO3b8_32VyP-OozHQe7i8JqnMP1XpFPU6nXZU_BLdRgXxZtIzTqV7_zbipKm4-1Uwlx4WA7ZZjYkmZTE4-pMYldAgskZLf7LyxF1mtN4b_WnX05bB9nBZ8ycx-oNBZHWNAEc3kW36aMb7rmTWG-au52m-cobE8SrPraAtUt-fZt3oDZaHSXdXv4yyERBOmxJiSmQWljJZDV270-lFPp2vNu2DkqFiu7yFBJP_A-8XEy8= "CustomerReturnHeader")
### CustomerReturnHeaderAttributeMapping
Customer Return Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| CustomerReturnHeaderId  | bigint(19)  | Foreign key<br>` CustomerReturnHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lU9vGjEQxe9IfAeLXChJpCVSVbW3DemfHFAjoLmgHrzrgVjy2tvxuBJF_e51CCRmu8EmTcVprZ_fvBk_4_nIWTIV4ATIof4CXADmRCgLRzDmdS318jtbF8vSKIMfWO8ESigXZe-MWfkL_MLwove72xlcC7ZWvADllwq5lJr6w_dvzpg2xLRTagOdtpVL2_kJuN8CIbwhM08-YrdcOXgC9E-O5R3H_tusoXdtP2peKNgrTU3mChTQQWaE3lZICP9JsoKL_ru_m3-AL1eHmxgbIRcyTXTHXq5Suh6c5nWtZMlJGt1qIqQ_OxkgTssfDqQATfcVcZ_tduZtR7ufHJFBJrJ_TE7UdjNkE_C-LR2eud9kNPEyik25AnsDaJ8ZYBP9in4Mh3MeHo8QCNbGlMdQme3dTBCdksFqSv76RIW3s5qtaoihubVyqUHMTHSyDhF0uYpxt_lsZES0cOItOi7r8-3fy9GBfS6C_8XkNwt4g2Yh1asZzb3RBOwKao5U-csfTX162o7qPYBfp_fd74RNQG107Z2s7f1SyqPIhufnA9ZGsjXbFW5_7gKv2eYRSS63TWlQ4fFZfLlokKrQ-lOCXy4dHFogvXfuTfFu5w93zb4b "CustomerReturnHeaderAttributeMapping")
### CustomerReturnItem
Customer Return Item level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnItemUnit.CustomerReturnItemId`<br> |  |
| CustomerReturnHeaderId  | bigint(19)  | Foreign key<br>` CustomerReturnHeader.Id `<br>Unique<br>` CustomerReturnHeaderId ` |  |
| SortOrder  | int(10)  | Unique<br>` SortOrder ` | ((0)) |
| StockProductId  | bigint(19) <br> `nullable` | Foreign key<br>` StockProduct.Id ` |  |
| ReturnedQty  | int(10) <br> `nullable` |  |  |
| TotalUnitCost  | decimal(12) <br> `nullable` |  |  |
| TotalUnitPrice  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1VsFuGjEQvUfKP1jkQiFIgFRVzY2QquWASoH0gnIw9rCx6rW39mxVivrv8S7d4IWFNSoRJ6znN-M382ZnMUwt6hjMFDA1aoQQP5HNMmJaanNHGjfAgK1Y45ZY8QfcQa_f-Ht91RpxspF0CdIdLUUkFDZ7H9_dEqWRqFTKHNQuk38BysGE3Jxpg1-NA--gOa57EGGGmv2YGM1ThseYX-HbNIB_w3UF8StsrpHKRyVwqC3ugByYiKls9vqV4IkRDOrQmSTGgGJrP9nDFD79Zs9URTClGMDpRDDxDCmm9jTtyD6ABISSUFjWdGiAlhDc_UURQ7_54bDAW_B9zXPGmouVCCMtsPdejdQvapwgpvn-sAMGSSIFoyi0qkzCR39OhQdJlfiZguCgMItoytjrq0VV-5bdwbvQ5d3_dEdt2vtGmoLL2-Jpzd0lrZCyWtiMSrATMPaIgPvQ3JinveyXh3MD1tYxjyHWY5okQkUBpMEN32r_02q-TqAOOrBWRG48zHWtskEmbrW_D-ZDzWsDB7rovF5f-KPxgl07pipdubZKTVjnupdF2qxDoG8iQ1GrsyU4qmrRehdifLRgXJlWQsJlGJ1ATskA2AMk1GDs5l-t8cMNd1ZxPPBl3l4xt7OdJvtAlwOsWLbZXGSvyQKE3cst6cYMYMCQO28kvol5st8NmYLM4fZZJDY7Onw-6XU6LVL1vSQbUoSo3ga9EnTz_eMIuT_OPNLyAhhKVgyFUnbFTD8jo8IU5YR2Vgml8maAn9KupqFEXnU9olLN96kqyVqdTo9U--hoRbc-2Kd_ASej8jc= "CustomerReturnItem")
### CustomerReturnItemUnit
Customer return at unit level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetTransaction.CustomerReturnItemUnitId`<br> |  |
| CustomerReturnItemId  | bigint(19)  | Foreign key<br>` CustomerReturnItem.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| UnitCost  | decimal(12)  |  | ((0)) |
| UnitPrice  | decimal(12)  |  | ((0)) |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| Credit  | bit  |  | ((0)) |
| ReplaceItem  | bit  |  | ((0)) |
| RejectItem  | bit  |  | ((0)) |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1Vl1v2jAUfa_U_2DRFwZFAqSpWt_4kDqksSHaPqE-GPsCXh0780clhvbfF4e1cUIgzkrFE8nxuR_nXOcuRlYbGYGag7FKTAxEj4KZJ7RbronkUt2ixhUQICvSuEaa_YbkQa_f-HN50ZpQtON4CTx5tGRrJkyz9-XTNRLSIGE5T0HtwwBh5-6NJM8DrcEcw7-BXcYjqU0Go0BYhHmz1y_wOuhMMQIB2DmsQIHwseIFK7LBqvm56ycwUkCZ8bM0RaqYYwKu-pOon0BMBajVnkIkpziOmVhXtmaix8DBAD3BmGSPcwia_DUsgn7z5lDOPXi49UOncXMdmUrKViyM9BU73B5rdD6FQRxzRrBhUpQm4aPvLPMgVrBfFhgFYVxElcdeXiwOzZqfBNqFLu2eZRK-AqagaszCTElqSfU0uEDK-bZCopRWRfcGG6uroIGy1xNnkc34Gduckj5sY6iM32oPpXyeiEedF-IIOMv2QWGhMSkW-T4BS058kyc6WZrZDCfKh3gkOxJmgKHle_idkjYOMeGHOMa7-85mmYXTPxFnxTjUJj3ilUFSfQBsDDFWJipI9s5ZrdVQD3ye2tN7tHRU8vwr4taK_51xzEH_UO4C_bexBDhyZt0nRUPdc2OmY2zIpsaR71K8RQm6sMuWsICDU_kCzj1zSL5r2oSG-4jRdL8rNAeewvWGxdo9Ki8N9TqdFjp8h3boNUjZ3ui5pZtuLifIMwt6pP5SWYfMu3Y8ttwiVofOu3D8ijNZ6pB5InlkOemKdEcJW51OD5UO70ll9m4tRvkLZGL8LA== "CustomerReturnItemUnit")
### CustomerReturnRequestHeader
Customer Item Request Header      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnHeader.CustomerReturnRequestId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;CRR&#39;+CONVERT([nvarchar](22),[Id])) |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| SalesPersonId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Reason  | nvarchar(255) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrlls9v2jAUx--V-j9Y9MJCkQJSNa03GqSNAxoCtgvawcQPasmxs2dnUob2v8-h0DppFicdO02csD76-v34-r1sokwblQAuwWQol_A9A20-AWWA38hhu4-VUHhPejcQQ7yLe7dE859gD0bj3q_rq2DGyEHQLQh7xKXpj8J3t0QqQ2QmREHM2BJ2L4z8QTF-pNgf31nwmQoG50C8gsFgRQXoBaBWspZ-RpdALVN7eeX2lVGYrAw1mW6WnOkpCDDgQFtuyhFGCLREMPvX8ATG_fevkjnBD3nzvXPF-I63Ez2zD3lN6nev6zlJU8Fjavgf6unSHzPuIJnk1jCcgTTFjVhmr682566WvcRCCFnY3Us2VMYQtKdHwWCBPKGYR0oaGhsf7Wt-OYQFRZtuo10deg6JmtM05XI_K3lmf6Q_lOmvk3WkGPhEowxtDHHuTcx5KFOPJALjpigYKiH8ebW0bTdzbb5owAWqHRdwMcfYQFtgU0gpmsR29m_d8tbcHd3L5P5fV9OBL5N7aZw9bcu6NbmLi0XZKO--_couaL8Da_e299G2nIdt9-sJ_Yy2DE_FaDHjWo7wboOzg41OtVrnqXfOTrTmewlsrS41kdsO-H8xXYvfDVmCOOL6kae6OGr4AiSj4TAgZ4AcyFn_xaiO08Pjt49PzRlKjmDJcp01ne67mq4nLhSn05jOik6vHMVSB6uazarBcDgidSOpplOVOVG96DfJFdER "CustomerReturnRequestHeader")
### CustomerReturnRequestItem
Customer Return Request Item Level information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnRequestItemUnit.CustomerReturnRequestItemId`<br> |  |
| CustomerReturnRequestHeader  | int(10) <br> `nullable` |  |  |
| SortOrder  | int(10) <br> `nullable` |  |  |
| StockProductId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| ReturnRequestQty  | int(10)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrFVU1r4zAQvRf6H0R6yToNOIWltLdkC91Aw3aT9hR6UORJKipL7mi0kA3739d2PyK7dmyXhSUni6c3b968UZbfnCUTA86BHOo5PDuwNCWIH9hutRFGGbxkvRMQINaid8qs_A3pweis9-f4KJhGbKf4ClR6JDX1R-GXU6YNMe2UyhCV9N-BR4AVN9-vLQzSD2wABYMFGfF0iyZygnwpK7nJ4Rc-vCDhJ20blE_tFSggKNBSqTsEXkBE6SfJGM765yW6YPAKnmwrTXsHzkwk17Id6Rt24jWjf3EUjxz7X8MPEsZJoqTgJI1unNy1kx7EaZn6JiPQlFXEIvb4aJmPYmwtUDE4UQhhFB4Mjj-tot6c9G6bQKPaYDAx5mmq7y1gC_Be7R1ybbkoW9KgqSFzFTduzAHfK5Xdckzdboy1f2VBnJxtKjFx6gV-jcYlLQq0TG63fC2zUaU-rqWCzpGpGes4FdoCdgUJR4pL7tZMA-N2rnbq3QP_m97zHax9y--1LK3lWmQv-ifXsrZOp81rEbwZxGbGk0Tqzf-KafY7YXNQOdw-ysRmR7UWsNFwGLB9l2zH3viLL4fnfVj7T7ln9LbFo_Ra7sjneeDxFZwpMx7iDIbDETuYP191fX7KNf8ChvnJqw== "CustomerReturnRequestItem")
### CustomerReturnRequestItemUnit
Customer request Item Unit level information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| CustomerReturnRequestItemId  | int(10)  | Foreign key<br>` CustomerReturnRequestItem.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrFVU1rAjEQvQv-h2Av9gtWoZT2phbKQoWi9iQ9xOxog9lkm0wKVvrfu67Yzar7JULxtOHNm8x7L850YA2qEPQI0Go5gk8LBn2E8E1yfCfr2YIpofQjaV0AAzZnrRti-DfEB51u66fZuPIDshZ0BiI-mvEFl9juPFzeEKmQSCtEArrO7eOWJ7XeQe0YFVv2jAHM6-WAhxCqIY0iLhelaN88gQCEDA6z7QcaaAYRxJ_IQ-i27w-n3IL7q6NT_QGHKuBzXo10h-2vUrT8opp9UN2-OxSrF0WCM4pcyVJpny13IFby2BUegMRNR53FNhvTXA-zOQk88AKvMCdFRr9qFVhWxeqKatfTZJqmrfZY-fFPSCerCCqo0Fdq6cs3A7rW25hoKg1l-0OW3KlE7SMVL6pAyaM3e6U6zlQFQ9OSMVK0pqxF34ot_FkrG_1bYpy_nLNFZrrxPzZnzgWc63n14ukrwJ4gohrDPctyLNZhNatqCeqAzzP77ndBRiASXvPBI7M5KlyApHN7e0VyIWRNdm0L9ptzXS_ZKOUd04fgtHDX4AmcTkod0sy6PIHViamrRvrOTuB07Hc4MwnaZ202fgExKNXR "CustomerReturnRequestItemUnit")
### CustomerStockLevel
To store Customer stock levels agreed with customers      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id `<br>Unique<br>` CustomerId ` |  |
| ParentCustomerId  | int(10)  | Foreign key<br>` Customer.Id `<br>Unique<br>` ParentCustomerId ` |  |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id `<br>Unique<br>` StockProductId ` |  |
| QtyMin  | int(10)  |  | ((0)) |
| QtyMax  | int(10)  |  | ((0)) |
| SortOrder  | int(10) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| CRMGuid  | uniqueidentifier <br> `nullable` |  |  |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtls9P2zAUx--V-j9Y5dIVkFKkadpuJZUQ0iIKZbugHVz7tVg4dvZsI0LF_46bKdQpZXFZd0M55enjr96Pr_NykzpjdQ44tZrdfYd7kL_IcrZgWmr8RnoHwIDNWe-IGPEIPjA86T11O4NzTpaSzkD6kFC2P0w-HRGlLVFOyoo4rJUj0AlFUHaHA1W2E9TcMRviM7GoTnzdOHFpy0yoFtkVRB9aoKlGe4EccAv3Ap2bMUiw0MjMNoVSBNoguH-1IoeT_pfXvfwDn5Zbe_MCZpqLuYgTrdnTck2re4rslmL_82bZ6VV25kQg7JT47UBwP7eVDAZZDA5HRSEFo1Zo1TrMNtmQ7XZuapM0XcoTSHjyHpeOOEcw5u999Q5FkVMsU60sbVpuG-3tifnUUuvMftwf0BnkOqNFIdTiLecH9M_Rdao5tImmDn0OrGwtjEowE0DjBztukUTgwq4ahlrK9roiLb6buT7s8mGXXewS7pWdLfPW8vFDoMrNvREcRm231Fe20FjGoP-lDT8MoO_CXEjY28XxiUZgYygo2twb_F8vzXtrD-D91F4_B-QKZKVrbkVhVqHXP19keHw8IHWcLEktvb7vQQZJtZrjRTY_HbFS4bUI5Jp_YbFigbnC-tZGjhUKJhUINYa9KdXtPAMvR3Mh "CustomerStockLevel")
### Department
Lookup table for departments for Userprofiles      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `UserProfile.DepartmentId`<br> |  |
| Name  | nvarchar(50)  |  |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqVkDELwjAQhXfB_3DUpdYKtiCCW9HFRURxEoc0Xm0gTUpyOlj877aKNIqgctM9Ph4fbzfHkhkqUNEeqvTItdRmCl4POfKMeyFYccE6iGLv2u0EiwNUkqUo60go8qNRPwSlCdRJyoZYsgJbRJ2Z4Tkz_vidmxlkhE7boX5JFBj7kzf0cbutRbMyOhMSX1Uz3sj-rxoMklriB6zd6CPskBvSptgQo5P9hiZlKQVnJLT6qtBcD9Yo77jNRWkfYWsGwXAYgbMRVPDsdP2dmUZN9Q30s54D "Department")
### DispatchHeader
Despatch Header to show despatch information at header level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `DispatchHeaderFeatureMapping.DispatchHeaderId`<br>`DispatchItem.DispatchHeaderId`<br>`ProofOfDelivery.DispatchHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;DIS&#39;+CONVERT([nvarchar](22),[Id])) |
| DateRequired  | datetime2(7) <br> `nullable` |  |  |
| SalesOrderHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderHeader.Id ` |  |
| CustomerId  | int(10) <br> `nullable` | Foreign key<br>` Customer.Id ` |  |
| DispatchMethodId  | int(10) <br> `nullable` |  |  |
| RequestedDispatchMethodId  | int(10) <br> `nullable` |  |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_DispatchHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_DispatchHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_DispatchHeaderTotalPrice]([Id])) |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| CustomerReference  | nvarchar(50) <br> `nullable` |  |  |
| ProofOfDeliveryId  | int(10) <br> `nullable` | Foreign key<br>` ProofOfDelivery.Id ` |  |
| CourierRef  | nvarchar(50) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| BoxesShipped  | int(10) <br> `nullable` |  |  |
| CourierCost  | decimal(12) <br> `nullable` |  |  |
| CustomerDeliveryAddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrNWE1v4jAQvVfqf4jaCxuKBEjVavdGYT84oLLA7iXagxtPwJITZ22nKlvtf68DpNh8ZdKm6iq36PnleebNjJ1gwFRKdLj4DoSC_O093s1DwYX87F1cQghhFF5ceYr9BfOi0734d37mD6n3yMkdcPPqjs1ZohudTx-uvERoL8k4z0FDOoFoC0vuiQwXRDa61wb4jBoQDRP4kzEJFic1bzWLodv4aIP95pRwULfS6FyrPSbEWtLPlBaxC13h2o6OTRBGoBeCnsbmekFpoFUWzYQmvC-UtnYJIYsJb3S6e8CxZCGgkDPyUIbLYyAlJOHytMQvDyZByRwmJvrlnL96s76gcJqyCL6xAuQK4IAhrtsu8VgKEd1GA-DsHmSJ5r7IJFvxI5inWsh4qonO1GnWG_EAarpgaQqYr2PSujVisbEepRJUiRK_OYJYjEiasmRe6vahMuSgwcFpty77Eog-Xmw21Gheg29KsjASlEUMR1pgb5bHMuZK6KUpZyHRTCQHRdjobxmzIFnCTKEyConOvyhd7PlZsNtN3N5H29Cm7Rf1vpKucxg6JsvYSJ2BjMs80ReJJqEug632NwapEKGrUB1-80cmNFTowJjug-woaE9Wc05QZKGyB45EE1ndptHHRC6xCS1JkSthTEzYNW7-Vesz-FwhU287dVCafsp0HjApOC_f11vZZb2xeuwSbMJZl_mq5DLYmbfvocFvuodQTFPBpTWwSqamXG0qu-ZGMVumgBkWIjPGr6uVVsvR21SSpaG2-Rv8VGaeShExXltN9czuEbABpETqfJC_tpm_NKAWuJ69r85KboF-NU7IJBzMWxTmt8YXnptwfcBdsxHzPoOgEDzUEL9zHNDDFm-8t4nZyYmDCNt_PXHy59KbAF8FQ5lLpMpfuZ_zOq2W7-3eP7xHr-Dd_9FhRaRt_7GwCYuznkW0Pf7hCNYWcggKV2EINoPHWv88ijDLd5xh0ez9FcDQWU63Y2v7H0OzGdEHorp3l8fQWT61KB33YmisGWcr27oUtbVt3VokTjXv0uwR-a1Wxzs1Hyzm3aor0ehQ5y32lVTH_VXG9gRO1qlW "DispatchHeader")
### DispatchHeaderFeatureMapping
Dispatch Header Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| DispatchHeaderId  | bigint(19)  | Foreign key<br>` DispatchHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lUtrAjEUhfeC_yHoxvqAUSil3fnow4VYautGuoiTOxrIJNMkI1jpf2-0MzYzyjyKZVYTvpx7bu4JWYyoCrB210-ACcgHwDqUMMFBQPnqHe2WK1cwIe9QrQ4uuJ5bayNFP8EsdHu1r2qlOSZox_ASmFla0hXlutG9vWojLjTiIWMHqJUsU2xPZMaGD6RjyCM2xyyEX4BvsHTXWDaunZTeWN1zvGSQKK3TzAgY6ExmKI0tmyDmV1Mfeo2bkxYieLDNbmIiCPVoMdGYHWyLdN1s9YOAURdrKvhZEzb9GFILCTn9CIES4HpfUSbZamWRHGoyLcQBhzh_TMsMM1BTaUSz82KfdKi08JPo6UHvOSmBu9s8bt5_HQoCedizFMKbeiY2dAMyV3WmhfRn2uRa5Rv9aSiW7hMiQeVum4Avoutb5NSK5bNcihbRxS0diLNq_2XyTYE00_Mou5jRvjFaABtBgKX2zbW6YFxK9W7Bl-k9_uroBdhBV61poPZLWQ8M6nY6TZQk0A7FpdKPhuXL2VfNl47WLM3jo1JezEqMJWils7ykNQhLMjHLtGi18g0RF3Dn "DispatchHeaderFeatureMapping")
### DispatchItem
Dispatch information at item level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `DispatchItemUnit.DispatchItemId`<br> |  |
| DispatchHeaderId  | bigint(19)  | Foreign key<br>` DispatchHeader.Id ` |  |
| SortOrder  | int(10)  |  | ((0)) |
| QtyOrdered  | int(10)  |  |  |
| QtyRequested  | int(10)  |  |  |
| QtyDispatched  | int(10) <br> `nullable` |  |  |
| QtyOutstanding  | int(10) <br> `nullable`<br> `Computed` |  | ([QtyOrdered]-[QtyDispatched]) |
| TotalUnitCost  | decimal(12)  |  | ((0)) |
| TotalUnitPrice  | decimal(12)  |  | ((0)) |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lsGPEjEUxu-b7P_QsBeEJQESY_TGglEOZFfY9UI8lPYNNHbasX2zEYn_ux0247QDMkUxnGh-_fr69XvtLCfCZhTZZoqQfiG71Zppqc070roBBixhrVtixQ9wA4Nh6-f1VWfKyU7SFUg3tBJrobA9ePvqliiNROVS7qFuKfsRKAcTM2ehDd4bB1fonuvXuE-43WPAm8E5fMvBYgxaFnyUDRbP0SJVXKj1KfJRI5VPSuBYW6xADkykVLYHw1oJv_kHIxhETOh0x7kxoNh2erLk99_Zhqo1zCn-SdbTXKA26QIp5va07NROQEJg7UpgWOLYAA0I7v6iSGHYfnO4mxf4rmE7M81FIuJES_ZuW9HqmRpniGm_7h-UMMoyKRhFodW0KTIfcuEhuRIuaYKDwmJFE7LXV8uwH8JG433o8_5fNtqCSrD7hjjdakFuLOo0RA-Njs1Xp_t59DjWHJqwB6N1cp-42IhnMI2q0UmsNlRKjzg3YBunzSDVM5plrpNjXIvL53kpWpYen52I43KeaRdSfLJg3MklQsJlFJ1BzskIbAIZNZi6lrpgVM46HA--zN6Dq6B4cYsLP5ROWPHu_uOrW0hHXh-o2deRtYBRF0fchXBO6_6Prip-N2QOco_bjchsMeS7Qwa9XoeEtzLZkVK2_vninUe_WOFQqvTGE6nsap7uWeYpBEY2i3i96pdRWdws4dnsSQTm10VqMp1eb0DqGT9i7UtG62K_AAa8Vlc= "DispatchItem")
### DispatchItemUnit
Dispaytch information at item unit level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetTransaction.DispatchItemUnitId`<br> |  |
| DispatchItemId  | bigint(19)  | Foreign key<br>` DispatchItem.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| UnitCost  | decimal(12)  |  | ((0)) |
| UnitPrice  | decimal(12)  |  | ((0)) |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1Vk1PGzEQvSPxH6xwSQORdiNVVXsjCaKRShsFOEU9ON5JYuG1t_5ATaP-d9YLy9rLhnghKKdYb948z7yZ9XxMVYY1WU80pLec6t9ou1gRwYT8hjonQIAsSecMKfoP8oN40Pl_fNSbJGjL8AJYfrSgK8p1N_766QxxoRE3jBWgU5c6LOJaC3J3rhToXfhnsNU6EkpXsAQITTHrxoMar4VOJSUQgL34S9aYr2CG9S64o3dkpARONq7aQmrk4_J7yfRaY23U69CJGgMDDd7ttS9xJAF7iCT_q2kKg-6XFxV9Ag_3SLwSCV3SMNISO9xUaH6PZV442f0cvZBwnmWMEqyp4I0iXPSloQ7EcPrHAE2Aa5tR-tjjo7nrMN-4SQRREr3TuN8BJyDDYg5uheDetavwvJqxA1asIL3ZZLA3f-90KMTdhN8qv7I7wJXaG4m5wqR-yT2aplIkhugWET_EK5VsVDbFeef3byw3JMwAQ8Me4ZdSmCwgwcc4prR2a7_sNGA5AQditF7KG72kDA7DmBcor2QAbAwZljqttf-dc9-qOQ74MHcvFmvj2Pn8S2IfB2_dF5iB-iXtdn16dwS4e2rsN0ZB27j6Eycg5Kfgz1lC5s4oLVKQM9BG8hZ5rsQ9WPfMIP_QKR2a7iPG3P5O0AxYAVdrmil7VC8eivv9HnJP0RaVxP6Lz_FGZDM0U1VWc4jch2AYTbmkHJLqkxyspBxRX0o1uGFEzj5y5VRdC6NxuufQeD2tEzVQ9fr9GDXO847GPVq3zvwAA9TfYA== "DispatchItemUnit")
### Employment
User profile related table to identify employment start dates      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| ID  | int(10)  | Primary key<br>` ID ` |  |
| UserProfileId  | int(10)  | Foreign key<br>` UserProfile.ID ` |  |
| StartDate  | datetime2(7) <br> `nullable` |  |  |
| EndDate  | datetime2(7) <br> `nullable` |  |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqNkj-LAjEQxXvB7zCsjecfyNocXCeuhZ0oV4nFmoxnYDYJyVjo4ne_qKgR71hJlckvM--9ZDWtHNlDhYbXUG9-pCXrvyDroES5ldkAgj5iLOSj7NRu9WYF1FRukGJJG-7m4mMAxjKYPdGF6H8H9HNvt5pwphroJZeei5Lxwam4Y13hqPsZ4Ts5NeotbuIxHqj_uHR4u7VKtD7bVwKFEq_2VaP9cRTwBlagi9bPuf8JJ-SSra9iULwPTejYOdKyZG1No4Tb6sAC6XIl7LQL59LjT0A-HPYgSQlquHV9euckKXHt_gsMurnJ "Employment")
### Feature
Generic table to hold all the additional feature information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerFeatureMapping.FeatureId`<br>`CustomerPurchaseOrderRequestHeaderAttributeMapping.FeatureId`<br>`CustomerReturnHeaderAttributeMapping.FeatureId`<br>`DispatchHeaderFeatureMapping.FeatureId`<br>`PurchaseOrderHeaderFeatureMapping.FeatureId`<br>`QuoteHeaderFeatureMapping.FeatureId`<br>`SalesOrderHeaderFeatureMapping.FeatureId`<br>`SupplierFeatureMapping.FeatureId`<br> |  |
| Alias  | nvarchar(50) <br> `nullable` |  |  |
| Description  | nvarchar() <br> `nullable` |  |  |
| DefaultValue  | nvarchar(50) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrVll9v0zAUxd8n7TtY3UvJVimdhBC8dauAPUyMVvBS8eAkN-2V3CTY10ij4rtjl7SzS5s_iEyL-pTo5JzjX67rLN4DJy3hG9tEyzgXuXzHBhcQQ5zGgyum8CeYG-Prwa_zs-AuYRvBIxDmFmY0HIevrliWE8u0EFYxEcjVkyb7wWW84nL42gr3qimoWGJBmGdHtL4y5VrQVy401NreqSkIIHBKRkh-wVtplusqEnNJuIbr4ZuDtQSXpfjm8ei698L7PMEUm5nutDePp5bjV5gUhcCYW1S18D9odCQ6w-8aMIGMbKL0tedniy8K5IPMUxQHLz8JIUzC9i_ftDXAGsimUHBJa9OsGmxwOadcrudkJlTVSduQWjji_7P2LdFbrShfgyy31D0vCsyWfkAa271VGRDhcpvx9u-BLAMaMC471FFrOOIt8e56Pmg72Ao-yQTkDMw8KvoI3FxMiCRGmjqEdDq8mc-LIDgD0yF7NmZuXA8oTVEVnOLVn8KdbTs_pgdcvNHvGM6RrB4Q-qxzgo7JOBk9IDLnAtRzDMxhUB_YaKvukkkZ8MIPdvu7YDMQW7laYaHsrbISG49GAXM-K9mG7eycOg6i0Jp6TzttnKe9jofPPzkEo9GYHf8Ic8z2AE8V8Wyaf8L8c0TVGd_atOpIbG1We460djz5v9vaqfr_qr3d0S3exOY3_Ynk_w== "Feature")
### HighValueThreshold
Non related table to show High value Threshold      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| ThresholdValue  | decimal(12) <br> `nullable` |  |  |
| Created  | datetime2(7)  |  | (getdate()) |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |


![alt text](https://kroki.io/erd/svg/eNqVjrEKwjAQQHfBfwjtEqWDLYjgqIsOLiIu4pAmZ3NwTSRJBS3-u1GhlW5y0z3ePe60wUofBTVw0A68tqTOrC0racm6JUtSkCAvMsmYxwdEkBfJczyabhVrSZRAEaEJPJ9NMmZsYKYhehtd7hPvZQUSa0E8L-JBZ68diAA_TRXXgDUUfDEI76zCC_7nru69bW7CSS0cnw9f7idleyAR0Bqv8eq_8AXqVV1T "HighValueThreshold")
### Manufacturer
Lookup tables for Manufacturers      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockProduct.ManufacturerId`<br> |  |
| ParentManufacturerId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Name  | nvarchar(50) <br> `nullable` |  |  |
| IsVisible  | bit  |  | ((1)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqtUrFOwzAQ3Sv1H6x2CWkjJZUQgq2UpQOoooKlYnCcS2rh2JF9QSoR_46bCmpDlVSI0ed37-69d5t7KuucMqw16BfSpAVTQukbMhoDA5az0ZQY_g62kMxGH8NBuMxII2gKwpa4xCCJL6ZEKiSyFqJFTFZUg0SX-WTTd8cDLeH4L9-oZluqg0sPtDTP3PBUOMiUoz96oYEiOLMy-0Rewiy4-rHlcLB5MqBXWuVcgK88iyHO4r8on9sFzoDdQUU1ltakbmPCyRqVLtdIsTZ90HlVCc4ociV7V2j1W272ag3Iaoa-ATnbh99pQMqLlvn6l7je3H34wkZUKL07B3qI93b331aMySOIFm62vDL7kquCJFEUEudcSEO-OE_dumNcfBjhsYVRlBDXfIeum-gTvTYnwQ== "Manufacturer")
### Memo
Generic table where memos and notes will be stored      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `Memo.ParentId`<br> |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| ParentId  | bigint(19) <br> `nullable` | Foreign key<br>` Memo.Id ` |  |
| Notes  | nvarchar() <br> `nullable` |  |  |
| AllocatedToId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| IsViewed  | bit  |  | ((0)) |
| IsCompleted  | bit  |  | ((0)) |
| CompletedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| CompletedDate  | datetime2(7) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |


![alt text](https://kroki.io/erd/svg/eNrtVc9PwjAYvZPwPzRwwcGSjcQYvfHjwgFDRL0sHMr2DZp0a9MWDRL_d7cpo53ANo0nOa55733fe33pvClEbIF2y5XPKBN3qNUGH_zQb_WQJG-QHLj91nuzYU0CtKN4CTQ5WpIViVXHvb3qoZgpFG8ozUDdVG6KOSfx6hRBQ8-wgFiVAu-ZAnnAxC9Y-GssOqbYgFLmYwXBI9MVMzlHh07kM4FXMKYq08hEjljEKaizKKubo4bb8zNz4DjZ8AAMki9FIuh3bswNx1A2fCQAGwhTq7DnJ7hsyykLSEiqie6xw-2Rm7l2Cuhmw9OqYRYucMAJnB8Vzvte31-o_VF9a1SzRqMqX6r3JEHMBAsJhdpR5XJmToNkdAXYGDgWKiqEdMzLXDERzRVWG1kGHXBOSZImYXHpChfv_9N7_uCYxkM__bld3gYjpzZ6AJrFKteEy_QotYpc27aQZhrt0F7IiEKL08l-DAZZY-0jOU3QGqvxjITqko3MapMPKRapX2TLtt2qPj8A8Hjo7A== "Memo")
### MemoMapping
Memo relationship table to act as between parent and memo table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.MemoMappingId`<br>`Contact.MemoMappingId`<br>`Customer.MemoMappingId`<br>`CustomerReturnHeader.MemoMappingId`<br>`CustomerReturnItemUnit.MemoMappingId`<br>`CustomerReturnRequestItemUnit.MemoMappingId`<br>`DispatchHeader.MemoMappingId`<br>`Memo.MemoMappingId`<br>`ProofOfDelivery.MemoMappingId`<br>`PurchaseOrderHeader.MemoMappingId`<br>`VATCode.MemoMappingId`<br> |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNrVV7Fu2zAQ3Qv0HwhnSZ0EiLMU7ebIQzMEEWy3i9CBps42UYpUSaqAa_TfK0YyQilxSSlUk0CTiePj8d27x3NyC5m4xXlO-eY72q82RDAhP6PRCRAgazI6R4r-hnJhcjX68_7d-CZFe4ZXwMqlFd1Qrk8nnz6cIy404gVjJiiSgDVYgWn5U9MMrk4_tkKrL5mmqQSlmhmsicnhnxncH3_Zwhyf1XDLXQ4e0ZEouJa7JyOtsG_TZSRScIVZhB7jyj67ouraefo0zxklWFPBnVdKIsE1JjoUnVGhtMhAOnOsaHeFLbSQ2UJjXag3QWZ9-8DidOUYS5phuatL-VxOmynEWALXvmXtVgTPNokKWeZAnKVaYAYqBqnKUs0ckBJSqg1hUjDmvtewcpmDLiT_AjjtIZ1jzuroxadDq0zm8LMA5RSSr96ssviE3smShooMDw15tkg3YXawnZqro--HnapSdMMhXYpQivdtoP-g3hsN2VdO9QD6fTjAb19ZPfKjJBu0R6lf07PR7L6hCbXO8XCIN0fqjKoca7INbqs9TMr3-Qzc97EUYn23ngGjv8A9tXZwvcOFDtCDuPAwujA5BFRDtytV05TPs8aYIOb2Ho-FyHIGXkR5Mpq0hBNqnO3GVbOBw-kliQtJtliB1cMvaw8dJiRfJ1kUpie8Zr9ObR_Un16DHdSpvoTEzXeC5sDuU1Vbmqtq0QJB44uLCartFe3RAbBxjpXopQF-tL-e1Pvvr1X3bAD7n04gsMOcFAiuNX31Rm26V28Ys9B7c8vG--M8NszeWHW_-e7_C0uSbcQ= "MemoMapping")
### PaymentMethod
Lookup table for payment methods      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Supplier.PaymentMethodId`<br> |  |
| Name  | nvarchar(20) <br> `nullable` |  |  |
| Description  | nvarchar(255) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqVksFLwzAUxu-C_8Oju9S6wVoYgrfaXQYqosPL2CFN3tZAmpSXVJjF_93GOm3HoEpOefzy3vu-L5sndihRuwd0hRFbaPI9N8rQLQQT5Mh3PJiCle_YFuIk-Li8iFYCGsVyVG1JahfG86spaONA10p54pGV-IvoN0a8YBQmnvuBlmg5ycpJo8-xi0UfXtklKnTYm5xLN5yaEbIBIdqrkyUm4c3Jgt3ZvNRVpSTSUPWOe93_Vx1dp0IQWnuW7GGZ0Y5xN4Z9B7NGKv-IdhmOwrW32OI9ij2SX4aMUkhj717TdWYEjqrrYrg7jIGpN58z_wFGvfVnAs-ovnBbyMp2xYFyiGazGI6pQgPHnif-9LKd--6fHqfv0A== "PaymentMethod")
### PaymentTerm
Lookup table for payment terms      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Supplier.PaymentTermId`<br> |  |
| Name  | nvarchar(50) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqVkUFLxDAQhe-C_2HoXmrdhe2CCN5qvSyoiC5eFg9pMrsNpElJpsJa_O82ltVUhChzyvDlJe-97QM7NKhpg7Z5gb7ac6OMvYJkhhz5jidzcPINh0W-St5PT7K1gF6xCtWwkprSfHk2B20IdKeUJ-5Zg9-IfmWW18ymF577gtbuBhUSBmKVpKlQaZFNCDEcSTa4Si9_vDnO9qlrWyXRTo3suLfyfyPZeSGERed-JQOsNJoYpxgWJP1H9A6pNiIKdz5hh7co9mj9Z6xRCm3s3nOxKY3AqLuxhutDDCx8-JyRNDqarZ8ZPKL6xF0tWzcug5AgWyxyOHYKPRwVJ0EGvS698gdnH96- "PaymentTerm")
### ProofOfDelivery
Linked to Dispatches to identify proof of delivery      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `DispatchHeader.ProofOfDeliveryId`<br> |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| DispatchHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` DispatchHeader.Id ` |  |
| URL  | nvarchar(255) <br> `nullable` |  |  |
| IsCompleted  | bit  |  | ((0)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |


![alt text](https://kroki.io/erd/svg/eNrtlV1rwjAUhu8H_oegN64qtIKM7c6PiwkTh87dlF3E5FQDaVOSKHSy_760m1taP1rBu41eNTx5Oec95239ZylEMA1GwNkWZPKGdssVEVzIB1RvAAESkHobKfYO5sDr1j9qN86Yoh3HS-DmiEW66bm3bRQJjaIN5xnRmkAoJjiOWbSy6SVbZRfuzQWLHjEVY03Wj4ApyNILi9nTLxFtsSRrLJvdXs-GxmoowpiDhpyczlc6VqbzEmYoAecIal41C6HbvDto_BseJEdN-gEngrKAVRPds4PkSNe9ove1G98yPz9P6oJL3bPztA23Zf38jK6m67TmmIOaSiNacfzG5I3SIsyjhx6nnJQQkaSMe-2_DAWFMqyQlTJ8roUM5xrrjSov9KuhvXSfUgmq9NplKau4mk6rH8ecEayZiEqj7i8USGNMwDhcvBQnPh59U2gFbAQxljqESF9xEpf0noXtXC4Ckn5B_3PxB3ORPg00A57has1ilR4VrEJep-Mgq1y0Q3vZXBPWDrmp_FGd_CpaUsX_ayU1K9iWlGVWUeVQx-l0vNNVHaxNUfAT5BG1RQ== "ProofOfDelivery")
### PurchaseOrderHeader
Purchase Order Header information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `PurchaseOrderHeaderFeatureMapping.PurchaseOrderHeaderId`<br>`PurchaseOrderItem.PurchaseOrderHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` | Unique<br>` IdRef ` | (&#39;PO&#39;+CONVERT([nvarchar](23),[Id])) |
| DateRequired  | datetime2(7) <br> `nullable` |  |  |
| SalesOrderHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderHeader.Id ` |  |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| SalesPersonId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| CustomerId  | int(10) <br> `nullable` | Foreign key<br>` Customer.Id ` |  |
| SupplierId  | int(10)  | Foreign key<br>` Supplier.Id ` |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| Approved  | bit <br> `nullable` |  |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderTotalPrice]([Id])) |
| Profit  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_PurchaseOrderHeaderProfit]([Id])) |
| SameDayDispatch  | bit <br> `nullable` |  |  |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrlWE1vGjEQvVfKf1glF0qCBEhR1d4I9AOpqBRoL6gHxx7Aqne9sb1RaNT_Xi9lyZjsxt6UNJUqJA7L2zdfb2Zs5uNM0RXR8EkxUB-A2O9v0e3lkkoh1Zvo-AQo0AU9Pos0_wH2Qad7_PPoRXPIoltBLkHYR5d8yRPT6Lx-eRYl0kRJJkQOGrIJLO5gyTXJbalG99wCd6gBMTCBq4wrQJzMPjU8hm7jFQY3T6dEgEbeVjmye8X6AAoSCiWenLdLyMegtEww74Z0D9rPtJGxa78MN83SVPAKHM6WhRqp4qkhJtN-6yqPaf0w7u2NjTJZwsQmE6UWKI-JaHS6LufX3qwvGTxM2UtTJa_BSbpBv8-kIaIvtfHZ2wDHilMIQs7IjQ83VnLBvXanJIYBWQ-4Tomhq6o4mqcjiOWIpClPll6NDfUABJh7acH17SsgplrirhS24AtPgUeS8QUPIy2wF-uqRnBd6OW6pcTwil7A6PcZR5As4VcZcAaJyS0qF3v0Yr7fw-7EYW1os_ajJo6nLcuhY7KOraszULG37WRiCDXenveMkUe3_edMGgice6FDIrDxgzVZTznzL9pWIO9cAbVlUJHQnnU0ADaAlCiTl95bz_AK1Yq9UODBAmdMgfb6aKduTNQ6VMye4F0XxsRKzoQuxzozNlyngbLHXTrwSp9xkydMSSH8cT1NqxRHib8sl0Cd1BijW-gIzEoyL3h7Qv0IbAkqvAbPOtVQ0xymWvNC1Qei22bnUFKq08hzBD7Y5v-v9wgCHyb2zSmt5Gr4zvZKpqC0eAuaXxUfeWwrsRX24taj5-lyx-uhgfhfyIgVGf1uO4Fl7sx-8I3ge-dT5DH_nEQTEBu4XvFU549KMhB1Wq1mtH99iG6jgv_-vwMo_e3NLbGKFQ2QfcLiKB_MVZx_ENHdkSiYpdj32J3dvwnhLHfVxUS45jXi-r2EnLiK01Ywy3b3IJLdrg7mQDsE8Thr6A8rj6QezIRUj5icXtjnKmdrtlqdyDuAkY3ScRHi931L-SCry_wLoLhngQ== "PurchaseOrderHeader")
### PurchaseOrderHeaderFeatureMapping
Purchase Order Header Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| PurchaseOrderHeaderId  | bigint(19)  | Foreign key<br>` PurchaseOrderHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1ldtrwjAUxt8F_4egL84LVGGM7c3LLj7IZG6-yB5ie9RAmnS5DJzsf18q1aVdtVEchUIPv37nO8kXMhtr4a-whGcRgHgCbN4PgJUWMMJRRNjyHW3mS59TLu5QpQo--Au_0kSSfIEptDuV73KpPgzQhuI5UFOakyVhqta-vWoixhVimtIt1Mjp5fZj4siGt6RnyD02xVTDL8A-cdxN1K69jN5Q3jM8p5BqrbLMACioo0xfGFs2EZhPRULo1G7-jJDAvfXxIUY8IAviJrpje2uXqeuNbhRR4mNFOMs1YdOPmliIZuRDAwmAqbijSLPl0ixnZ9O5CTzwAu_M3EwwBekQmuwvYxDywKz2zmipeJhWzeMmOl6_A1zGsOIinCgTWlncXQhg_rqIm3Zf-zyAImwEIU8OrsMqOYbytOjMktN6cgAOLOb_mHyTIMaCLwi9mNGuMeqADSDCQoXmLBUmzj1GJ81uwZeZffdU0QvQra5ckUjGpcL7BbVbrTrKwdAG7ZrmXhyWTS824dgpqVnq-9vlTEUrSpaqFdszda1tsnRTO51VLpd-AEyrfN8= "PurchaseOrderHeaderFeatureMapping")
### PurchaseOrderItem
Purchase Order Item Level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `PurchaseOrderItemUnit.PurchaseOrderItemId`<br> |  |
| PurchaseOrderHeaderId  | bigint(19)  | Foreign key<br>` PurchaseOrderHeader.Id `<br>Unique<br>` PurchaseOrderHeaderId ` |  |
| SortOrder  | int(10)  | Unique<br>` SortOrder ` | ((0)) |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id ` |  |
| Description  | nvarchar(255) <br> `nullable` |  |  |
| QtyOrdered  | int(10)  |  | ((0)) |
| QtyReceived  | int(10)  |  | ((0)) |
| QtyOutstanding  | int(10) <br> `nullable`<br> `Computed` |  | ([QtyOrdered]-[QtyReceived]) |
| QtyInvoiced  | int(10)  |  | ((0)) |
| SupplierInvoiceRef  | nvarchar(50) <br> `nullable` |  |  |
| TotalUnitPrice  | decimal(12)  |  | ((0)) |
| TotalUnitCost  | decimal(12)  |  | ((0)) |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| AllowBulkBookIn  | bit  |  | ((0)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lk1v2jAYx--V-h0iemGsSIBUVduNF2nLAZVBuwvawdhPqIVjZ35hYmjffXY6wIFAnImKE9bP_-f9iecTI_ErUvAkCchYQ_oj2i6WWDAhP0eNO8CAE9y4jxT9Dfag22v8ub1pxSTaMrQAZo8WdEm5bnY_fbiPuNARN4zl0MeC9ldAzkLAxZmQOr9yQHOuc2JgpgVeTaQgBusQ5REoLGmmqeAHmK-Rc1M2ew8Plt_D3_Qm9wJIhR8WnNo80XUI-WS00ogTypclsE_GfC0ortScmSxj1Gb2DZ9CUhLaQ0H8WWjEXjjVE2lvHHACmKaINbu9Ixv7C0OhdACfV0amM420UTG5FGifMfFrYNhqIMQq5n4NdVE0ViNgoIFcYIYSUIEg9q-mKfSajyc-_oMHm8sejgWhCQ0T3bGDzbkiFF3ou9ph5Boyrir0F0M9xHD60wAlwLWzKIvs7c28ZPiKo0060CGd_xztGWKgAub6-MoEpDoTq18Zo7RIi6pl3L73SciqCGtIZ11K4HhTxX3vPw8FgSpsDKkYoyyzEx-QpcCmrNc6c39RXrELxoibBGFtZFANhjaypZCbEPS90rBrgtpZKFd8USBtXhPK4DqKNiIbegA2ggxJndr5r5yS8NavlU0Pvk7sp3vLPUjcd6eon2D3LLnGo8Tp1114O59CV17NLekmta8UhOhfeVPV2ZHvMZ_udxdNgeW4eqWZckcnFYu67XYrKvnARdtoZ6D07em1TMcZPKPsb0tPsvjaDNfa5bQodch0oJK3ajwlrxCBOl5FPJ1CnY6VyrRa7XY3Kh3Wc1V4G7Zj7b-sH_2w "PurchaseOrderItem")
### PurchaseOrderItemUnit
Purchase Order Item Unit level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetTransaction.PurchaseOrderItemUnitId`<br> |  |
| PurchaseOrderItemId  | bigint(19)  | Foreign key<br>` PurchaseOrderItem.Id ` |  |
| SalesOrderItemUnitId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderItemUnit.Id ` |  |
| SalesOrderHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderHeader.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| SupplierInvoiceRef  | nvarchar(50) <br> `nullable` |  |  |
| UnitCost  | decimal(12)  |  | ((0)) |
| UnitPrice  | decimal(12)  |  | ((0)) |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrVV01vGjEQvUfKf1glF0qCBEhV1d74qFKk0lJCekE9ON4BLHbtrT-iUpT_XpuErA0G7HZzqDix--bZb_xmdjwdKY4XSMBXngIfSMjvKJE_kvX9HLOM8Q_JxSVgwDN8cZ0I8hv0g1b74vH8rD5Ik3WG7iHTj-7JnFBZa71_c51QJhOqsmwDutrjDwu7RRkIZ0-H4rxBnwCZ0IAQyfCyIwSc5r9VRZERzUofGMEwhlkZQB-Qkclrb5t2iNl3jwlZAlPAJEdZrdXekWygI655A7Aff-m16BzGSB6CWxJ7inOgeGUL3KhrurjvnUmPpXAKpjPG81uJpBLHoQPRhwwkOHmVrpIeB-QgUv1XkhzatXd7nngGd08oGbKUzEgY6RbbXR06S3cLHWMBjCRh1LsJG32jiAVRlPxUQFKg0qzIXez52XSvUNwiTJvQTJtVFOHx2tgpQ1MeI85ShWVwRJg9gs8zLuvT_c5RYSJd8ogchrWYyov1tVP85KUKE9xTQrLctad3EyV0hFa5rqoJ8PxkOhiVyHWyt8UZfSPgIiAZUY7_ppiE4G_T_-GFF3dXWWaGdLIqICD9XcaWA3ongjxT7nbCERXaCzsiK26FePmZHcmkd2cjpE9dRs0uYe7rquwJfsOZKkIM-CqO2do62i9-umf3V8NWvxpCzoaoKAidn8zQ1Cr9itQYH2uTzUhWmaKOPsUAWB8KxGW-Y71_mgAjjWGBq9G-mau8Je_yz7C54lQyEgTeVLy3roC4PhEFkngREfKF0ZMDi-erOgapOI1YZ8gewLhnDHrOFTJ0uddoMeZ3mYwh28DFghTCPPImPWk1GvVk71WyTrZLeG6wllWaZsEjzPv2sKh93vkr7qeZwsu8HTdieF9Kxma0xtgIrm23t5jKuSaC57nNWzQvY0-csm3rcqWVDS2CzWrWtrzS0hFclr8tLsf1u2yH-OqNRivxtr1jrva77w9_rchV "PurchaseOrderItemUnit")
### QuoteHeader
Quote Header information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `QuoteHeaderFeatureMapping.QuoteHeaderId`<br>`QuoteItem.QuoteHeaderId`<br>`SalesOrderHeader.QuoteHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;QUO&#39;+CONVERT([nvarchar](22),[Id])) |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| CustomerPaymentTermId  | int(10) <br> `nullable` | Foreign key<br>` CustomerPaymentTerm.Id ` |  |
| ContactId  | int(10) <br> `nullable` | Foreign key<br>` Contact.Id ` |  |
| DateRequired  | datetime2(7) <br> `nullable` |  |  |
| SalesPersonId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| TotalCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_QuoteHeaderTotalCost]([Id])) |
| TotalPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_QuoteHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_QuoteHeaderTotalPrice]([Id])) |
| DeliveryCharge  | decimal(12) <br> `nullable` |  |  |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrll02P2jAQhu8r7X-I2AtlFwmQVlV746MfHFAp0F5QDyYeWKtOnHWc1VLU_14HyDJmSWxoEJWq3KJ33nhmnrGd6ddEKPgMhIL84a1mC19wId97lRvwwZ_7lTsvZr9Av2i2Kr-vr2p96q04mQHXr2ZswUJVbb57c-eFQnlhwnkq6tMRzHey8IlI_4HIauteC19UtdtuEisRgMSea8PGnuFOOiTLAEI1ARkcjMIhIlTEV8WyHlEwgseESUA6qt8qFkCr-tb0HBMO8RBkLMJi34lQhHdFrJAp-CwgvNpsvRIOJfPBSTkhzzZdDzh7Arns6pIvrK4fnnVrwgWMdMo2bdoGKSH0l7baf29PuoJCsUxDAqkbHEDlfs9wrIQMxoqoJC427cc6f1BgYKpMnLoSiMrv9x55G3HHkvNAUDZnbqaZtrPMy9xcQjuKOPOJYjnUYfWnhCFJErLHBBjVI5N-UZra66tpNlfm7NMGNGijcPZz5rRNqYQ4tvGhgQ-IRtRlRO3NN5cwJBoqVbi3IPUAAjEgUcTCRd7WdizX7mOCt5OexVJvUEylBZOCc3tejtgeB9f0wDZcDjnTLQplcejafkdenbefY4E6T5u-xbpFUswZh9IGWy_UQdaDiEiVslFiSY9EdDN7JXG5nfiyyngMHVNUopKy-Z_BQOJycl8foOj-_FGPciJh217zG3M_vU-fdJuu3aJvuAVsV3KZM2K92r6C4JIV0BD5PzXpNDGvF_kRpV5tT7uzdJKQcrjYqbG-jXyRusaH_gf_qn__wJ-e_eftFUGu25ADnecD7SwspM-NNwK-lscPLIrTVyhRr1mv17ysWd7Ky_x2rUasNFLT3GjU6gNGBgh2zw0L2CejwxqLTkcUb2DjkNOmu0YiWcOt0dueo-AXCqyxCFi8eozxiRVAiFkdEGXIwWBv38N0qdXrTS_3VEWextQVrWvnmJ5KJzvsb4-uRn8AFrETCw== "QuoteHeader")
### QuoteHeaderFeatureMapping
Quote Header Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| QuoteHeaderId  | bigint(19)  | Foreign key<br>` QuoteHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lUlvwjAQhe9I_AcLLpRFCpWqqr2xdOGARAvlgnpwnAEsOXbqpRJF_e91UACHAkkqqpzifHnzxvMSz16M0PAMOAD5CFgbCUMcRZQv3tHaXxDBhLxHlSoQIHNSaSJFv8AutK8r3-VSfRCgNcM-MLvk0wXluta-u2oiLjTihrEN1HBq5HshceLCG9Kz5A6bYmZgD_BPLMkSy9qNd6A3UA8c-wxSpfUh0wcG-izTk9aWSwT2VtMQrmu3v1pI4O7qfBNDEdA5zSe6ZburPF3XG50oYpRgTQU_asKlnwx1EMPphwEaANdxRZlmy6WZM9F0TgIPvMD7Y056RmkRpkNy1O0eHeFVaF1OQIbnN9q-IrjGRGdhY8xAjUCqE7uWMiElcLLK4qadSU8EkFlZCxmOtY2-yqycL13FMjBLPrvCEz01o38x-abs1KWYU3Yxox1rNAfWhwhLHcftgpMs1LsDX6b37VVFr8A2umpJIxUvnTwYULvVqiPnMVqjbZHUn96x48XFMhSTNUdtdwwUVHIi4qg5cSyo52y7o5ea3KFiufQDktpRrg== "QuoteHeaderFeatureMapping")
### QuoteItem
Quote Items required      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `QuoteItem.ParentBundleId`<br> |  |
| QuoteHeaderId  | bigint(19)  | Foreign key<br>` QuoteHeader.Id ` |  |
| SortOrder  | int(10)  |  | ((0)) |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id ` |  |
| QtyOrdered  | int(10)  |  | ((0)) |
| TotalUnitCost  | decimal(12)  |  | ((0)) |
| TotalUnitPrice  | decimal(12)  |  | ((0)) |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| StormStatusId  | int(10)  | Foreign key<br>` StormStatus.Id ` |  |
| ParentBundleId  | bigint(19) <br> `nullable` | Foreign key<br>` QuoteItem.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtVsGO2jAQva-0_2CxF0oXCZCqqr1Btmo5oLIL2wvqwdgDa9WxU8euSlH_fZ2IELsQOdlm1Vaqcor15tkz783Yq1sjNUw1xJ_Rfr0lkkv1FnWugADZkM41StkPsAvDUefn5UVvStGe4zVwu7RmWyZ0d_jmxTUSUiNhOM9BL3POD4ApqDoBC6n0R2XBJTTHDU6IF1qSL3MlqSG6DvOt3uXEQAPUS6kxvxdMRzLVJZYCYTHm3eGoCj9XjECNgHffyQMWW7jDugru5BkZpUCQ3fTcuR3cp_EykhRCMFs2FS801iad0mCR59jurSdGUA5VRT7Cp-kNcNDg4bRPGSnAHoLaX81iGHVfn-x-AE8Cuc8kZRtWj7TATnYlWnzDyiqiuq9OCzBOEs4I1kyKYLneG-ZAjGBfDTBq65ftqHzs5cXK6Qy_3-gABnTwxH6LTKpl7DdbhbgFdI53sT3lElQcck8khcZ-v501GeaQzkGlFVX7c_Zu7q5mHli5Y6lFWWdYmI2tvFH1pLWZbaXa1YE-SxkKWRuX4DzdQf122Gw1IZYznCRMbINTbeVYqqVsKu7Z3zJIw3u2-f35L91Ez-Xq-9ROSyU3jLdmxbE9aA3YDSRY6WxMtzgBG-XugNvJvbwET1thQ7JH5_9W-GtbIfuu0B3wHJ4-sCTNlo5yomG_30OOEmiPCkJPH0fjQf5M9xlcaRwKX7EARyGWE1_qF4g9COiEHiUNn7zQ1D94qXSAofwt433tAwTOuHJzL_0QiHcM4cR7NvmVweXo9fvDJyTxCFLfjQM= "QuoteItem")
### SalesOrderHeader
Sales Order Header Information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerPurchaseOrderRequestHeader.SalesOrderHeaderId`<br>`CustomerReturnHeader.SalesOrderHeaderId`<br>`DispatchHeader.SalesOrderHeaderId`<br>`PurchaseOrderHeader.SalesOrderHeaderId`<br>`PurchaseOrderItemUnit.SalesOrderHeaderId`<br>`SalesOrderHeaderFeatureMapping.SalesOrderHeaderId`<br>`SalesOrderItem.SalesOrderHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;SO&#39;+CONVERT([nvarchar](23),[Id])) |
| DateRequired  | datetime2(7) <br> `nullable` |  |  |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| CustomerRef  | nvarchar(100) <br> `nullable` |  |  |
| CustomerPaymentTermId  | int(10) <br> `nullable` | Foreign key<br>` CustomerPaymentTerm.Id ` |  |
| ContactId  | int(10) <br> `nullable` | Foreign key<br>` Contact.Id ` |  |
| SalesPersonId  | int(10)  | Foreign key<br>` UserProfile.Id ` |  |
| Reference  | nvarchar(50) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| QuoteHeaderId  | bigint(19) <br> `nullable` | Foreign key<br>` QuoteHeader.Id ` |  |
| TotalSalesCost  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_SalesOrderHeaderTotalCost]([Id])) |
| TotalSalesPrice  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_SalesOrderHeaderTotalPrice]([Id])) |
| TotalTax  | decimal(12) <br> `nullable`<br> `Computed` |  | ([dbo].[UDF_ComputedValue_SalesOrderHeaderTotalPrice]([Id])) |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrlWV1P2zAUfUfiP0Tw0nVUSiuhaXsDuo8-ILpS9lLtwSQ3xVoSB9tBdGj_fXabgJ2ltc3cFTFV6kN0enx97_G51-nsEqXALmgM9Asg8f09eLieRyQl9ENwcAgRREl0cBQw_BPEg_7g4Nf-XncUBw8puoZUPLrGc5zzTv_9m6MgJzzIyzSVoFE8geQJlt8hGt0g2hkcC-Ajaog4TOC2xBQUzlg85TiDQeedCu6-PSsZJxlQNYDl6mFj9RrYHkM_DNt5x2iRQc6nQLPWJdSfkJyjiJtgy_yOgTKSG4MWwQKFPIKWkI-bvJzQ7JIjXjJTCF9LwmFV3XWFe0RPCUfpMuYzwrhSEYhwhtJOf9COHlOshr0BPkX3JtzHe7HlfA4TIQMTVtaOyqQtTGn4djI9IzFsho3YEFLgoOWJN7RFAfH1clWhIroV-NQQ3jmJcYLtSGvs6WKdTvQQTooixRHi2EKCn0usQMoc35aAY3Ek5IpUx-7vzepzo7tGHEIYhxtdo3VxEWocU2BGRQu1ZYgubI-g4ajoIYyRUBPfaDQK-hwyco6KAudz49mylKC9olVvGRoohb9iLhNGSZqa92UpWzdxzVps1o9yZpUUfOnQtvyWenUwazdBbadMV0yUiJIEp-DtYItALWBDKBDlUhseU-q0d4XXkzSV9uvMuG64cpiEdjncbKtLO5V_W1a22o8nkVTb9nXcXFzkvz7uCtjP3rWxaFzKoYzB8n4lrznAeJsTJJG8aD3TCZo3OIu24TYRWTY5257p2Qm2O6lMgJc0916zZ7j3KpJKRP_ev5-hMkvduE08DkZQ5Wq6KIwiOmEMz3OIp-RVqHeIWYF4dPMSvGZHtiAaGkkuEnGbx3dAFz7niWpDNfVWZL4dXWj96EU0IpcB0k5Hl6XMiJW1OhXdqzpfnBhGHLKrHHOPcviD31VFdUy2OnKegaIfwveBW5nY67q9NPP1SSxSUqgkuQNP0H9VhbPr3EgB7jwXu9aK_BwGE0iXcHaDCyYfNTcT9Hu9blCbdPAQ1KRPvq2kLZTMmymUtxUtbNq7DEvi1UysktVTsh2Bck9WSLQWZkeklFQlUgttR6S8WlKItP97bJO-8jct07Xl2VFU1qcwPJrh36RX0bQdjaJthUZTfJOoharb6_UD8zW-qQPtdBvj1RZRb5oeaPUrgAfCltnRN2vd8D3wbm5wXheQUTsR_ga5mO5T "SalesOrderHeader")
### SalesOrderHeaderFeatureMapping
Sales Order Header Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| SalesOrderHeaderId  | bigint(19)  | Foreign key<br>` SalesOrderHeader.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1ldtrwjAUxt8F_4egL84LVGGM7c3LLj7ILjpfZA9pe9RAmnRJOuhk__vSUjWtrq3iKBR6-OU730m-ksUUU5DPwgXxBFi_HwCrQMAE-z5hqw-0sVcOp1zcoVodHHCWTq2NJPkGXej2aj_VSnPsog3FNlBdssmKMNXo3l61EeMKsYDSGGplG5Vbldgx4Zi0NLnD5pgGsAfYFxbOGovGtZXRG8t7hm0KqdYqy4yAgsplhkLbMglXfyriQa9xczBCAg_C_CEm3CVLUk50yw7CMlM3W33fp8TBinB21IRJPwbEQAJGPgMgLjAVdRRptlpZZI81nRjXAsu1zkzMMJCKe-mkHLW8R19w6GmrMxBe_m7rJZwp7KgiLJ7vBYQssXWaVlx4U6UzK4uEXwOuIP9XSA0oBDAnLFKd92dD7kLh8OUyeVpyFsnPenIE_jrUfzH5LnVMBF8SejGjfW20BDYCHwsV5bMwdOVjdNLsBnyZ2bdPHb0BjXXlmvgyKuVfLKjb6TRRlkEbtG13eF0Y7qyod5kGSc3Q3V0o58gZ2TEkjZyeI2ociiGaOtesbLXyCwiYcpo= "SalesOrderHeaderFeatureMapping")
### SalesOrderItem
Sales Order Item Levels      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `SalesOrderItemUnit.SalesOrderItemId`<br> |  |
| SalesOrderHeaderId  | bigint(19)  | Foreign key<br>` SalesOrderHeader.Id `<br>Unique<br>` SalesOrderHeaderId ` |  |
| SortOrder  | int(10)  | Unique<br>` SortOrder ` | ((0)) |
| CustomerRef  | nvarchar(100) <br> `nullable` |  |  |
| QtyOrdered  | int(10)  |  | ((0)) |
| QtyInvoiced  | int(10)  |  | ((0)) |
| QtyOutstanding  | int(10) <br> `nullable`<br> `Computed` |  | ([QtyOrdered]-[QtyInvoiced]) |
| TotalUnitCost  | decimal(12)  |  | ((0)) |
| TotalUnitPrice  | decimal(12)  |  | ((0)) |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrdlk1r2zAYx--FfgeRXrK0ATswxnZLU9h8GE2bdJewgyI9TsVkKZMeF7Kw7z7ZW2L5hVjZeho-Wfz01_PyfyyvFlSCvTccTIKQfSX79YZpqc0HMrgCBixlgxtixQ9wC_Fk8PPyYpRwspd0DdItrcVGKBzG79_cEKWRqFzKErquhD8BLeQDdi20wXJLhZZc1OBmuUWdgXmEtCLVCzXsmRqHF_wRfsBdqQm8R9WBiXrRgoWQ9zlapIoLtemAj-RSI5VPSuBMW6xADkxkVA7jSUP5yM-NiyNggys0apMtkGJuE34qlsTegQSEWiOwUVkDtEZw94oig8nwXevkP_Dt7vS5nzUXqQgTPbC3u47Gvo1aIUy3WykYRaFV0te1j7nwkFyJ7zkIDgqLE02dvbxYNQ1cnw0eQcSjv5yNg397Q67QOd1lLtQlmOx0td0WrZAy7MPK_OZgbEDpznDZ6Poh1winh76WoDGg2K5P9ct0OdMcepMP8-R5zll52Z9tg27FJ-t6anQqJLyOosvIpR6A3cGWGizM1OuQ8J6fVU0Pfp3cG_Na3GTFN7QunrLiPvvn26wQD9yDmn2bWgv4n4xB8VyRR5Albp_F1hZL9dqQeDwekebHk-zJQbr9Y-D1JCp_A7oEKy_6Wr5DQ2S8sfNkvGqFiHg180RqlWzKtIRG43FM2pbtrNNvyzUlfwHdvBSV "SalesOrderItem")
### SalesOrderItemUnit
Sales Order Item unit information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `PurchaseOrderItemUnit.SalesOrderItemUnitId`<br>`StockAssetTransaction.SalesOrderItemUnitId`<br> |  |
| SalesOrderItemId  | bigint(19)  | Foreign key<br>` SalesOrderItem.Id ` |  |
| SortOrder  | int(10) <br> `nullable` |  |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| CustomerRef  | nvarchar(100) <br> `nullable` |  |  |
| UnitCost  | decimal(12)  |  | ((0)) |
| UnitPrice  | decimal(12)  |  | ((0)) |
| ExchangeRate  | decimal(12) <br> `nullable` |  |  |
| CurrencyId  | int(10) <br> `nullable` | Foreign key<br>` Currency.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrNV02P2jAQva-0_8FiLxQWKSBVVXvjo9oilRYB2wvqwTgDWJvYqe2sStH-98ZZIDYkxKGsVOUU682b8cybyWQ-xQHI78IHMVQQPjKqfqLtYkV4wMUnVLsDAmRJavdI0j-QHLQ7tZfbm8bQR9sALyBIjhZ0RZmqtz--u0eMK8TiIEhBTZvcxWbKhUoNMmiK8xKcSaw4eepKCaqI9ADux1LxEMQElhmSPWNB1lgkxBazvn-fS5UhfSA0xEG93TmKVEPHghJwwH7-nThjK5hgVQQ3LtePhQBGNubV8pLwozvrcx_Ow4ZyAAEosNKk7PD6ArCF8JNXRUPo1D-c1HQH7pWEN-I-XVI30j22t8mp0HvvJIRuFAWUYEU5yw3CRD_E1IDEjP6KgfrAlPYobOztzdxWrN0Kvgee7_1zK3wBrOndrBQX4VRhFcsyNTjWpVr25lmjXTMXmnS2iaDUf6PZ4_xpyB6lnbECcBbtTGAmMTm-ZElMY8H9mKgKFl_5mUzmRjbGSXOXjy3TxE0AvTh4hT8IHkcODt5GMfvpVVkv-XS7IXcdtkZzBCEf4SiibFWaoblWXSKJJQ2u5r-b5NwBNoAICxUeCaVAWK4TolIZDfB17p6O13Gsh7qEMwvHkuiV48LJcsJ_yZ6iY3LpT8eJftnacuU14L_6lBjD-Yq1v6iIuYJ0sBtQGWFF1hVMvnFWKkur_Pu9VcWCVfAz4s-gJ8cEklVHKld3b1Fz_dyhCQQpXK5pJPXRaaVQu9VqIPscbdGe_Pg_wlCIl_41FBEeJGeSGU3oSrTvRYMma09Xkl2jGhyH1nWlML5IZihZ7VyJjCoaRFZtj6lyyRqtVhvlNlFh-V5l7BBoyp07NSpy_wUI2r40 "SalesOrderItemUnit")
### StockAsset
Stores all Stock Asset Information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnItemUnit.StockAssetId`<br>`CustomerReturnRequestItem.StockProductId`<br>`CustomerReturnRequestItemUnit.StockAssetId`<br>`DispatchItemUnit.StockAssetId`<br>`PurchaseOrderItemUnit.StockAssetId`<br>`SalesOrderItemUnit.StockAssetId`<br>`StockAsset.StockAssetParentId`<br>`StockAssetAttribute.StockAssetId`<br>`StockMovement.StockAssetId`<br>`StockMovementRequestItem.StockAssetId`<br>`StockTakeDiscrepancies.StockAssetId`<br>`StockTakeItem.StockAssetId`<br>`Warranty.StockAssetId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` | Unique<br>` IdRef ` | (&#39;SA&#39;+CONVERT([nvarchar](23),[Id])) |
| StockTypeId  | int(10)  | Foreign key<br>` StockType.Id ` |  |
| BookInUserId  | int(10)  | Foreign key<br>` UserProfile.Id ` |  |
| SerialNo  | nvarchar(50) <br> `nullable` |  |  |
| AssetTag  | nvarchar(50) <br> `nullable` |  |  |
| StockAssetTransactionId  | bigint(19)  | Foreign key<br>` StockAssetTransaction.Id ` |  |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id ` |  |
| StockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| StockAssetParentId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| StockAssetStatusId  | int(10) <br> `nullable` | Foreign key<br>` StockAssetStatus.Id ` |  |
| BulkAssetGroupId  | bigint(19) <br> `nullable` | Foreign key<br>` BulkAssetGroup.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtWc9v2jAUvlfq_xC1l44WCSpV03YDqnVIo6uA7oJ2MMmDek3izHEqsWr_-5xAgh1MYkNSOrXqqdHz9377fc9MRozYj50wBPbTep7ObeIS-tk6OQUb7Jl9cmGF-A_wD-3Lk7_HR42-Yz27aAou_zTFc-yzs_anDxeWT5jlR64bC_WdIczWYv4TovYDomeXV1wwk2qcJ6rHiwBE0ASxlUNsnHcJeez79yHQUuERUIzcW6Kw4KolWpB4PUbzUsGVqUt5ivwQ2QwTXycWq6N3lDiRzQxOfCM2yivJ3FVadoco-FtVKI-MGGJRWKaiG7lL8RtKoqBUQT-8BhcYSHJMdrJHAUkSDv-XYQ8uzz5uxGMl3F0UGzogDp5hPdBUtrvYlnzZhE4QuLggIaL0TYQFkcjHvyPADk9NrJHKssdHk6wL5P5zWtByWoX9p9Q-iXuEl9sMuxUhcu95AjTEriFAlHm5ItxStNTTKz6TyE-UbWochYLORC6E36nDbyEG3r2PddrtLorLKgTTc9c4DBCzHwyO3BI_06Ih3otCRjygQ2AR9Q30DMgTxHkeAq_tkOmq0-vjXXK-ul8rTPUA-dGMF1BENUYO9417Nid0oSNaXxjSofHCjb-cPEZjq8YgKMjMfk1fD015JxUmpKL-ilmaXdEQlr2rsBjricJb5gyCcDW-J6xOPVplBTM7XrJ2LYQNBQb3QFKaOnMePDJAQYD9-cE6VHZUYBzGwSy6hkvu0sN5WWvZbOFvpfPqPymdPIOuMI4idA2N14son7v2osJLsZ4QK5ebCuO8gV_jorY-9BWQI1O4UtZTYVJ_dMY94sCrz_1mkCtMvAx-wBbTzMbLLjT7hfZ9oXkLC02HMYqnEYOqS6eww3JbQGqDZrnVGJP0zeqA0ZDs0IyISbNK-GZvc2PyWp5vFPZXnbK8ilqS_YUSzyymxAuS303Ko1pj-MfoETi5tSlfzH0bQ1j54OEKivmV6T2_Bwkw3P0yBzrOL75IxTV0MG4Q_51aQ3AT8fABB2H8ae2-1W42G1Z2f1jPVoon3ClCJlvJj6e548LLkAAgsoIyBCUpyBuzSRq0YFeZy6NlCdUCSWsrj7KuOX0XlX6llEMfZsk4lGApGSkDk-mImLscT9mtAoSSLgMQiloAkEo9DyGBNJrNtqV-T1NGqNAiBZgwaHYppGLEPazMv17sCKPc0HfE2tz4dgXau2NyMBnR3MeglBdUgVFQVSZwG-NYE-wfRiZ0sw== "StockAsset")
### StockAssetAttribute
Stock Asset Attributes to be stored here      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| StockAssetId  | bigint(19)  | Foreign key<br>` StockAsset.Id ` |  |
| AttributeTypeId  | int(10)  | Foreign key<br>` StockAssetAttributeType.Id ` |  |
| AttributeValue  | nvarchar(100)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtVV1rwjAUfRf8D0FfnB9QhTG2NztBhA1kbnuRPaTpVYMx6fIxcLL_vtRNm9Y6I5M-Gc899-ScQzudaEGWfaVA97WWNDIa3tAmmhPBhLxDtToQIDNSayNFP8EedHu1r2qlOYrRhuEImD2K6Jxy3ejeXrURFxpxw9gW1MrY_fB7Dc_rBNyRLT4o4PfoV8wMZGD-gSVZYGkniiMjNQAGGnJqdB5zLwHnELH9qekKeo2bA8W_4HBdqnYPfBQxnVE_0h02XJdc6To4NC1JGCVYU8FPWjY01IEYTt8N0Bi4TjfKPLZamWb55UsRBxDEwX9K4RVwsxUKsRzxFwXSA5ypfZaYK0yKlpzQNJYiNkSfMfEg_vC9VNkYS-v2sRWlIxONtVGnVoSG_cCHUpjEY4Fnc8_r17TkfZJGfXZ9ytnTItiUZpRdiNHeztrgARtAgqVeFbI7krVc-WV2lrMO-DJ33z119ARsy6sWNFHpUUmKqNvpNFH2B9qgHbv7lndkBOkSD6ZcURzawsfAm9kpicPm1N2bybHc1eWmVuSqVr4BcdNXng== "StockAssetAttribute")
### StockAssetAttributeType
Lookup table to identify attribute type      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetAttribute.AttributeTypeId`<br> |  |
| AttributeType  | nvarchar(50)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqNksFqAjEQhu8F32FYL9tVwRVE2pvVi1frTXpI4qhD02RJRkGXvru7WnGzrFrmlMmXf_iGLD_Zqu-x98hjZkdyx7g4ZPgFudwoq617h6iNCtVaRV3wdMSikQ6i39ZLMltBroVEXbTIcJz2X7tgLIPZaV0SQeSNNXvh1Fa4eFh_MPNT1MhYCZbEITNxKAJiVRyZfnAQj2pxl1o2OIZ-a1UaPvSTtDkrvtVGJJ1b-v_4YClPV5h0_nw_Do1sNTjLNCnBZM3T2LLaMEd9xv2WMn9p3vkPkPR6KTRcQg7XQTWxyjr75cgTqcTGmw== "StockAssetAttributeType")
### StockAssetStatus
Lookup table for Stock Asset Statuses      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAsset.StockAssetStatusId`<br>`StockTakeItem.StockAssetStatusId`<br> |  |
| Status  | nvarchar(25) <br> `nullable` |  |  |
| Description  | nvarchar(50) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNq1lF9rwjAUxd8H-w5BX1xVUEHG9qaTbYUNZHZPsoc0vWowTUqSCk723dc20_6ZtS1s5KmXk3PvPfnR5UILsp0oBXqhsQ7VBzq4ayKYkPeo1QYCZEVaPaToJ0SF4aj1dX1l2R46MOwCi0qU685wcNNDXGjEQ8ZihfFKRXyHJdlg2RmNI-VJNgNFJA00FfyMdjzIam01AwYaMq1dqvNtHyTgnMKLPjX1YdS5LUxozjJdP7_4isSrX1zcpetk97uCs9VNTJ19AJU5Wd2pEFubvyuQNcTptI7EXGESJ9dgprkUXkh0gxsvguBik9NwZyebYwm8tMXZK4aWqhbTkBn5kxRhUKPBDw3TfZXzJAgYvbBnNhdDjIO3YGvw_xyayPcZsJenoeJSEkrdwCsQKJAJns1L8isbpN5jPkrhNwLMEc15fBU78OvB-C-sxKeN3oAlcrWhgTLFYlrI6veHKK2iAzoa_w42w9fA_GtLzY6YNvL7Bkxu8Cg= "StockAssetStatus")
### StockAssetTransaction
Each Stock asset will have a transaction to idenfiy origin of asset      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAsset.StockAssetTransactionId`<br> |  |
| SalesOrderItemUnitId  | bigint(19) <br> `nullable` | Foreign key<br>` SalesOrderItemUnit.Id ` |  |
| PurchaseOrderItemUnitId  | bigint(19) <br> `nullable` | Foreign key<br>` PurchaseOrderItemUnit.Id ` |  |
| DispatchItemUnitId  | bigint(19) <br> `nullable` | Foreign key<br>` DispatchItemUnit.Id ` |  |
| NonOrderItemId  | bigint(19) <br> `nullable` | Foreign key<br>` StockNonOrderedItem.Id ` |  |
| CustomerReturnItemUnitId  | bigint(19) <br> `nullable` | Foreign key<br>` CustomerReturnItemUnit.Id ` |  |
| MovementRequestItemId  | bigint(19) <br> `nullable` | Foreign key<br>` StockMovementRequestItem.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrFV11v2jAUfa_U_2DRF0aLFCpN0_bGh9Yhja0Cuhe0B5NcwGpiZ_6oxND---J0EIeYYmuJUJ8azj33-txj-3oxkyx87gsBcs4xFTiUhNGfaLdchyxm_BNq3UAI4Sps3SFBfkP2oXff-nN91RlHaBfjJcTZpyVZEyrbvY_v7hBlElEVxznodoZjEN95BHwsIXmiRJ6KM4IeFQ83WIBv3IiIFMtw4xHyjdFDFgf4UAnJEuBTkIpTjzwT9gIJUDmFXwqEdEo3FiOIQUIJJ8sKDzngEiLK_pUkgfv2h0oz_oEHWzN1njcw805YRFbEjXSPHWwLNH3Bun-8_T6olNBP05iEWLvMWoSJflDEgChKMulIlImoM_Iy9vpqUbVa2cdRAEEU1OJjx5jD3nJyFudAwzOt6dz-6M-HLIJzMMdW-zVkYd2YNapc4W_wkCmCvgDWoQ4hF2xolpsnM4mlEpfp_fHhWmPbTeoLbq2LS5yvan8jQaTlqFHl_d11to5MCaXLdoI2o4T9nm1AjCJBA8abQMImOE0JXbvYtDlPWaaPOu9GW4qa1CzjP3OW5DFf2RvrNzVlSZqPUOdVbUb-JwH8kbMVicFb8RM7rp8V6gAbQYq51C2p8dzzWrsBrmftr2PewTNl0lWoHyr_Y-H5NgUHYQeMPY-pbqzLSWp7X3nUlHknUqHPdnLdGkVlj5gfueTs_OPmloGKX-EPnKn0Ukeg_rtBU4hzuNiQVOhP1s6gXrfbQdV5Eu3QPodt2DRcF-iUb3BbR2iD_sTb1yPD8aBmkFcfyB68lunEoC4_pD1o7Ve9wXzqze1buuUSNLJYH-geKYyD3qy9MLQHl-Fug6vk-WO2U3ydbreHip9MH9tPpmPivw6l1DQ= "StockAssetTransaction")
### StockLocation
Lookup table For Stock Locations      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAsset.StockLocationId`<br>`StockLocation.ParentStockLocationId`<br>`StockMovement.ToStockLocationId`<br>`StockMovementRequest.ToStockLocationId`<br>`StockMovementRequestItem.FromStockLocationId`<br>`StockTakeDiscrepancies.StockLocationId`<br>`StockTakeHeader.StockLocationId`<br>`StockTakeItem.ToStockLocationId`<br>`StockTakeItem.FromStockLocationId`<br> |  |
| AreaId  | int(10)  | Foreign key<br>` Area.Id ` |  |
| LocationName  | nvarchar(50)  |  |  |
| ParentStockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtWFFv2jAQfq_U_2DRF8aKBJWmanuDonZI61S17AntwdhH65HYme1UYmj_fU6AxiEBbJq01dRHovN3d999d2czvtOCzL4JgjUT_CdaTO6JCIT8ghonQIBMSeMUKfYHzIfuWePv8VFrSNEiwBMIzCfGdbPb-XCKuNCIx0GQWnzsScB7zdZOv-MQMlP-iCV5wLL5qQh7gyVwnYu41MvTkaEaQAAaLKMJ03nYCxNrzoKan5qFcNY8L0SwMu7Pd_u9FpRNmRvo2rY_dyOhF0UB25G8bX0VM8sk5ux3DIwaDhOPMm97fDROypaXAO1Ah3YOkcCyVluF4M-pX-bjHbo-PCknXR-g07pI-KFA3kgxZQG8MAUDiLDUoaFhX0KGJhneaaxjVWnulnE1uactkha1pxToPOiUJNNyJ-iE3ae4nwtkpaCjeQQOxPaFmA15UlgH4yzakcRcYbJJ3Z6YjHZoTLTHCVe9Z5Etm2Wbi9Ijbmrpx8HS_EqKOHJw8OKDyEE0_8kgSkO4Fo-QTISqOyctsof9Og7HjvPpzhz-LZh1q_RQQ-igvpF4a3VaxV9huVxyLBDquh1W4bpw8mR6KeTbIToRStW9semilq66lCL0E68Io_Revp_VGukf4RkMmCLS3FU4YaAqX-nGwVfANL-rn7NBfevkudDLEujRX7FKb3IXgsIrl2vJZtV18qC85vzqGAEHqbAmVSW3V6BDvoW_bYG4LQDvMeS5cnMD9XXvk-9aedcKd3qxnqBbCFJz9cAilXzKJYK67XYLJe8JtEBrtOXzwhJSJ4ErOZf_lAGUPjwc8Kw_LCw0ixwHDIshOyWbt02UTZxWu91FmaQsGK-UMphqKMrw1sqy8AoC9cVaXRFrgEwmlQVb0nuuwIUr2_NLk428arA2kj2YwxIsB-L-AVzHmKY= "StockLocation")
### StockMovement
Records all stock movements      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockMovementNote.StockMovementId`<br>`StockTakeItem.StockMovementId`<br> |  |
| MovementDate  | datetime2(2)  |  | (getdate()) |
| StockAssetId  | bigint(19)  | Foreign key<br>` StockAsset.Id ` |  |
| StockMovementTypeId  | int(10)  | Foreign key<br>` StockMovementType.Id ` |  |
| StockTypeId  | int(10)  | Foreign key<br>` StockType.Id ` |  |
| StockMovementRequestItemId  | bigint(19) <br> `nullable` | Foreign key<br>` StockMovementRequestItem.Id ` |  |
| ToStockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| GUID  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq9V0Fv2yAYvVfqf0DpJUsbyYk0TestabTO0jpVbXqKdiD4S4uCwQNcKYv232e79Qx23MBqTzkFve_x8Xg88OpeC7K9Ec8QA9c_0H79SAQT8hINzoAA2ZDBBVL0F2QDk-ng9-nJKIzQnuE1sGxoTR8p18PJ5w8XiAuNeMpYDioJF1hDhY6yf5rGMB1Oa_jRedHHTCnQLvyv-HKa5S4Bs6yoCQ7X-GBL_jv4mYLSoYa4rTujdCmK4m-CYE0FPzjZX3ioFsBAg0Wr7W6uJGALUQn5qdH4K3i-e3veGxHRDXUjLbHzXYXmz1iSJyyHH5vazZKE0TcWb6KvH8JFBUk5zZSmUaZ5PqO0sacnq8omtlejAIIo-Cev-vliLsQ25A8KpKuJim6XEnOFSV2SIz3dShGlxOdEuJnO7OwWy0xtB1tXJfca61Qdm2Keshf4tRRp4jCBo3P9_LVqBIW3cVo290U4R9v0uLbu1rRqC72uz1p9CvdKjxviixSx15m4EnFSRPHxXepxO8tuu7LpLGvV2c1-evUiQh6tWe5tKIP_LMECEix1XEvDlvSUsVsKeq3dAHez9urOLI_cd6Frum5I_tDr4ji7lfQZhXgLzbx6_wJz3q-AI_vSf09Ued70tQcIRCFv0a-tETe3emem11vX0S59eyX_naE7YAVcPdFE5UNWb2gyHo9QJR_ao5LT3FzDVEFO3cZhvj_qVPZHjCvjISY_hgP3fFtr1vePK3_pCYO04RYHLuM-MJgMYzhwGO4wOCzP1FnqPKPxeIIaSdom2LGuKrYystyZ_gC30AL2 "StockMovement")
### StockMovementNote
Stock Movement Notes - may go into memos      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| StockMovementId  | bigint(19)  | Foreign key<br>` StockMovement.Id ` |  |
| Notes  | nvarchar()  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlFFPwjAUhd9J-A8NvCBCMkiM0TeQxJCIMYBPxIfSXaCxW2d7R4LE_263MG030E3Jnnbz3dNz7-m2mKFkrxO5hQBCfJQIL2S_XDMppLoljSYwYCvW6BDN38EUev3GR73WHvtkL-gShCkt-ZqH2OrdXHRIKJGEsRApdOlol2lJztffWLilim2oauWwsR6BAARHEV3mTgF1CN-8Ig-g37ouGD3Aw51tMnXoGfYLnEifr3g50Ywd7o7Mc-UVLAyiSHBGkcvwqAmbvo-5hcQhf4uB-2bHyYnKZeu1hRODG6_vged7_4l3oDXgH67DfBfBr4Meeqqwmf4UzFI0jhGCU-6s1rlMmx_kDwlUvy_VUl08a1BPSq64gMopnVjJwBgtgY0gogrzX-mxgcyaVDBDirE-6-wWfJ7Zs6dJpiBSXb3hkU5KhV8e6XW7beKUyZ5k8rm_mGXFSw46oWaFaWlZF6ekjrUYS8fZbV6pXvsEuurb1Q== "StockMovementNote")
### StockMovementParentType
Identifies the parent type of stock movement      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockMovementType.ParentTypeId`<br> |  |
| Direction  | nvarchar(20)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtk99rwjAQx98F_4egL65aaIUh7G2uMHwQZG5PsoeYXuexNOnSVHCy_32JzJm2_qhjBAI5Pnxz9727xVxL9j6Va0hB6BlV5n7eZPBKtss3JrlUd6TTBQYsYZ0ByfETTCAcdr7aLW8Sky2nS-AmhEL3wuBmQITURBScWyJCBUyjFAdOrKliK6p6wyo8ySPgoMERXaIuMw8KaImIzVNjCsPeqCLn9X_g8eZonr_gVMaYYDPRPTveHKnoNqilcJ9lHBm1Flw067FABykEfhSAsemH_VGV2XZr8ZKDmimZIK80Kw4giIPrm2WyNYY1wCLIqNJ2Xs4b6_XNcKl0rqku8kvoNU4tHPh_at85WlqF-hIkzK7BX3w9rFUDuOHUXueYPV3yBHyH5yvMchs6sfwk9H2POANGtmQv76TnWBHYT86qOdk6aqUaqnqnFT3fD0mtXY6u63hV9htntZPG "StockMovementParentType")
### StockMovementRequest
Logs request to move stock asset      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockMovementRequestItem.StockMovementRequestId`<br> |  |
| ToStockLocationId  | int(10)  | Foreign key<br>` StockLocation.Id ` |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| RequestedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| RequestedForId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtVs9rwjAUvgv-D0EvzllohTG2m04cwgTR7VR2qOnrDEubLkkFJ_vflxbFRKttN7fLRk8N3_vee9_7kbgzyfDrmC0hhEhO4S0BIZ_Rev6CGWX8FjWagAEHuNFBgryDOnC6jY96rT3y0Zp6c6DqaE5eSCRbzs1FB0VMoiihNANdPrLMwQPDniQs0o0yC_vAQuF5OJOeTEQuWoNuwgW_vyoNHTJ-GjsSA6CgkHp60ozyjoNnIHz1K0kI3db1QUIbcFGMY-aTgJQj3WL7qx06WnocLzzeujrUtBfHlJSswH1CNEgSESUc8VVzpB65ia3XXKO8ZuP4Nti-fbJxjvRAT0lWAjbxuIqruMGqF6OaZK7Ws-eRwH0SwCecBYTCL4s6gNjjMt0GRRJVmNRKav7n_jdz18DnyX23oPYuuJGE0HQR4PSa--Ill-uivGVPCCiJH3IWVtt3LIyz26x44_3Iaky_JpoCzeBiQWKRHuUphhzLaiMjO7RGW_aDh4RWKzv1dJJy268aodHF5cm0AdXIjJfI2ciyt8p32bSylqfSSqxRGYXfJztC17YsBx2bQbMcOTO07-QTN_BnaQ== "StockMovementRequest")
### StockMovementRequestItem
Logs individual item request to be moved      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetTransaction.MovementRequestItemId`<br>`StockMovement.StockMovementRequestItemId`<br> |  |
| StockMovementRequestId  | bigint(19)  | Foreign key<br>` StockMovementRequest.Id ` |  |
| StockAssetId  | bigint(19)  | Foreign key<br>` StockAsset.Id ` |  |
| FromStockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| Completed  | bit  |  | ((0)) |
| CompletedDate  | datetime2(2) <br> `nullable` |  |  |
| CompletedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| IsDeleted  | bit <br> `nullable` |  |  |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtV11v2jAUfa_U_2DRFwZFCkjTtL7BUCukdUOMPqE9GOdSrCZ25o9KDO2_z0kJcSAQG0H3MvFEcu451_eeXNuzH4qTl0f-CjEwNYFfGqQaKYh_ovX8mfCIizvUuAECZEEat0jS32AedHuNP9dXrVGI1hGeQ2QezekzZarZ_fzhFjGuENNRlIHalRLukX0pwRF_L3icxXzlBCvKmR2WxQQmZhvwhcdJBApK3KpMusUMsYICF5p_isbQa_ZsxlZ7ix-sjouP5BCqxAtlAbj0utD8tLfyDbhO9JGHdEHdSHPsYFWg2SsWZIlF82Owl0I_SSJ6pOw2-kFTC6IZNaagobFHqijK2OurWZWDygYNAwjC4ESDTnm9afaMKYzTsNLyeMFb7U269b2xoPdc1GEdG-7XllnxwZ2xvBnpdJWAQ2EHnL-M2JME4daFTbZTgZnEZHeRNTmNBQ818ZlFbnPFzmyMhfHsIYnKEDdfDXT0Bn8QXCcOAhd0TF4Wb9McaGzfpOoAe6utV2MuU4TUr8ZMCxrBO5dgCAkWKt6x2AFLuo6s_2t3XLsFPs_ai91ud6yV-RckPZGdOo9xBPK7CM2MNQe9J0ZdxtNYpxu_BN-4IZUJVmTpEfKNs62Ky1zTUvEYxASUFsxDp-LU-2_HaJ7QOXvteYIu5eG4Z_vs74euGw6FdzmlXbpP6e8GTSDK4HJJE5k-OrQq1O10WqjqLVqjXKj6emT1O0iVHSSyNu8Sb3p_Al1eaIux4n7lR2xtFhZt6c50FsKi9350lhcsupJDdgmPULY6nS6qnOYWeeXH4Jx1IZG_rXNWJf9fxDIpNw== "StockMovementRequestItem")
### StockMovementType
List the types of movements      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockMovement.StockMovementTypeId`<br> |  |
| MovementType  | nvarchar(50)  |  |  |
| MovementCode  | nvarchar(10) <br> `nullable` |  |  |
| ParentTypeId  | int(10)  | Foreign key<br>` StockMovementParentType.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lF1rwjAUhu8F_0PQG1cttMIY250fMIQNRN2V7CJNTzUsbbokFZzsv68tfiTaaguOXjW8ec5535xkOVecfL3zDYQQqcU2hk-081aEMy5eUKsNBEhAWj0k6Q-kC26_9dtsWBMf7Rj2gKVLNFId13nooYgrFCWMZQqdeJJGGyzIGovOY5l-xP0ifc4_iq3uFIs9_GYnEzkGBgo0nUeVqRkJwIbCT38VDaHfeTrDWd29eLgtLK058mlAq0EP2uG2SlZWdxDHjBKsKI9u-n9NqCZJIvqdAPXT9LKKwtQ2G0tjHk4xm1PhO-D4Tv2pqBxePYvLDwliKnhA2d0aHaSNVpCNIcZCZVndMpQGK8K5wiqRd_Wuie_j_XIMTG5AskfhKtejqxz9fJFXzh1ICaqGXn9MKpxJvqeO9sCfQXo3pJooCMu607YueL75jV85qf-e_OxroxmwXC7XNJbZ0kVqyLVtC5XcbbRDhyL6u6qdsJPVKoFqd08DaW4rcjTbGscI45xUxLJs2zWNarSCaTpn_gHayUJ3 "StockMovementType")
### StockNonOrderedItem
      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAssetTransaction.NonOrderItemId`<br> |  |
| CustomerId  | int(10)  | Foreign key<br>` Customer.Id ` |  |
| SupplierId  | int(10)  | Foreign key<br>` Supplier.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq9lk1vGjEQhu-R8h8scqEkSBCpqtIbAalCKi0C0gvKwawHsOq1t-PZSBT1v9feaos3fKxJk4oTq8evPZ53Zjyfkkm-fzH6KwpAEEOC9JFtF6vEKIMfWeMKEkiWSeOGWfkT3IfubePX5UVrKNhW8QUo92khV1JTs3v37oZpQ0znShXQdT-3ZFLAkC7Qzh46zbNMyQh0aAeggKByAKoyfQReIYT7SzKF2-aH_UP-ge83B7f-C46MkEsZJ1qy95sdrZ84JmuOzff7wfd87AknaXRt_J9yGSC5lj9ykAI0-R2xyl5ezMsUVLMqOtARnZNZPZKnnhAI1p6-q9b1GGXKcdM3mnhCdbRzIaZT4pTbiCOMObpwT3oroEeQmhHPMqlXx0wb0N96s74RUCfaz9GdIdnUBsYV2DGgdYkd1Ei68pPkLwyNUvVxRdr2PHPNyzL8z3aJ9MmYb1KX-hlgGomOgNZG1MK5L00Ln0GsAONzEOuWN0nVgwUco1lKBa-WLXfQCGwAGUfy1_uvhf3S2AP4dWIvemUxDHvWAs2Qa-sMuae_TPxAfOE4LLpBMWn9nH3QkiI6UunNc9cNpM04JeszlpTvAL8kAi878AQoR33GPiPzBN49E3Czy1Lsdm9RRf53xSagCtyuZWb9pwPPItZtt1usjJltWam7G0SBLTpe_KhK2WUDld37J1olaADhcXbXFK0U3FigVLnH51qH1VrtdpcdLKNAt2qz58K_ARUtWEI= "StockNonOrderedItem")
### StockProduct
Information at generic product level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `CustomerReturnItem.StockProductId`<br>`CustomerStockLevel.StockProductId`<br>`PurchaseOrderItem.StockProductId`<br>`QuoteItem.StockProductId`<br>`StockAsset.StockProductId`<br>`StockProductAttribute.StockProductId`<br>`StockTakeDiscrepancies.StockProductId`<br>`StockTakeItem.StockProductId`<br>`StockTally.StockProductId`<br>`StockThreshold.StockProductId`<br> |  |
| PartNo  | nvarchar(75) <br> `nullable` |  |  |
| ManufacturerId  | int(10)  | Foreign key<br>` Manufacturer.Id ` |  |
| CategoryId  | int(10)  | Foreign key<br>` Category.Id ` |  |
| ProductDescription  | nvarchar(255) <br> `nullable` |  |  |
| Qty  | int(10)  |  | ((0)) |
| IsEditable  | bit  |  | ((1)) |
| SourceURL  | nvarchar() <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrFWFtv2jAUfq_U_xC1Lx0tElSqqu2Ny9YhtVsvdC9oD8E-FK9OnPlSiVb773NCAZsAcRpHiCei48_nfOfz58voQTL0fMsZVkj-Dt7GT4hRxr8ER8eAAE3Q0VkgyCvoD-3zo3-HB40BDt5oOAaqP43JE4nlSfvzp7MgZjKIFaVp0G3I5Q-2iotfQo6mIT-5vNCRy7DG6U0Yq0mIpOLATeAMtbWG2jjthRKeGJ8Vhr4X1AeBOEkkYfGGZM4vrGzu5KwAdSC-YiLDMQWTAmkHPTDFETzeX2-Y0ZxuIPpAQQLegdXjEFoRWP-VJILzk8s8OfPg7mZ2loE3DJMJcQNdxHZnG4q5yPenkySUoDDlu7BFV4oYISomfxUQDLFMZ-R27OHByFSKrVPcghZu7dTpFjlpmer5CjW4HDFa6M9vAjtVbUTrpcqjBxlKJYpCHbUwehTA9VqZEAq-auroqR3C-pBok4h0-R7LLqO_kRHsp_ZMpz0lJIuA34MWVDyQENngE5T66odcVbfVAv8OIbYlu32kafPbRlgTca1MtAdJlmzigpGsvmt4AVqa7m17zTuy-zJ2H-DSjQ-Ze0n2blVq5QJ-8lRIfrVqYfuWam7EflV4p5gEz_xlmPXy5rrKf3WGPYahqhlsWjRdFWMKLo5US-MyzjpCgPTYuQx0OEvAgYUuY8-DON2GXW0jy3bIw1joM8takZ4XlXZUtoPJjZnN2-rQ0NUQt5XbVXQefsWZSvarmHciO1JyMlYSfO05Zbs0z2YYPkOf6JuOPlLFiIDwrmU9QWkn2imdbbp21Y37SWZZQAf_0Rt0euB08bIaxZMm43mv-HiXamI9tTXAg7g7K9V-Nyf4xllUyp2GrLyZ3bAXiNycrFatUDrbl7uU28nqZGHKQUwZxftjopbq0t9xcA80CxdTkoj0k5ld0G42G4H5RBG8BQtQ--XCIKKVPUTlYBYPDQbE6u2heLjxWGAirJgphjDYMSAsztZB1mAazWY7yF-yDTS7uTtzssBWV8gKYLkbVQWs5a2iAsbKW6uCrJ95quLlTi0-AH2wlXluZZCFZTkD_QdSXYOV "StockProduct")
### StockProductAttribute
Additional attributes at product level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id ` |  |
| DetailedSpec  | nvarchar() <br> `nullable` |  |  |
| ImageURL  | nvarchar() <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNqNksFqAjEQhu-C7zCsl-2qkPVS2pvVi9BCUXqSHrLJuIbGZMlOCu3Sd2-6YpsVrZJTZr6Zf-Zn1iuy4u3ZWekFTYmcKjzhKzRFKay27h6SAQoUG5GMoFafGAL5JPnq97KFhEbzAnUIKUNpzm5GYCyB8Vq3xDBuHuOFKtuKu6OKORJXGuWqQvFHm3fuxJa7NNC_6GLHS3xZPl7C6jlqJOyIU1d15pB3CBm-pHY4SW-PBuz31vFOXZ8kQybZvz6dWzwbPnHjN1yQd-iucHYWRiyt-7gG3a_3cJqNwGlVaSU4KWsutj28ASxRtyX1VlX1T-jkRUE-HmcQp6CBg0L3TCID2V7qG5VB1ms= "StockProductAttribute")
### StockTakeAdjustmentCode
      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockTakeDiscrepancies.StockTakeAdjustmentCodeId`<br> |  |
| ShortDescription  | nvarchar(50) <br> `nullable` |  |  |
| ExtendedDescription  | nvarchar(200) <br> `nullable` |  |  |
| Value  | int(10) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtVNFKwzAUfRf8hzBfZl2hG4jo2-ZEBQVx6svwIUvutqtZUpNU1OG_m5ZZ027tOpA-NZx77rnnnmQ8soq9PtBX6POXxNgFSHuuODyT5WTGlFD6jLQOgAGbslaHGPwCd9Dttb7394JrTpaCTkC4I5S23Y0OO0QqS2QiRIoYzZW2QzBMY2xRyT-4fKeazaluH6c1ecHFhwXJgdfX9KJC0RMVCWxQkgOuzRAEWPDkTtAWpZ5roAUEd78WF9Brn5SmCo5W4MHnRgdy4K3iOMVmpL_YwWeVSUUJ_TgWyGjq0NY1XCboQRKJbwkgd5tOO-oidn9v_GhA32k1RVGKAY8g4tHuMXBqnWENYEOIqc4yWG9scORiqxcjS21itkF3cWrsgf9n9szR_JIN0eXaDSkZgik2mLL0ltU2mOAs63G6Zlze4AooB71D0Y1qaM0K3zcGbBV_GexSxBPWGL7-DG3bbcOLuFsI0u-A3IPI4GaOsUmPKiSSbhgGxLszZEl-6T153mKj7GmsY_PUemyFGcp81YxBGHbJ5gR65JULKDf6AVx9_DM= "StockTakeAdjustmentCode")
### StockTakeDiscrepancies
Logs any Stock Take Discrepancies      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| StockTakeHeaderId  | bigint(19)  | Foreign key<br>` StockTakeHeader.Id ` |  |
| StockLocationId  | int(10)  | Foreign key<br>` StockLocation.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| StockProductId  | bigint(19) <br> `nullable` | Foreign key<br>` StockProduct.Id ` |  |
| SerialNo  | nvarchar(50) <br> `nullable` |  |  |
| DiscrepancyValue  | int(10)  |  |  |
| StockTakeAdjustmentCodeId  | int(10) <br> `nullable` | Foreign key<br>` StockTakeAdjustmentCode.Id ` |  |
| Reason  | nvarchar(200) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrFVstuGjEU3SPxDxbZ0DSRBqSqanY8pBSpqaJAukFdGPtCXIw99aPSFPXfayY8xsOQsVWSihXW8fG5x9dn7nRsJFlO8BKGTBMFKRaEgf6O1rMFkVyqG9S6AAJkTlpXSLPf4BY63dafZuNyRNGa4xlwtzRjCyZMu_Pp3RUS0iBhOc9B7_cHfAZMQUVs-iIJNkyK4pYcn1Tje1qDOcVfBt8rSS2ph49BMcy_ygNM_MKKPGHV_pAUgQf_sm-YWwjTvDGmR39YbVYgzEBSqKx2v-0BsJaiQkw38XAjPQQOBrzyjC9hoAB7COr-GraCbvvjkdotuJ-9rO9OUjZnYaQ7bD87Za4voZemnAW2xK1lBYgV7KcFRp3FmxOVj202pqUm9dufJpDQ5F_aP6KTA32Oc2PqqYiu7oTUnpMaALvHyvle78PbmJCHxLnvd5KlEOBEX8rlSDxqPwVrI22isNCYlIus0VQTcLFdWqns-WpDIzffMjbYWF13RN_yZ_itkjYNOOAVO2Zr5Bl75g4LO3cXalVQJwxcZQupsv-bHsdfqnPlyOuI3jwzd3VzxuGNA2_opgCVuxTwktQq7EVE1V4An6f23e8CPQDPefUTS_VmqXqARJ3r60tU-qyiNdqdcjQVFjQl-dxVR7tLqzLpIcWiKfPEKfNtp8posm1slOn2sRxNePwAq_wsD5MxxxSeTIG68DxjyAo9WCDz2rhM12z8BWH_Alg= "StockTakeDiscrepancies")
### StockTakeHeader
Stock Take Header Information      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id `<br> Dependencies: <br> `StockTakeDiscrepancies.StockTakeHeaderId`<br>`StockTakeItem.StockTakeHeaderId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;STH&#39;+CONVERT([nvarchar](22),[Id])) |
| CreatedDate  | datetime2(7)  |  | (getdate()) |
| StockLocationId  | int(10)  | Foreign key<br>` StockLocation.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrNVE1PAjEUvJv4Hxq84CrJQkKM3kCikkhCRE_EQ2nfaqXbYtslQeJ_t90gdNdFdo1fISGhGebNTF9nPDKSTG_xFK4AU1D3aDl5IJJLdYZqB0CARKR2jDR7AXvQbNVe9_eCPkVLjifA7dGEPTBh6s3Tw2MkpEEi4dyB-vQGog1MzLEij1jVW20LXKPOFWADtGe_NlhqfxkWQ6t-kiMNjlK515Jgw6TwdaQiwrwI3QMOdoCv12QxKwnlxq_A3UXh6DVwICmLWDnSd2x3UZBWO_wgoTObcVbS_2XCPEgi2HMCjIIwbqLKYvf3xplws5tAQwhp-OkmFCqwem1kJWBDrKyu3ddb_TKqRTa-06CGSkaMwy9H0IMZVia2MewyZGNS8chgk-hv9e6Bv8f7Zq1cxfSYJsqaFISBzg6IiOuaLzXNqhQ2HVbhT6WbZIXvaA1mG38ebLeIJqQ03Bno0KdEpytwLin8zQNYi-kbiP_FLf1Q6l0pp0D7Ykt-24SUe3cXSsaV2uxWVoKn4IGcQ74vtpj9kV1xnwN0AzyF60c20-4od9Oo2WgEKOMOLdE7cc61t1yhG1HI5XW0x-RZLMXiOfVYMv7zPB-ZgkajiYobLm_S3_1dArO07iVWYXsDdAgffw== "StockTakeHeader")
### StockTakeItem
Stock Take Item level      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| StockTakeHeaderId  | bigint(19)  | Foreign key<br>` StockTakeHeader.Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| StockProductId  | bigint(19) <br> `nullable` | Foreign key<br>` StockProduct.Id ` |  |
| SerialNo  | nvarchar(50) <br> `nullable` |  |  |
| AssetTag  | nvarchar(50) <br> `nullable` |  |  |
| BookedInById  | int(10)  | Foreign key<br>` UserProfile.Id ` |  |
| StockAssetStatusId  | int(10) <br> `nullable` | Foreign key<br>` StockAssetStatus.Id ` |  |
| FromStockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| ToStockLocationId  | int(10) <br> `nullable` | Foreign key<br>` StockLocation.Id ` |  |
| StockMovementId  | bigint(19) <br> `nullable` | Foreign key<br>` StockMovement.Id ` |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtV0Fv2jAUviPxHyx6YbSVQqWp2m7Qal2kMVUlO6EdTPKgFo6dOU4lhvbflwQCdkiITdPtUnEi-vz5vc_ve36eTSX3Vx5egSsh_Ik286XPKRefUe8CfPAXfu8KxeQ3pB-GN70_3c7ADdCG4jnQ9NOcLAmT_eGnD1eIcYlYQmkOutzzfgUcgLBYNIpjkHX4MvhR8CDxm-FTEATT7_wAYy9Y-M9Y9D86KjDf3cPLRuDgcsz5CgKXjdfq9vnezonUphLLJK5couC_CB7ma75xH0vCWdMCj1vBc_CEv0AIrFk-N74HChI0nNRzvBOANUSQ_pUkhJv-7ZEcO3CNdHvghAdkQcxIC-x4XXd2egijKKLkhFgq-iEhCiRh5FcCJEiVy3YUOrbbmZWKX7dV4IATOK-x1ckzPktnOzVmh2JuOzVvHYFBWpn1XPYj1htLo_U8gVmM_XKSDTE19BjbA6qM7BELEx_a95FxQrfwB8GTyGCDN6yYnZAt1swEs2SRHmgijCrhLs1sycX6vxknq9hUhQWhYK1CTaCjNFAD2D1EWMhys68pShGaFdeZTWNL3o4AM81w_1jUrWutLP-G9noXQRlp2r6YTk6lFfgiDsMLzeby0_ifIB1FYplN7wbN3XJIfG-CbTdBBdxO7sXvAj0BzXnjZxLF2SftaYeG19cDVBpM0QYV5EfvNSUUJ39B1bDlxigT7dxiyrEbDMos-8HLgEcpKoVGfaJZJbQ9-sq0iqow5SvMppBVPO5ewXZkalOuooeU0zw8C88WXukcBhyKKxQOzVhllm7nL6t4TE8= "StockTakeItem")
### StockTally
Stock Tall after stock take      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id `<br>Unique<br>` StockProductId ` |  |
| StockTypeId  | int(10)  | Foreign key<br>` StockType.Id `<br>Unique<br>` StockTypeId ` |  |
| Quantity  | int(10)  |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlEFPAjEQhe8k_IcGLoiQLCTG6E0gMRxIVPBEPJR2FhpLu3anJivxv1tWwRZWd0nInnby-rXz5mXmU9TsdUalzF7IZrFkWmpzSxpNYMBi1uiQVHyAK_T6jc96rT3mZCPpAqQrCYWtXnTRIUojUVbKXHGZEx-M5pahL1-IZX7ipvjELEuglP5oqUKBWYlsnI5AAkJwO4aaoQEaKLj7RbGGfuv66IU_4kFW-MK9cKK5iEU16E478JpR79SwFTWtq2Nb75JECkZRaFVq070VnsQq8WZBcHDWuRtNqK3X5v7EwhTwCCIe_ZuCv8c6ocrGlKE1YCrkZuisWmqTVZFWG8dpps33MTzZg2LecwrGuRoLeSai68c1XkE2goQaXLuBlxnkejbrKVK06Vm99MTn6X33NckTyJybrkSSbku_K4z0ut028eNMNmSHDfeS94Joyy-EbMNwSPjeU2XHvdl7AC-3ZQDPQA8QzOAQUa99AX_00kU= "StockTally")
### StockThreshold
Stores Stock threshold      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| StockProductId  | bigint(19)  | Foreign key<br>` StockProduct.Id ` |  |
| Qty  | int(10)  |  | ((0)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlEtrAjEUhfeC_yHoxvqAUSil3fmA4kJoa7uSLmJyxwmNyTS5KVjpf28cqiQ-6ggyq7l8Obn3nEtmU9Ts4zUzYDMt-TtZzxdMS20eSK0ODFjKam1ixTf4QrdX-6lWmmNO1pLOQfqSUNjoJjdtojQS5aQsiFah-mQ0dwxDfC4WxYn7vRPPuDqjObYjkIAQiWHMDA3QiOD-F8USeo27gxb_4MHq6Dg7cKK5SEU50S07CIZRX9SwjJrG7aFL_TyXglEUWp319NGJAHFKfDoQHBRubjQxW63MwgDiUHkCCU_-DfVUSs3WhCqXUobOgCmxBkNv1UKbVRm0XByXmTZ7s2C8C6mQcLELJxrt-0ZLYCPIqcGlD-jcQD4qs5wiRWevOnsAX2f27VcnLyALXZuJ3G5K8StCup1Ok4QrSNZkKx0_DUEXyeaOY0JBiIFOsDBlRAI3ApHI0H2ZauUX7_-c1w== "StockThreshold")
### StockType
Lookup table to identify the type of stock      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `StockAsset.StockTypeId`<br>`StockMovement.StockTypeId`<br>`StockTally.StockTypeId`<br> |  |
| TypeName  | nvarchar(50)  |  |  |
| Description  | nvarchar(50) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNq1U11rwjAUfR_sPwR9cVVBhTG2NzthFLYh2j3JHtJ41WCadEkqONl_Xz-0tkVrMyZ5ajj33HNOTmdTLcja3QbwiXbekggm5BNqNIEAWZBGByn6DdFFf9D4ub2xnDnaMewBi64o161-766DuNCIh4zFiJjpHftwhPENlmSFZeu-jB2BIpIGmgp-Dp5hHTUCBhpy-z2qi3zPEnABMY8-NfVh0HoorU7PLDE_VAp00f2CxP4r3Xt0mQTwWGK22lmiF8Oy2rYQa4d_KJA1wEe1rsRcYRInZ6BpLMU8JNpg4lUQXF6SiTupbIwl8LMrTo5MNdahurTCDlkKf5EiDGos2LfB3l5iHgYBoxU-87mkjXkTG_Ajm_9dmsSfAf6go2bZTIpZ4J_AVwhKOxr8GsG7wqg7V3wnFzO2NX6kqkTMf6GaeV8lhfg00QRYAlcrGqj0MlOGrG63j47lQzt0YMypz8XVi3lPjR-68neG5LXqjf8CLNkhzw== "StockType")
### StormStatus
Lookup table for all Storm statuses      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Category.StormStatusId`<br>`Contact.StormStatusId`<br>`Customer.StormStatusId`<br>`CustomerPurchaseOrderRequestHeader.StormStatusId`<br>`CustomerReturnHeader.StormStatusId`<br>`CustomerReturnHeader.RequestTypeId`<br>`CustomerReturnItem.StormStatusId`<br>`CustomerReturnRequestHeader.StormStatusId`<br>`DispatchHeader.StormStatusId`<br>`DispatchItem.StormStatusId`<br>`DispatchItemUnit.StormStatusId`<br>`PurchaseOrderHeader.StormStatusId`<br>`PurchaseOrderItem.StormStatusId`<br>`PurchaseOrderItemUnit.StormStatusId`<br>`QuoteHeader.StormStatusId`<br>`QuoteItem.StormStatusId`<br>`SalesOrderHeader.StormStatusId`<br>`SalesOrderItem.StormStatusId`<br>`StockMovementRequest.StormStatusId`<br>`UserProfile.StormStatusId`<br> |  |
| Status  | nvarchar(25) <br> `nullable` |  |  |
| Description  | nvarchar(25) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNrtWEFv2jAUvk_af7DohbFWKkjT1N1YOIxD1YiyXtAOxn6ANcfObKcSQ_vvc0iyJYjWDknUbkKciL58ee9733t5zuLeSBXdG2wS_Q3tlmsiuVSfUO8CCJAV6V0izX6CvTAc9X69fTOYUrTjeAncXmLC9IfX7y6RkAaJhPMUkXH9BYlHrMgGq_7og0X-gU1AE8Viw6RwYqd6AhwMlB69ZKb62EABriCo_WtYBKP-x4MIs98isIC1VNtq2iuSJl4_7cH7ECsQpmA9ekMJXdLdBc1T--zgXARSGExMW_kEiTYyAuUKb0ypAq1bTPgWInmL45iJ9bRS8_UefXOSPDbQOOaM4NRyzvQXRfZtqempUqhYhNU2L2VTTY8a1LOs9YrwMJ4HkoLTyomyMRB3d2AOOgSlbakmzu6gzKSCKcm5O69u7RIm6QDTcKcoqBn8SECbL4DpCUYqK10t5F6d_RMyao_61HOKp1l9reRbdV8TdVrBGZhEidZr9qxWx6FZJLmJnKJ4ToxSY_lA67nM0zf1RkuNF0eu1XwbO0001pqtBdC5PLv37N6ze1-Re6cGog68W24Nz_eskeR7qCRNqtZ8ahH1XW5aX_0byd1sSznl8HBkm_Fs6pdWbsJ0jA3ZvIaV7oW2L9sPcnW3sidy9gjtnnPzhArqTuZxt75oeXRV7eY77v6RKVTW7KtgpgPdUuoao96-VeF_GvTp7wLNgO_hesNinV0sBYYGV1dDVHy1QjtUMFaCL9XhOvvId0iQLXCn35_3fmOCpw_gjanLC0RXZJUdsCZZ6vaW4mpHuOr4akzTKL_DaeNL9BvgxlGw "StormStatus")
### Supplier
Supplier Information Table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `PurchaseOrderHeader.SupplierId`<br>`StockNonOrderedItem.SupplierId`<br>`SupplierFeatureMapping.SupplierId`<br> |  |
| IdRef  | nvarchar(25) <br> `nullable`<br> `Computed` |  | (&#39;SUP&#39;+CONVERT([nvarchar](22),[Id])) |
| AddressId  | int(10) <br> `nullable` | Foreign key<br>` Address.Id ` |  |
| AccountRef  | nvarchar(50) <br> `nullable` |  |  |
| Name  | nvarchar(255)  |  |  |
| ContactId  | int(10) <br> `nullable` | Foreign key<br>` Contact.Id ` |  |
| SupplierReference  | nvarchar(20) <br> `nullable` |  |  |
| ContactName  | nvarchar(50) <br> `nullable` |  |  |
| Approved  | bit  |  |  |
| PaymentTermId  | int(10) <br> `nullable` | Foreign key<br>` PaymentTerm.Id ` |  |
| PaymentMethodId  | int(10) <br> `nullable` | Foreign key<br>` PaymentMethod.Id ` |  |
| PurchaseLedgerControllerId  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| VATCodeId  | int(10) <br> `nullable` | Foreign key<br>` VATCode.Id ` |  |
| GDPRCompliant  | bit <br> `nullable` |  |  |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrlV8Fu2kAQvUfKP6zIhZogAVJUtTfiqClSSRHQXlAPy-4Aq9q77ngdiaL-e2xjm7VjjEHOoa04Yb15OzNvZnZ2MQs8zxGAP8huuWbKUfiRtG6AAVux1i3xxW8IP_QHrT_XV9aIk51Dl-CEn4TU7X7v3S2RShMZOE6EGPEprA4Y-UyRbSi2B3chMENZnSHnCL5fypfBhoypQOpyxrsc9Im6UHrsXcFBq2MrqSnT1UenWQnPBgTJSslzFgntEUfy3g49D9UzGB4shS76OaFbF6SeA7rVvmbQMeiN4ifBQeSSD1-ArwEjt1E5DuApu-_Dua04VMMeHyZTW7lh7qjUhfAOqUKg2oyeh3-1cGHQfv9arj34flt98FhxsRL1SFPs_faYUnkXhlEtMKqFkicb4DEQBiSQ4lcAgofiRCdiHnt9tUj6IN98vAc93ju_-bK2mm89qIG2o-7CbSPCW50xuGpMPU_I9ShX2esY_SGPrinreclfJE3YVDrtwNfKPd0ataaZ1Zlphe5MUx34f0MyjQHUTEIXuTnVEOc3H3CCaiUcaKyLwnTWgD2AR1FHATUo_FkKJZ3ZVNznFN1_nXcD3Ezs8V2QXsxfkQN-BsqLS9mKRWtZJbupVT5rM-qAb1DXGCuxyQTQP5KTCyZlulfVkPkM8ewAoyXtX7rJwujZzyclY8WAjzS4DRZDpVwFGeor9kaZSBz4FJIHCIkwTXZG_QgTH07W41skIvrdkCk4MdzfCM-PPqXek363a5FkEyE7knJlu4mRnZ75xNkbJpuTYZi9k6oNjS3BMM49XmoR7JeC1xTpo6aaxLiNTIqjT51qtmROGEzZ5LjEDaMcqs2NcjAVNIukSGBQWN1un5RcIgbVodSPOhKzlEyfS1hKO7cW0QsUxzED "Supplier")
### SupplierFeatureMapping
Supplier Feature relationship table      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | bigint(19)  | Primary key<br>` Id ` |  |
| SupplierId  | int(10)  | Foreign key<br>` Supplier.Id ` |  |
| FeatureId  | int(10) <br> `nullable` | Foreign key<br>` Feature.Id ` |  |
| Value  | nvarchar(50)  |  |  |
| IsEnabled  | bit  |  | ((1)) |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNq1lF1rwjAUhu8F_0PQG-cHVGGM7a7qNoQJMp03sou0OdZAmnRJOnCy_75WWk39aCt0eNXTp2_e855jVvMwCBgF-QJYhxKmOAgo9z7RzvFcwYR8Qo0muOCu3UYXKfoDUaE_aPzWa-0JQTuGHWBRyaEe5brVf7zrIi404iFje6iTHmDSe9Q6QxMPF8kDtsQshCPAv7F0N1i27k_1JuqZY4dBxqU-ZcbAQOcyIxnZMgkSPWrqw6D1cNZCAg-3-U1MBaFrWk40ZYfbMl23O3act4s1Fbww89eQGkjI6VcIlADX8Ykyy9Zrq3SW2fUgFljEyl2PKwO3CZGgVH5WUaiCa-zqImyGt35kfQHSL4lOQW8EKYTDOGsFb0A8kLEZKRi7stHGd0t7MRIECrsrtzK3DXaV_JeqmtT_mPxQIGdSrCmrzKgdGS2BjSHAUsc7UNTQXAvpz3WUpqq0dwOupvf010TvwPa6akMDFZcuX_Ko3-u1UfoO7VAqf7yyDRdWfEaeUFIzdA73-S0yxk4YUsb-3SJmhGyIZeZ0Klev_QHDpzqZ "SupplierFeatureMapping")
### UserProfile
User table to store all User details      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.CreatedById`<br>`Area.CreatedById`<br>`BulkAssetGroup.CreatedById`<br>`Category.CreatedById`<br>`Contact.CreatedById`<br>`Customer.CreatedById`<br>`Customer.SalesPersonID`<br>`Customer.CreditControllerId`<br>`CustomerFeatureMapping.CreatedById`<br>`CustomerPurchaseOrderRequestHeader.CreatedById`<br>`CustomerPurchaseOrderRequestHeaderAttributeMapping.CreatedById`<br>`CustomerPurchaseOrderRequestItem.CreatedById`<br>`CustomerReturnHeader.SalesPersonId`<br>`CustomerReturnHeader.AssignedToId`<br>`CustomerReturnHeader.CreatedById`<br>`CustomerReturnHeaderAttributeMapping.CreatedById`<br>`CustomerReturnItem.CreatedById`<br>`CustomerReturnItemUnit.CreatedById`<br>`CustomerReturnRequestHeader.CreatedById`<br>`CustomerReturnRequestHeader.SalesPersonId`<br>`CustomerReturnRequestItem.CreatedById`<br>`CustomerReturnRequestItemUnit.CreatedById`<br>`CustomerStockLevel.CreatedById`<br>`DispatchHeader.CreatedById`<br>`DispatchHeaderFeatureMapping.CreatedById`<br>`DispatchItem.CreatedById`<br>`DispatchItemUnit.CreatedById`<br>`Employment.UserProfileId`<br>`Feature.CreatedById`<br>`Manufacturer.ParentManufacturerId`<br>`Memo.CreatedById`<br>`Memo.AllocatedToId`<br>`Memo.CompletedById`<br>`ProofOfDelivery.CreatedById`<br>`PurchaseOrderHeader.SalesPersonId`<br>`PurchaseOrderHeader.CreatedById`<br>`PurchaseOrderHeaderFeatureMapping.CreatedById`<br>`PurchaseOrderItem.CreatedById`<br>`PurchaseOrderItemUnit.CreatedById`<br>`QuoteHeader.CreatedById`<br>`QuoteHeader.SalesPersonId`<br>`QuoteHeaderFeatureMapping.CreatedById`<br>`QuoteItem.CreatedById`<br>`SalesOrderHeader.SalesPersonId`<br>`SalesOrderHeader.CreatedById`<br>`SalesOrderHeaderFeatureMapping.CreatedById`<br>`SalesOrderItem.CreatedById`<br>`SalesOrderItemUnit.CreatedById`<br>`StockAsset.BookInUserId`<br>`StockAsset.CreatedById`<br>`StockAssetAttribute.CreatedById`<br>`StockAssetTransaction.CreatedById`<br>`StockLocation.CreatedById`<br>`StockMovement.CreatedById`<br>`StockMovementNote.CreatedById`<br>`StockMovementParentType.CreatedById`<br>`StockMovementRequest.RequestedById`<br>`StockMovementRequest.CreatedById`<br>`StockMovementRequest.RequestedForId`<br>`StockMovementRequestItem.CompletedById`<br>`StockMovementRequestItem.CreatedById`<br>`StockMovementType.CreatedById`<br>`StockNonOrderedItem.CreatedById`<br>`StockProduct.CreatedById`<br>`StockTakeAdjustmentCode.CreatedById`<br>`StockTakeDiscrepancies.CreatedById`<br>`StockTakeHeader.CreatedById`<br>`StockTakeItem.CreatedById`<br>`StockTakeItem.BookedInById`<br>`StockTally.CreatedById`<br>`StockThreshold.CreatedById`<br>`Supplier.PurchaseLedgerControllerId`<br>`Supplier.CreatedById`<br>`SupplierFeatureMapping.CreatedById`<br>`Warranty.CreatedById`<br> |  |
| LoginId  | nvarchar(25)  | Unique<br>` LoginId ` |  |
| AreaId  | int(10)  | Foreign key<br>` Area.Id ` |  |
| DepartmentId  | int(10) <br> `nullable` | Foreign key<br>` Department.Id ` |  |
| FullName  | nvarchar(50)  |  |  |
| JobTitle  | nvarchar(50) <br> `nullable` |  |  |
| Phone  | nvarchar(20) <br> `nullable` |  |  |
| Extension  | nvarchar(5) <br> `nullable` |  |  |
| Mobile  | nvarchar(20) <br> `nullable` |  |  |
| Email  | nvarchar(75) <br> `nullable` |  |  |
| StormStatusId  | int(10) <br> `nullable` | Foreign key<br>` StormStatus.Id ` |  |
| HolidayAllowance  | decimal(12) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| CreatedOn  | datetime2(7)  |  | (getdate()) |
| CreatedBy  | nvarchar(50)  |  | (suser_sname()) |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNrtWF1P2zAUfUfiP0TwUlIqtZUQ2t5KGB_TOipge6n24Ma3xZpjZ_7Y1qH99zn9ACek2A1h3aSqD5Wi43PvPfceO87wkwQxEHxMKHwJ7keTmFMu3gZ7-xBDPI73DgNJfoF50Onu_d7dCS9xcE_RCKh5RJhqdNoHhwHjKmCa0gzxgU8Is1HsOxLxHRKN7lEBGjZ7ApCTMWyeQoqESoCpUvAD8sz8f0QJlAQ_KrK-56NbouhK7ANwcMdZGaqbQ737qYBJwlkZnw3s8xGhHnwJIrQEdZwjC5s3iovkRiGl5fPaXHBKMJr2KOU_EIutDDDEJEG00ena-Et5ChQUWKQjovIaRqZ9BnFlFY3NA0US6DaOD0rBJ1Of7vQ5JmNiB19NvMT6MZuhS1NKYqRMs5yzd66JBdGMfNNAsBnELKLIY3d3htk8522E29DG7fVtFDYHSJg4Kx1iIR-UdQHXqXz4aLp6Khpao1oTo1VPPYzzJmIsQBZyHMfZhliljwu622kKHuiIa6aEs5Ofe7cRx-CC9SHhfZSmhE0uc0aezNBv_sYcPfVEdS037YkTTb_2pAR1LrhO167K1r3Q9ldJNzKcEy6m9cq_ZHWl6n00eZc_jDhTKFZ11RNpqXgCwin63MI1FvwvGHNZfc0bnSvHgTBvG2K6aOVLNS0dUM-2rtcEzy030sLkELvdgSjIAQhpWnXqdAcmKhNMcErddW3HZTsu23HZjsv_OC5nhlwLWAhX5xvWc23LQxc5bFaIgc4usBKuBAZxDebeKdUFIFzBUatFmY3JLMKc2mNQ17OMp2t9PeU7_r5u2lAHe0oJMtLqFcd8dXA_nk16IPvtB9dAZ3B5R1KZPbI-VQadVisMsntgcB8suebXQku3dkb2ZNXjdw1rrf2F0clgWcCiyBnDyWHpYZdgq1TkyLOErVYnWNjLYrAa8lwO89V5_dZZmr8IVyRZXiSrLp-f8VVXL4xS3_LcmVsxfuEk9mbJH5svrGn13vFqxMUd0S_QH82Kydg= "UserProfile")
### VATCode
Lookup table to store VAT Codes      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id `<br> Dependencies: <br> `Address.VATCodeId`<br>`Customer.VATCodeId`<br>`CustomerPurchaseOrderRequestHeader.VATCodeId`<br>`CustomerPurchaseOrderRequestItem.VATCodeId`<br>`CustomerReturnHeader.VATCodeId`<br>`DispatchHeader.VATCodeId`<br>`PurchaseOrderHeader.VATCodeId`<br>`PurchaseOrderItemUnit.VATCodeId`<br>`QuoteHeader.VATCodeId`<br>`QuoteItem.VATCodeId`<br>`SalesOrderHeader.VATCodeId`<br>`SalesOrderItemUnit.VATCodeId`<br>`Supplier.VATCodeId`<br> |  |
| VATNumber  | nvarchar(20) <br> `nullable` |  |  |
| Code  | nvarchar(5)  |  |  |
| Rate  | decimal(12)  |  | ((0)) |
| MemoMappingId  | bigint(19) <br> `nullable` | Foreign key<br>` MemoMapping.Id ` |  |
| Created  | datetime2(7)  |  | (getdate()) |


![alt text](https://kroki.io/erd/svg/eNrlWE1vGjEQvUfKf1iRCyVBAqSqam8EDs0hDQXaC-rB2ANY9dpbf0SiUf97vcCm3i1kbboQkooTq-fn8cyb59mdfO2Oe4LAt-hhOseCCfkhql0ABjzDtatI0Z9gH7Q7tV_nZ40bEj0wNAVmH1Gu6-3Wm6uICx1xw1iKsGSfTDwF-QfH75HECyTrnRT8iEz33AJ6WyAcIu3ACGAaI1ZvdwqwxuUtxOIWJQnlczfKKZ2vAn2f21uCpXVQxP7VNIZO_V2B-Pxs4jDnk0Ra0CKtJ5Pkbp-ntcRdQiQolSed4TT34ZlvXG7oxssEPNA9YbiWy61IB7ZRRxksJPt273X-r0t37yYJoxhpKnjpkSY9o7SIQVacz7IYB9JKUi57gmuEdRl6pIWMRxppozxCGCAJXGcHq7YInpXtGWljwKWlGiEGagBS2VL1SyglEKrThEnBWPm5DiuXgUmdR8GdJCCH8MOA0h8BkT2EtKvbN9lZ7bCm9qhPmFI8xeorJd-q-4ro6BW80RBXWL-yrXxM7yWldAjaSF55Gzwpv-3QdSRZqsuS4mnCjlf5QMMa17MVw9y6zA0c6CZXO-cAN1Sl6JwDGYtXYQh9qhKk8eIU7PuZnHYghZjdzfrA6D2Uj3cBssoOlFEfROaH0UXOtU_ibvc3IF8djUyaES9rDSp6peo8OTGkd_cXTnWFcviLP1RFWUy-OgoeK_F36_ugjz-zhAjvILX_bISGU5hqBmgZ2ze7Mcj4-DPNq6xqxQO_oxTP_k37yt6-xGDtK5ujlmHbl4VrwwmDZ7Pion39bz2597Xsoc4XNrunv4toCGwFVwuaqPTRJqSo3Ww2Imd6iB6ijC43Uzhqaa1pM4ZGs9mONjOrs_rxzMWVuXWZRPZeuPsjU6WUqQnuTei-8weT5F-9gpdvmdD_jSMbooJZnNbab-1eNSg6oQ_BbwmTCgk= "VATCode")
### Warranty
Stock asset Warranty information to be stored here      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
| Id  | int(10)  | Primary key<br>` Id ` |  |
| StockAssetId  | bigint(19) <br> `nullable` | Foreign key<br>` StockAsset.Id ` |  |
| Description  | nvarchar(255) <br> `nullable` |  |  |
| StartDate  | datetime2(7) <br> `nullable` |  |  |
| EndDate  | datetime2(7) <br> `nullable` |  |  |
| IsDeleted  | bit  |  | ((0)) |
| Created  | datetime2(7)  |  | (getdate()) |
| CreatedById  | int(10) <br> `nullable` | Foreign key<br>` UserProfile.Id ` |  |
| Modified  | datetime2(7)  |  | (getdate()) |
| ModifiedBy  | nvarchar(50)  |  | (suser_sname()) |
| ApplicationId  | int(10)  | Foreign key<br>` Application.Id ` | ((1)) |
| Guid  | uniqueidentifier  |  | (newid()) |


![alt text](https://kroki.io/erd/svg/eNqtlE9rwjAYxu-C3yHoxTmFKsjYbnYdImwg07GD7BDTVw3GpEvSQSf77kvdqomrtoXRU8Pv_fe8TzJ_xVJirpM3tFusiGBC3qFGEwiQJWl0kKKfYA56_cZXvdYeh2jH8AKYOaJct3reVQdxoRGPGdsT11MtyGaoFGgbXtDVnr81_AEOQBFJI00FP5L8A0uyxrLVHwxseKqx1AHWcERD86fpFvqtG5t84GEpbqwCYKDBaVO789xLwA7h5nJH_4X9JFemA_gkQrqk5ZJmrJ_kKDT4q_4wihglOJW0cFejmFpIzOl7DDQErtOK0mXrtflxsa5VQg-80LtoFXv7OW6ZJRGUcJYvxGbMXxTISjacGXsrTE4lKehpIkUYE10h4lFc0D23swmWRu3Ca2KHmFugY1VUwo_ZDz6SIo5KFCjp3Gr-mqerMjouKYPKljmz1qFptAQWQGRei-2Jume2IbflVK00uwX_z-zZ10TPwPZ51ZpGKj3KnnDU63bb6GgWtENZSvtVtmp7aWY33FqaFW8Z5HK4NbcV7kh3mqBe-wYSUQ7X "Warranty")


<!-- END dblookup-markdown -->

