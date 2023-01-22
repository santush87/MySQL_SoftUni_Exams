<h1>SoftUni Internet Movie Database – SU-IMDb</h1>

<p>The biggest international movie festival is about to begin. They hired a team of programmers to help manage their database. Now you are the leader of the team and you need to manage the system so they can keep track of all movies and actors and finally on the ceremony to give the annual awards to the winners.</p>

<h2>Section 0: Database Overview</h2>
<p>You have been given an Entity / Relationship Diagram of the Database:</p>

![Screenshot_3](https://user-images.githubusercontent.com/73018624/208113882-f9103493-1342-435a-b637-3294c5869f12.jpg)

<p>The softuni_imdb’s Database needs to hold information about movies, countries, actors, genres and movies additional info.</p>
<p>Your task is to create a database called softuni_imdb. Then you will have to create several tables.</p>
<p>       •	countries – contains information about the countries.</p>
<p>       •	movies – contains information about the movies.</p>
<p>           o	Each movie has actors, country and genres.</p>
<p>       •	actors – contains information about the actors.</p>
<p>          o	Each actor has a country.</p>
<p>       •	genres – contains information about the genres.</p>
<p>       •	movies additional info – contains information about the customers.</p>
<p>       •	movies_actors – a many to many mapping table between the movies and the actors.</p>
<p>       •	genres_movies – a many to many mapping table between the genres and the movies.</p>

<h2>Section 1: Data Definition Language (DDL) – 40 pts</h2>
<p>Make sure you implement the whole database correctly on your local machine, so that you could work with it.</p>
<p>The instructions you'll be given will be the minimal needed for you to implement the database.</p>
<p></p>

<h3>01.	Table Design</h3>
<p>You have been tasked to create the tables in the database by the following models:</p>

![Screenshot_4](https://user-images.githubusercontent.com/73018624/208116449-12fbbed8-aac4-4b36-af2c-827cfced0d14.jpg)

![Screenshot_5](https://user-images.githubusercontent.com/73018624/208116472-67d8a2f7-67b8-4482-b540-dcb05bd1ac84.jpg)

![Screenshot_6](https://user-images.githubusercontent.com/73018624/208116501-64044993-5cff-45f2-b2d8-bd322719ec65.jpg)

![Screenshot_7](https://user-images.githubusercontent.com/73018624/208116537-717ad0b2-e436-47b9-b0ca-c972f487a401.jpg)

![Screenshot_8](https://user-images.githubusercontent.com/73018624/208116556-ee18c6eb-9375-4450-91de-7f3e480b2feb.jpg)

![Screenshot_9](https://user-images.githubusercontent.com/73018624/208116615-366b0836-bbea-44c6-a74f-deb8f8ceada4.jpg)

![Screenshot_10](https://user-images.githubusercontent.com/73018624/208116634-35bfc227-c22b-4cb9-803a-75c8659b3137.jpg)

<p>Submit your solutions in Judge on the first task. Submit all SQL table creation statements.</p>
<p>You will also be given a data.sql file. It will contain a dataset with random data which you will need to store in your local database. This data will be given to you so you will not have to think of data and lose essential time in the process. The data is in the form of INSERT statement queries. </p>

<h2>Section 2: Data Manipulation Language (DML) – 30 pts</h2>
<p>Here we need to do several manipulations in the database, like changing data, adding data etc. </p>
<p>Select and join only tables and columns that are needed in the exercises. Any additional or less information will be considered wrong. </p>

<h3>02.	Insert</h3>
<p>You will have to insert records of data into the actors table.</p>
<p>The new data will be based on actors with id equal or less than 10. Insert data in the actors table with the following values:</p>
<p>•	first_name – set it to the first name of the actor but reversed.</p>
<p>•	last_name – set it to the last name of the actor but reversed.</p>
<p>•	birthdate – set it to the birthdate of the actor but 2 days earlier.</p>
<p>•	height – set it to the height of the actor plus 10.</p>
<p>•	awards – set them to the country_id.</p>
<p>•	country_id – set it to the id of Armenia.</p>

<h3>03.	Update</h3>
<p>Reduce all movies runtime by 10 minutes for movies with movies_additional_info id equal to or greater than 15 and less than 25 (inclusive).</p>

<h3>04.	Delete</h3>
<p>Delete all countries that don’t have movies.</p>


<h2>Section 3: Querying – 50 pts</h2>
<p>And now we need to do some data extraction. Note that the example results from this section use a fresh database. It is highly recommended that you clear the database that has been manipulated by the previous problems from the DML section and insert again the dataset you’ve been given, to ensure maximum consistency with the examples given in this section.</p>

<h3>05.	Countries</h3>
<p>Extract from the softuni_imdb system database, info about the name of countries.</p>
<p>Order the results by currency in descending order and then by id.</p>
<p>Required Columns</p>

<p>•	id (countries)</p>
<p>•	name</p>
<p>•	continent</p>
<p>•	currency</p>

<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/212849747-f849db6a-a3e3-4b29-9a95-01ec277c812b.jpg)


<h3>06.	Old movies</h3>
<p>Write a query that returns: title, runtime, budget and release_date from table movies_additional_info. Filter movies which have been released from 1996 to 1999 year (inclusive).</p>
<p>Order the results ascending by runtime then by id and show only the first 20 results.</p>
<p>Required Columns</p>

<p>•	id</p>
<p>•	title</p>
<p>•	runtime</p>
<p>•	budget</p>
<p>•	release_date</p>

<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/213120053-b6e6df03-87c9-4751-8139-77353c7914b6.jpg)

<h3>07.	Movie casting</h3>
<p>Some actors are free and can apply the casting for a new movie. You must search for them and prepare their documents.</p>
<p>Write a query that returns:  full name, email, age and height for all actors that are not participating in a movie.</p>
<p>To find their email you must take their last name reversed followed by the number of characters of their last name and then the casting email “@cast.com”</p>
<p>Order by height in ascending order.</p>
<p>Required Columns</p>

<p>•	full_name (first_name + " " + last_name)</p>
<p>•	email (last_name reversed + number of characters from the last_name + @cast.com)</p>
<p>•	age (2022 – the year of the birth)</p>
<p>•	height</p>
<h4>Example</h4>

![Screenshot_2](https://user-images.githubusercontent.com/73018624/213120760-a5635f3e-db60-49fc-a5a2-6cd921510b44.jpg)



<h3>08.	International festival</h3>
<p>The international movie festival is about to begin. We need to find the countries which are nominated to host the event.</p>
<p>Extract from the database, the name the country and the number of movies created in this country. The number of movies must be higher or equal to 7.</p>
<p>Order the results descending by name.</p>
<p>Required Columns</p>
<p>•	name (country)</p>
<p>•	movies_count (number of movies created in the country)</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/213392701-6e92786e-05be-4540-8b74-188f039be9db.jpg)


<h3>08.	International festival</h3>
<p>The international movie festival is about to begin. We need to find the countries which are nominated to host the event.</p>
<p>Extract from the database, the name the country and the number of movies created in this country. The number of movies must be higher or equal to 7.</p>
<p>Order the results descending by name.</p>
<p>Required Columns</p>
<p>•	name (country)</p>
<p>•	movies_count (number of movies created in the country)</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/213690549-77c800bf-cd05-49c5-a82d-77d8e3d213c5.jpg)


<h3>09.	Rating system</h3>
<p>From the database extract the title, rating, subtitles, and the budget of movies. If the rating is equal or less than 4 the user must see “poor”, above 4 and less or equal to 7 “good” and above that it should display “excellent”. If the movie has subtitles the user should see “english”, otherwise “-“.</p>
<p>Order the results descending by budget.</p>
<p>Required Columns</p>
<p>•	title</p>
<p>•	rating (less or equal to 4 – “poor”, above 4 and less or equal to 7 – “good”, above 7 – “excellent”)</p>
<p>•	subtitles (if it has subtitles it– “english”, otherwise – “-“)</p>
<p>•	budget</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/213907055-59306b05-2bdf-490e-8804-41c48d323a67.jpg)

<h2>Section 4: Programmability – 30 pts</h2>
<p>The time has come for you to prove that you can be a little more dynamic on the database. So, you will have to write several procedures.</p>

<h3>10.	History movies</h3>
<p>Create a user defined function with the name udf_actor_history_movies_count(full_name VARCHAR(50)) that receives an actor’s full name and returns the total number of history movies in which the actor has a role.</p>
<p>Required Columns</p>
<p>•	history_movies(udf_customer_products_count)</p>
<h4>Example</h4>

![Screenshot_2](https://user-images.githubusercontent.com/73018624/213907142-da1e6ad8-25a7-409f-ab86-8115077b2e3c.jpg)


<h3>11.	Movie awards</h3>
<p>A movie has won an award. Your task is to find all actors and give them the award.</p>
<p>Create a stored procedure udp_award_movie which accepts the following parameters:</p>
<p>•	movie_title(VARCHAR(50))</p>
<p>Extracts data about the movie with the given title and find all actors that play in it and increase their awards with 1.</p>

<h4>Result</h4>

![Screenshot_3](https://user-images.githubusercontent.com/73018624/213907211-80370e64-bf5a-445f-aa34-bcb2590ab329.jpg)
