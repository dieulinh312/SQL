--- Get a feel for the transaction_data table:

 SELECT * 
  FROM transaction_data
  LIMIT 10;

--- Find the full names and emails of the transaction listing 20252 as the zip code

SELECT full_name, email
  FROM transaction_data
  WHERE zip = 20252;

--- Find names and emails associated with "Art Vandelay" as full name or "der" in middle name

SELECT full_name, email
  FROM transaction_data
  WHERE full_name = 'Art Vandelay' OR full_name LIKE '% der %';

--- Find ip addresses and emails listed with IP starting with 10:

SELECT ip_address, email
  FROM transaction_data
  WHERE ip_address LIKE '10%';

--- Find emails with 'temp_email.com' as a domain

SELECT email 
  FROM transaction_data
  WHERE email LIKE '%temp_email.com';

--- Find transaction where ip address starts with '120' and full name starts with 'John'

SELECT *
  FROM transaction_data
  WHERE ip_address LIKE '120%' AND full_name LIKE 'John%';


