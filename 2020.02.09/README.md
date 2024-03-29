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

<h3>6.	Young offense players without contract</h3>
<p>One of the coaches wants to know more about all the young players (under age of 23) who can strengthen his team in the offensive (played on position ‘A’). As he is not paying a transfer amount, he is looking only for those who have not signed a contract so far (haven’t hire_date) and have strength of more than 50. Order the results ascending by salary, then by age.</p>
<p>Required Columns</p>
<p>•	id (player)</p>
<p>•	full_name </p>
<p>•	age</p>
<p>•	position</p>
<p>•	hire_date</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/219751902-17836985-d1ee-41e3-b2d8-2a8f34cc943c.jpg)

<h3>7.	Detail info for all teams</h3>
<p>Extract from the database all of the teams and the count of the players that they have.</p>
<p>Order the results descending by count of players, then by fan_base descending. </p>
<p>Required Columns</p>
<p>•	team_name</p>
<p>•	established</p>
<p>•	fan_base</p>
<p>•	count_of_players</p>
<h4>Example</h4>

![Screenshot_2](https://user-images.githubusercontent.com/73018624/220152960-67b925f1-738a-45fe-b6b9-b579790c92ed.jpg)

<h3>8.	The fastest player by towns</h3>
<p>Extract from the database, the fastest player (having max speed), in terms of towns where their team played.</p>
<p>Order players by speed descending, then by town name.</p>
<p>Skip players that played in team ‘Devify’</p>
<p>Required Columns</p>
<p>•	max_speed</p>
<p>•	town_name</p>
<h4>Example</h4>

![Screenshot_3](https://user-images.githubusercontent.com/73018624/220153361-91bd171f-76c3-4a0e-ae0e-c2a6d7fc96ec.jpg)

<h3>9.	Total salaries and players by country</h3>
<p> And like everything else in this world, everything is ultimately about finances. Now you need to extract detailed information on the amount of all salaries given to football players by the criteria of the country in which they played.</p>
<p>If there are no players in a country, display NULL.  Order the results by total count of players in descending order, then by country name alphabetically.</p>
<p>Required Columns</p>
<p>•	name (country)</p>
<p>•	total_sum_of_salaries</p>
<p>•	total_count_of_players</p>
<h4>Example</h4>

![Screenshot_1](https://user-images.githubusercontent.com/73018624/221346419-fd349c1b-e50e-4806-96c1-e33947d84f82.jpg)

<h2>Section 4: Programmability – 30 pts</h2>
<p>The time has come for you to prove that you can be a little more dynamic on the database. So, you will have to write several procedures.</p>

<h3>10.	Find all players that play on stadium</h3>
<p>Create a user defined function with the name udf_stadium_players_count (stadium_name VARCHAR(30)) that receives a stadium’s name and returns the number of players that play home matches there.</p>
<h4>Example</h4>

![Screenshot_2](https://user-images.githubusercontent.com/73018624/221346516-28014d2a-16e2-4cad-a754-e9f8d4d54ccf.jpg)

![Screenshot_3](https://user-images.githubusercontent.com/73018624/221346525-51b39184-6fc1-4abe-8214-eed46a905eae.jpg)

<h3>11.	Find good playmaker by teams</h3>
<p>Create a stored procedure udp_find_playmaker which accepts the following parameters:</p>
<p>•	min_dribble_points </p>
<p>•	team_name (with max length 45)</p>
<p> And extracts data about the players with the given skill stats (more than min_dribble_points), played for given team (team_name) and have more than average speed for all players. Order players by speed descending. Select only the best one.</p>
<p>Show all needed info for this player: full_name, age, salary, dribbling, speed, team name.</p>
<p>CALL udp_find_playmaker (20, ‘Skyble’);</p>
<h4>Result</h4>

![Screenshot_4](https://user-images.githubusercontent.com/73018624/221346594-8b5de11a-a3b5-46bd-b743-39f1471ad2f3.jpg)
