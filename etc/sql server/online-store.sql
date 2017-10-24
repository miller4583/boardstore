DROP TABLE products;
DROP TABLE categories;

CREATE TABLE categories
(
	id		int				identity(1,1),
	name	varchar(100)	not null,
	img_name varchar(100)	not null,

	constraint pk_categories primary key (id)
);

CREATE TABLE products
(
	id			int				identity(1,1),
	product		varchar(255)	not null,
	price		decimal			not null,
	description	varchar(max)	not null,
	category_id	int,
	image_name		varchar(255)	not null,
	rating		int				not null,
	sold		int				not null,

	constraint pk_products primary key (id),
	constraint fk_products_categories foreign key (category_id) references categories(id)
);

insert into categories (name, img_name) VALUES ('Boards', 'whiskey');
insert into categories (name, img_name) VALUES ('Bindings', 'fow');
insert into categories (name, img_name) VALUES ('Boots', 'burtonboot');
insert into categories (name, img_name) VALUES ('Jackets', 'retro');
insert into categories (name, img_name) VALUES ('Pants', 'thunderbolt');


insert into products (product, price, description, category_id, image_name, rating, sold) values ('Arbor Collective Whiskey', '899', 'A great all mountain board for a great day in the park or cruising in the back country', 1, 'whiskey',5,132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Burton Jussi', '799', 'A fantasic board for those breaking out of their beginner board.', 1, 'jussi',4,103);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Rossignal Nomad', '459', 'A perfect board for beginners.', 1, 'nomad',2, 83);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Flow Fuse Fusion', '280', 'Beat everyone to the poweder with these extremly smooth ergonomical bindings.', 2, 'flow',4,132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('K2 Cassette', '180', 'Good intermediate binding for those growing in snowboarding', 2, 'k2',3, 132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Union Rosa', '99', 'Great basic bindings for those starting out.', 2, 'rosa',1, 88);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Burton Bright', '145', 'For those who want to brighten up the ride and stand out', 3, 'burtonboot',3, 188);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Flow Live', '185', 'A boot made to show your always feeling alive while riding', 3, 'flowboot',4, 142);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Rossignal Outlander', '87', 'Made for the begginer who wants to learn to ride', 3, 'rossiboot',5,99);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('LiveWire', '225', 'Look as though you are electricity speeding down the mountain!', 4, 'jacket1',2, 121);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Workman', '199', 'For the rider ready to go from work straight to hill!', 4, 'plaid',2,151);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Brightside', '279', 'Feel the power of color as you brighten the run for everyone!', 4, 'retro',5, 43);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Overalls!', '142', 'Classic look and feel to these great pants!', 5, 'overall',3, 43);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Cargos!', '126', 'Never run out of Pockets!', 5, 'pantsburton',2, 22);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Captian Thunderbolt!', '199', 'Have the craziest pants on the Mountain!', 5, 'thunderbolt',5, 143);

select * from categories;