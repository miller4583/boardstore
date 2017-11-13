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

insert into categories (name, img_name) VALUES ('Boards', 'whiskey.png');
insert into categories (name, img_name) VALUES ('Bindings', 'flow.jpg');
insert into categories (name, img_name) VALUES ('Boots', 'burtonboot.jpg');
insert into categories (name, img_name) VALUES ('Jackets', 'retro.jpg');
insert into categories (name, img_name) VALUES ('Pants', 'thunderbolt.jpg');


insert into products (product, price, description, category_id, image_name, rating, sold) values ('Arbor Collective Whiskey', '899', 'A great all mountain board for a great day in the park or cruising in the back country', 1, 'whiskey.png',5,132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Burton Jussi', '799', 'A fantasic board for those breaking out of their beginner board.', 1, 'jussi.jpg',4,103);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Rossignal Nomad', '459', 'A perfect board for beginners.', 1, 'nomad.jpg',2, 83);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Flow Fuse Fusion', '280', 'Beat everyone to the poweder with these extremly smooth ergonomical bindings.', 2, 'flow.jpg',4,132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('K2 Cassette', '180', 'Good intermediate binding for those growing in snowboarding', 2, 'k2.jpg',3, 132);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Union Rosa', '99', 'Great basic bindings for those starting out.', 2, 'rosa.jpg',1, 88);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Burton Bright', '145', 'For those who want to brighten up the ride and stand out', 3, 'burtonboot.jpg',3, 188);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Flow Live', '185', 'A boot made to show your always feeling alive while riding', 3, 'flowboot.jpg',4, 142);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Rossignal Outlander', '87', 'Made for the begginer who wants to learn to ride', 3, 'rossiboot.jpg',5,99);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('LiveWire', '225', 'Look as though you are electricity speeding down the mountain!', 4, 'jacket1.jpg',2, 121);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Workman', '199', 'For the rider ready to go from work straight to hill!', 4, 'plaid.JPG',2,151);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Brightside', '279', 'Feel the power of color as you brighten the run for everyone!', 4, 'retro.jpg',5, 43);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Overalls!', '142', 'Classic look and feel to these great pants!', 5, 'overall.jpg',3, 43);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Cargos!', '126', 'Never run out of Pockets!', 5, 'pantsburton.jpg',2, 22);
insert into products (product, price, description, category_id, image_name, rating, sold) values ('Captian Thunderbolt!', '199', 'Have the craziest pants on the Mountain!', 5, 'thunderbolt.jpg',5, 143);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Ali Express',145,'Either been seen with bright colors or behiden with camo',5,'camo.jpg',4,132);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Burton Escapade',123,'These bright bindings not only have great response but also makes you hunger for Mint Icecream',2,'escapade.jpg',5,174);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Flow Jet',189,'Look great will speeding down the mountain like a jet!',4,'jet.jpg',3,98);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('K2 Pattern',155,'Do not be afraid to show your inner explosion of Color!',4,'pink.jpg',5,199);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Rossignal Fly',123,'With added snow gaurd these pants make every run feel like the best!',5,'pinkpants.jpg',3,57);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Roxy Floral',123,'Great board for those who are ready to feel the warmth of spring riding!',1,'roxy.jpg',5,174);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('K2 Space',199,'When you hit that giant kicker look as though you are floating in space!',4,'space.jpg',5,145);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Captia Space Metal Fantasy',876,'Ride the Spacecat vibes on every run!',1,'spacecat.jpg',5,174);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Burton Space Cat',204,'Be the eye-turner on every hill as you hear"Are Those SpaceCats!"',4,'spacejacket.jpg',5,174);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('ThirtyTwo TieDye',143,'Reclaim riding like the 70''s with these psychedelic boots',3,'tiedie.jpg',5,174);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('ThirtyTwo Tiger',156,'Roar like a Tiger after you just crushed that park run!',3,'tiger.jpg',4,123);
insert into products (product, price, description, category_id, image_name, rating, sold) Values('Union Juliet',208,'Don''t wait for that Romeo dude, go get him! With these high preformace bindings!',2,'juliet.jpg',5,134);

select * from products;