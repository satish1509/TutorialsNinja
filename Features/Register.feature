Feature: Registration functionality

Scenario: User creates an account only with mandatory fields
Given User navigates to Register Account page
When User enters the details into below fields
|firstName |satish|
|lastName  |kumar|
|email     |satish0915.salesforce@gmail.com|
|telephone |9398998708|
|password  |Satti@0915|
And User selects Privacy Policy
And User clicks on continue button
Then User account should get created successfully

Scenario: User creates an account only with all fields
Given User navigates to Register Account page
When User enters the details into below fields
|firstName |satish|
|lastName  |kumar|
|email     |kotturusatish.ntt@gmail.com|
|telephone |9398998708|
|password  |Satti@0915|
And User selects Yes for NewsLetter
And User selects Privacy Policy
And User clicks on continue button
Then User account should get created successfully

Scenario: User creates a duplicate account
Given User navigates to Register Account page
When User enters the details into below fields
|firstName |satish|
|lastName  |kumar|
|email     |satish0915.salesforce@gmail.com|
|telephone |9398998708|
|password  |Satti@0915|
And User selects Yes for NewsLetter
And User selects Privacy Policy
And User clicks on continue button
Then User should get a proper warning about duplicate email
Then User should get a proper warning about duplicate email

Scenario: User creates an account without filling any details
Given User navigates to Register Account page
When User dont enter any details into fields
And Clicks on continue button
Then User should get proper warning messages