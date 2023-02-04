<h1>MySQL Exam Football Scout Database</h1>
<p>In a parallel reality, you have been selected to help the most famous football coaches to select the best players for their teams. Thanks to your knowledge of databases, you have been selected to create the structure of a brand new database, tailored to the requirements of your employers, and to fill it in with a huge amount of data collected for you by the most experienced football scouts. Once the base is ready, you will be able to respond without any problems to any information request from the coaches on the basis of certain criteria. As with other databases, it is most important first to become familiar with the structure you need to build, and then fill it with given data.</p>
<h2>Section 0: Database Overview</h2>
<p>You have been given an Entity / Relationship Diagram of the Football Scout Database:</p>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/215264695-39decd0b-3214-4d47-b598-90c29240fd5b.jpg)

<p>The Football Scout Database (FSD) needs to hold information about players, skill, coaches, teams, stadiums, towns, countries.</p>
<p>Your task is to create a database called fsd (Football Scout Database). Then you will have to create several tables.</p>
<p>•	players – contains information about the players.</p>
<p>o	Each player has a skills data, team and coach.</p>
<p>•	coaches – contains information about the coaches.</p>
<p>o	One coach can train many players</p>
<p>•	players_coaches – a many to many mapping table between the players and the coaches.</p>
<p>o	Have composite primary key from player_id and coach_id </p>
<p>•	skill data – contains information about the current player skills.</p>
<p>•	teams – contains information about the teams.</p>
<p>o	Each team has a stadium.</p>
<p>•	stadiums – contains information about the stadiums.</p>
<p>o	Each stadium has a city.</p>
<p>•	towns - contains information about the towns.</p>
<p>o	Each town has a country</p>
<p>•	countries – contains information about current country.</p>

<h2>Section 1: Data Definition Language (DDL) – 40 pts</h2>
<p>Make sure you implement the whole database correctly on your local machine, so that you could work with it.</p>
<p>The instructions you’ll be given will be the minimal required for you to implement the database.</p>

<h3>1.	Table Design</h3>
<p>You have been tasked to create the tables in the database by the following models:</p>

<p>players</p>

![Screenshot_2](https://user-images.githubusercontent.com/73018624/215322342-330174ba-8a5f-4a63-b9df-c00a9ff85c36.jpg)

<p>players_coaches</p>

![Screenshot_3](https://user-images.githubusercontent.com/73018624/215322400-df80e1ec-d580-43fb-bc78-ba9b1dc6be7c.jpg)

<p>coaches</p>

![Screenshot_4](https://user-images.githubusercontent.com/73018624/215322436-0b939ffc-aca6-469e-adf6-886b62f792e5.jpg)

<p>skills_data	</p>

![Screenshot_5](https://user-images.githubusercontent.com/73018624/215322475-48b1e518-9e67-40ee-a8f9-e420190bc24d.jpg)

<p>teams</p>

![Screenshot_6](https://user-images.githubusercontent.com/73018624/215322505-85a9ba8a-38e1-4d41-b0e3-5d9fe884cefc.jpg)

<p>stadiums</p>

![Screenshot_7](https://user-images.githubusercontent.com/73018624/215322531-7c4ec152-f173-48e9-9327-44244c99c68b.jpg)

<p>towns</p>

![Screenshot_8](https://user-images.githubusercontent.com/73018624/215322559-e3e78477-7e4b-4c95-8263-8c3f1938b981.jpg)

<p>countries</p>

![Screenshot_9](https://user-images.githubusercontent.com/73018624/215322596-7c0a3f83-bb55-4a50-8247-e06bcf611c30.jpg)

<p>Submit your solutions in Judge on the first task. Submit all SQL table creation statements.</p>
<p>You will also be given a data.sql file. It will contain a dataset with random data which you will need to store in your local database. This data will be given to you so you don’t have to imagine it and lose precious time in the process. The data is in the form of INSERT statement queries.</p>

<h2>Section 2: Data Manipulation Language (DML) – 30 pts</h2>
<p>Here we need to do several manipulations in the database, like changing data, adding data etc.</p>

<h3>2.	Insert</h3>
<p>You will have to insert records of data into the coaches table, based on the players table. </p>
<p>For players with age over 45 (inclusive), insert data in the coaches table with the following values:</p>
<p>•	first_name – set it to first name of the player</p>
<p>•	last_name – set it to last name of the player.</p>
<p>•	salary – set it to double as player’s salary. </p>
<p>•	coach_level – set it to be equals to count of the characters in player’s first_name.</p>

<h3>3.	Update</h3>
<p>Update all coaches, who train one or more players and their first_name starts with ‘A’. Increase their level with 1.</p>

<h3>4.	Delete</h3>
<p>As you remember at the beginning of our work, we promoted several football players to coaches. Now you need to remove all of them from the table of players in order for our database to be updated accordingly.	</p>
<p>Delete all players from table players, which are already added in table coaches. </p>

<h2>Section 3: Querying – 50 pts</h2>
<p>And now we need to do some data extraction. Note that the example results from this section use a fresh database. It is highly recommended that you clear the database that has been manipulated by the previous problems from the DML section and insert again the dataset you’ve been given, to ensure maximum consistency with the examples given in this section.</p>


<h3>5.	Players </h3>
<p>Extract from the Football Scout Database (fsd) database, info about all of the players. </p>
<p>Order the results by players - salary descending.</p>
<p>Required Columns</p>
<p>•	first_name</p>
<p>•	age</p>
<p>•	salary</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/216768357-bfb7a44a-ca97-4b61-a66c-aa47e6034f42.jpg)

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>

<h3></h3>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
