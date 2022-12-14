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

<p></p>
<p></p>
<p></p>
