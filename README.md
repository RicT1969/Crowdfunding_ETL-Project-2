# Project_2_ETL
<p><h2>Extrat, Transform, Load: mini project setting up an ETL pipeline using using Crowdfunding data.</h2></p>
<p>For the ETL mini project,  Richard Thornton and Roberto Sammassimo, collaborated to build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. The idea of the project was to take the raw data, contained in an excel spreadsheet, and transform it into smaller digestible tables with appropriate data types to enable the DataFrames to be imported into a relational database (PostgreSQL) for future analysis.</p>
<p>This project had three steps:<ol>
  <li>Importing the data, contained in a Excel file.</li>
  <li>Transform and clean the data, creating a four DataFrames.</li>
  <li>design an EDL and export the data into a SQL databse.</li></ol>
<p><h3>Step 1: Extract raw data and ransform identifying data for ease of access in the eventual database</h3><ol></p>
  <li>the crowdfunding.xlsx Excel data to create a category DataFrame with columns:</li><ul>
    <li>"category_id" -  with entries going sequentially from "cat1" to "catn" (where n is the number of unique categories). This involved transfoeming the category by concatenating the category number with the prefix "cat".</li>
    <li>"category" - that contains only the category titles.</li>
    <li>Export the category dataframe as a csv.</li></ul>
  <p><li>Create a subcategory DataFrame with columns:</li></p><ul>
    <li>"subcategory_id" with entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories.</li>
    <li>"subcategory" that contains only the subcategory titles.</li>
    <li>As above, export the category dataframe as a csv.</li></ul></ol>
<p><h3>Step 2: Further transformation of data for larger detailed tables.</h3></p><ol>
  <li>Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame, involving 14 columns detailing the campaign, its duration, the amount sought and raised and whether the campaign was successful.</li>
  <li>In particular, UTC datetimes to be converted to datetime format and columns referring to money converted to float data tpes.</li>
  <li>Export DataFrame to a csv file.</li>
  <li>Create a final DataFrame called 'Contacts' from a se[erate scv file containing details of the contacts for each project, their email addresses and id. numbers.</li>
  <li>A choice of two options were offered for achieveing this:</li><ul>
  <li><b>Option 1:</b> Use Python dictionary methods.</li>
  <li><b>Option 2:</b> Use regular expressions.</li></ul>
  <li><b>Option 1 was chosen - using Python dictionary methods</b> This required:</li><ul>
  <li>Iterating through the DataFrame, converting each row to a dictionary.</li>
  <li>Iterate through each dictionary to:</li><ul>
  <li>Extract dictionary values from the keys by using a Python list comprehension.</li><li>
  <li>Add the values for each row to a new list.</li></ul>
  <li>Create a new DataFrame containing the extracted data.</li>
  <li>Split each 'name' column value into a first and last name, each in a new column.</li>
  <li>Clean and export the DataFrame as contacts.csv</li></ul></ol>
<p><h3>Create the Crowdfunding Database.</h3></p><ol>
  <li>Inspect the four CSV files, and then sketch an ERD of the tables</li>
  <li>Use the information from the ERD to create a table schema for each CSV file specifying the data types, primary keys, foreign keys, and other constraints.</li>
  <li>Save the database schema as a Postgres file</li>
  <li>Using the database schema, create the tables in the correct order to handle the foreign keys.</li>
  <li>Verify the table creation by running a SELECT statement for each table.</li>
  <li>Verify that each table has the correct data by running a SELECT statement for each.</li></ol>
  
<h3><b>Particular Challenges and Issues:</b></h3><ol>
<li>The starter code for the "Create Contacts' DataFrame" had a bug. It imported the data from the relevant csv file using the "header=2" parameter. This introduced an adiditonal row in the table which mean that the header 'contact_info' was read in as the forst row in the DataFrame. This caused issues in further cleaning the DataFrame, whether by using python dictionaries and a list comprehension or using regular expressions. teh data would have been correctly read in using the parameter "header=3". Rather than change the started code, instead the first row was made the column header, which solved the issues. An alternate method would have been to loop thorugh the DataFrame using 'itterows' and dropping the header row.</li>
<li>The original repository set up on GitHub had to be replaced late in the day by a new repository. Somehow there was a conflict caused between files submitted to a branch for merging. the conflicts were minor - coming from the number of times the Jupityr notebook. We did not get to the bottom of why the conflict occurred, and why it was so difficult to resilve, but because time was running short for submission, we set this alternative repository nad pushed the merger=d file and supporting documents.</li></ol>
  

  
  
  

  
  
  
  
  
  



Since this is a one-week project, make sure that you have done at least half of your project before the third day of class to stay on track.
