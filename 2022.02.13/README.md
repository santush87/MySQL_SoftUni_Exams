<h1>Online store – electronic devices</h1>
  <p>A client who owns a big online store for electronic devices needs your help to manage the database of the shop. </p>
    <p>Help him by implementing the database structure, optimize his system and make analysis for the future management strategy of the shop.</p>
    
<h2>Section 0: Database Overview</h2>
  <p>You have been given an Entity / Relationship Diagram of the Database:</p>
  
  ![Screenshot_2](https://user-images.githubusercontent.com/73018624/222157076-71fd4cf5-55da-42ea-8491-dc5867807c91.jpg)

  <p>The online_stores’s Database needs to hold information about products, customers, orders, categories, brands, reviews.</p>
   <p>Your task is to create a database called online_store. Then you will have to create several tables.</p>
    <p>•	brands – contains information about the brands.</p>
     <p>•	categories – contains information about the categories.</p>
      <p>•	reviews – contains information about the reviews.</p>
       <p>•	products – contains information about the products.</p>
        <p>o	Each product has a brand, review and category.</p>
          <p>•	customers – contains information about the customers.</p>
            <p>•	orders – contains information about the orders.</p>
              <p>o	Each order has a customer. </p>
                <p>•	orders_products – a many to many mapping table between the orders and the products.</p>        
    <h2>Section 1: Data Definition Language (DDL) – 40 pts</h2>    
    <p>Make sure you implement the whole database correctly on your local machine, so that you could work with it.</p>
     <p>The instructions you'll be given will be the minimal needed for you to implement the database.</p>
     <h3>01.	Table Design</h3>
      <p>You have been tasked to create the tables in the database by the following models:</p>       
      
![Screenshot_1](https://user-images.githubusercontent.com/73018624/222665595-4d222b2f-742e-41da-921a-576eb5cca119.jpg)
      
![Screenshot_2](https://user-images.githubusercontent.com/73018624/222664047-7ed245fe-7aa1-4538-a67b-4c6cf210e5bf.jpg)     
      
![Screenshot_3](https://user-images.githubusercontent.com/73018624/222664085-7a0bb9aa-eaf3-4bb3-968a-988dc52762ec.jpg)      
      
![Screenshot_4](https://user-images.githubusercontent.com/73018624/222664145-f9abede5-4de3-4ee6-9cc0-dd4ac0aabf61.jpg)      
      
![Screenshot_5](https://user-images.githubusercontent.com/73018624/222664182-3eb014b4-f987-43fe-b08c-0a5af7abcb2e.jpg)      
     
 <p>Submit your solutions in Judge on the first task. Submit all SQL table creation statements.</p>
        <p>You will also be given a data.sql file. It will contain a dataset with random data which you will need to store in your local database. This data will be given to you so you will not have to think of data and lose essential time in the process. The data is in the form of INSERT statement queries. </p>
    
<h3>2.	Insert</h3>
    <p>You will have to insert records of data into the coaches table, based on the players table. </p>
     <p>For players with age over 45 (inclusive), insert data in the coaches table with the following values:</p>
      <p>•	first_name – set it to first name of the player</p>
       <p>•	last_name – set it to last name of the player.</p>
        <p>•	salary – set it to double as player’s salary. </p>
    <p>•	coach_level – set it to be equals to count of the characters in player’s first_name.</p>
 
<h3>03.	Update</h3>
     <p>Reduce all products quantity by 5 for products with quantity equal to or greater than 60 and less than 70 (inclusive).</p>
      <h3>04.	Delete</h3>
     <p>Delete all customers, who didn't order anything.</p>
      <h2>Section 3: Querying – 50 pts</h2>
       <p>And now we need to do some data extraction. Note that the example results from this section use a fresh database. It is highly recommended that you clear the database that has been manipulated by the previous problems from the DML section and insert again the dataset you’ve been given, to ensure maximum consistency with the examples given in this section.</p> 
       <h3>05.	Categories</h3>
     <p>Extract from the online_store system database, info about the name of categories.</p>
      <p>Order the results by category_name in descending order;</p>
       <h4>Required Columns</h4>
       <p>•	id (categories)</p>
        <p>•	name</p>
        <h4>Example</h4>

![Screenshot_3](https://user-images.githubusercontent.com/73018624/227310427-b6d9d902-6a35-4221-b1a6-66a70790cedf.jpg)
        <h3>06.	Quantity</h3>
       <p>Write a query that returns: product_id, brand_id, name and quantity from table products. Filter products which price is higher than 1000 and their quantity is lower than 30.</p>
     <p>Order the results ascending by quantity_in_stock, then by id.</p>
     <h4>Required Columns</h4>
      <p>•	id (product)</p>
       <p>•	brand_id </p>
       <p>•	name (product)</p>
       <p>•	quantity_in_stock</p>
       <h4>Example</h4>
       ![Screenshot_2](https://user-images.githubusercontent.com/73018624/227647429-ee688ab4-5e0c-4e87-8c1d-b8d558d78484.jpg)
       <h3>07.	Review</h3>
     <p>Write a query that returns: id, content, rating, picture_url and published_at for all reviews which content starts with ‘My’ and the characters of the content are more than 61 symbols.</p>
      <p>Order by rating in descending order.</p>
      <h4>Required Columns</h4>
       <p>•	id (reviews)</p>
       <p>•	content</p>
       <p>•	rating</p>
      <p>•	picture_url</p>
       <p>•	published_at</p>
       <h4>Example</h4>
       ![Screenshot_2](https://user-images.githubusercontent.com/73018624/227704436-e4091fc8-9549-48f8-a4ac-8a985c9dee5b.jpg)

       
       <h3></h3>
     <p></p>
      <p></p>
       <p></p>
       
       <h3></h3>
     <p></p>
      <p></p>
       <p></p>
  <></>
  <></>
  <></>
  -->

