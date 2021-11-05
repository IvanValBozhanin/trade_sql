CREATE DATABASE trade;
CREATE TABLE type_of_goods(
    id int AUTO_INCREMENT,
    name varchar(32),
    PRIMARY KEY(id)
);

CREATE TABLE city(
    id int AUTO_INCREMENT,
   	name varchar(16),
    PRIMARY KEY(id)
);

CREATE TABLE goods(
    id int AUTO_INCREMENT,
    name varchar(32),
    price decimal(9,2),
    tid int NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(tid) REFERENCES type_of_goods(id)
);

CREATE TABLE client(
    id int AUTO_INCREMENT,
    name varchar(16),
    surname varchar(16),
    sid varchar(10),
    cid int NOT NULL,
    address varchar(32),
    phone varchar(10),
    mail varchar(32),
    PRIMARY KEY(id),
    FOREIGN KEY(cid) REFERENCES city(id)
);

CREATE TABLE sale(
    id int AUTO_INCREMENT,
    date_of_sale date,
    cid int NOT NULL,
    type int NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cid) REFERENCES client(id)
);

CREATE TABLE sold_goods(
    sid int NOT NULL,
    gid int NOT NULL,
    quantity int NOT NULL,
    FOREIGN KEY(sid) REFERENCES sale(id),
    FOREIGN KEY(gid) REFERENCES goods(id)
);