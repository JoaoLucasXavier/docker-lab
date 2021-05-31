use appdb;
CREATE TABLE people (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(32) NOT NULL,
  CONSTRAINT people_id PRIMARY KEY (id)
);

desc people;

select * from people;
