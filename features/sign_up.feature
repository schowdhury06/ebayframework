Feature: Ebay Register

Scenario: register with email
   Given i am on the homepage
   When i  click the register button
   Then register window page open
   When i enter "shyd.chowdhury@gmail.com" in the email field
   And i reenter "shyd.chowdhury@gmail" in the email field again
   And i put 'shamrat123+' in "password" field
   Then I put my name "Shamrat" in First name field
   Then I put my last name "Chowdhury" in Last name field
   Then I put 1234567890 in phone number field
   Then I click Register button 
   