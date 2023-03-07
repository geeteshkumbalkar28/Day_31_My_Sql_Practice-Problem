mysql> create database AddressBookService;
Query OK, 1 row affected (0.00 sec)


mysql> use AddressBookService;
Database changed


mysql> create table AddressBookService(firstName varchar(20),lastName varchar(20),address varchar(20),city varchar(20),state varchar(20),zip int(6),phoneNumber varchar(13),email varchar(30));
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> insert into AddressBookSystem(firstName,lastName,address,city,state,zip,phoneNumber,email) values ('Geetesh','Kumbalkar','Sudhampuri','Wardha','Maharashtra','442001','+917447376717','Geeteshkumbalkar@gmail.com'),('lokesh','Kumbalkar','ramnagaer','nagpur','Maharashtra','455401','+917447376485','lokeshkumbalkar@gmail.com'),('akash','rayalkar','rambag','solapur','mp','542001','+918551020501','akashRaylkar@gmail.com');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0


mysql> select * from AddressBookSystem;
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| firstName | lastName  | address    | city    | state       | zip    | phoneNumber   | email                      |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha  | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |
| lokesh    | Kumbalkar | ramnagaer  | nagpur  | Maharashtra | 455401 | +917447376485 | lokeshkumbalkar@gmail.com  |
| akash     | rayalkar  | rambag     | solapur | mp          | 542001 | +918551020501 | akashRaylkar@gmail.com     |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
3 rows in set (0.00 sec)

mysql> update AddressBookSystem set phoneNumber='+927556985614' where firstName = 'lokesh' ;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from AddressBookSystem;
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| firstName | lastName  | address    | city    | state       | zip    | phoneNumber   | email
             |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha  | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |
| lokesh    | Kumbalkar | ramnagaer  | nagpur  | Maharashtra | 455401 | +927556985614 | lokeshkumbalkar@gmail.com  |
| akash     | rayalkar  | rambag     | solapur | mp          | 542001 | +918551020501 | akashRaylkar@gmail.com     |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
3 rows in set (0.00 sec)

mysql> delete from AddressBookSystem where firstname = 'lokesh';
Query OK, 1 row affected (0.00 sec)

mysql> select * from AddressBookSystem;
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| firstName | lastName  | address    | city    | state       | zip    | phoneNumber   | email
             |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha  | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |
| akash     | rayalkar  | rambag     | solapur | mp          | 542001 | +918551020501 | akashRaylkar@gmail.com     |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+
2 rows in set (0.00 sec)

mysql>mysql> select * from AddressBookSystem where city = 'Wardha'
    -> select * from AddressBookSystem where city = 'Wardha';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from AddressBookSystem where city = 'Wardha'' at line 2
mysql> select * from AddressBookSystem where city = 'Wardha';
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
| firstName | lastName  | address    | city   | state       | zip    | phoneNumber   | email
            |
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
1 row in set (0.00 sec)

mysql> select count(*) from AddressBookSystem where state = 'Maharashtra';
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> select *from AddressBookSystem where state = 'Maharashtra' order by firstname;
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
| firstName | lastName  | address    | city   | state       | zip    | phoneNumber   | email
            |
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |
+-----------+-----------+------------+--------+-------------+--------+---------------+----------------------------+
1 row in set (0.00 sec)




mysql> alter table AddressBookSystem add column Id int(20), add column mobileNmberTwo varchar(20);
Query OK, 0 rows affected, 1 warning (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from AddressBookSystem;
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
| firstName | lastName  | address    | city    | state       | zip    | phoneNumber   | email
             | Id   | mobileNmberTwo |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha  | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com | NULL | NULL           |
| akash     | rayalkar  | rambag     | solapur | mp          | 542001 | +918551020501 | akashRaylkar@gmail.com     | NULL | NULL           |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
2 rows in set (0.00 sec)

mysql>mysql> select * from AddressBookSystem;
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
| firstName | lastName  | address    | city    | state       | zip    | phoneNumber   | email                      | Id   | mobileNmberTwo |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
| Geetesh   | Kumbalkar | Sudhampuri | Wardha  | Maharashtra | 442001 | +917447376717 | Geeteshkumbalkar@gmail.com |    1 | NULL           |
| akash     | rayalkar  | rambag     | solapur | mp          | 542001 | +918551020501 | akashRaylkar@gmail.com     | NULL | NULL           |
+-----------+-----------+------------+---------+-------------+--------+---------------+----------------------------+------+----------------+
2 rows in set (0.00 sec)

mysql>