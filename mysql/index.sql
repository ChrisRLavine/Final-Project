CREATE DATABASE cologne_db 
CREATE TABLE cologne (
    Id int AUTO_INCREMENT primary key,
    Name varchar (30),
    Brand varchar (25)
);
CREATE TABLE BRAND (
    Id int AUTO_INCREMENT primary key,
    Brand varchar(20)
);
CREATE TABLE TYPE (
    Id int AUTO_INCREMENT primary key,
    Type varchar(15)
);
CREATE TABLE SCENT_PROFILE (
    Id int AUTO_INCREMENT primary key,
    Profile varchar(15)
);
INSERT INTO BRAND (Brand) VALUES 
    ('Acqua di Parma'),
    ('Aether'),
    ('Amouage'),
    ('Anthony'),
    ('Arquiste'),
    ('Atelier Bloem'),
    ('Bentley'),
    ('Berdouse'),
    ('Bin Parfumuer'),
    ('Burberry'),
    ('Bvlgari'),
    ('Calvin Klien'),
    ('Carner Barcelona'),
    ('Caron'),
    ('Cartier'),
    ('Carven Parfum'),
    ('Caswell-Massey'),
    ('Clinique'),
    ('Clive Christian'),
    ('Comptoir Sud Pacifique'),
    ('Dolce&Gabbana'),
    ('Gucci'),
    ('Hugo Boss'),
    ('Issey Miyake'),
    ('John Varvados'),
    ('Kenneth Cole'),
    ('Lacoste'),
    ('Michael Kors'),
    ('Prada'),
    ('Salvatore Ferragamo'),
    ('Tom Ford'),
    ('Tommy Bahama'),
    ('Versace');

INSERT INTO TYPE (Type) VALUES
('Eau de toilette'),
('Eau de Cologne'),
('Eau de Parfume')


INSERT INTO SCENT_PROFILE (Profile) VALUES
('Agarwood(Oud)'),
('Aldehydes'),
('Allspice'),
('Almond'),
('Amber'),
('Ambergris'),
('Ambrette(Musk Mallow)'),
('Ambroxan'),
('Angelica'),
('Anise'),
('Apple'),
('Apple Tree'),
('Apricote'),
('Aquatic Watery'),
('Basil'),
('Bay Leaf'),
('Benzoin'),
('Bergamot'),
('Birch'),
('Bitter Orange'),
('Black Amber'),
('Blood Orange'),
('Boronia'),
('Brazillian Rosewood'),
('Cacao Pod'),
('Cactus Juice'),
('Calabrian Bergamot'),
('Camelia'),
('Carambola (Star Fruit)'),
('Caramel'),
('Caraway'),
('Cardamom'),
('Cashmeran'),
('Champagne'),
('Cherry'),
('Cinnamon'),
('Cistus Flower'),
('Citron'),
('Citrus'),
('Citruses'),
('Clary Sage'),
('Clementine'),
('Clove'),
('Coconut'),
('Coffee'),
('Copahu Balm'),
('Coriander'),
('Cumin'),
('Curry Tree'),
('Cypress'),
('Cypriol Oil'),
('Dahlia'),
('Daisy'),
('Dark Chocolate'),
('Dates'),
('Davana'),
('Drift Wood'),
('Ebony Wood'),
('Eucalyptus'),
('Fig'),
('Fig Leaf'),
('Fig Nectar'),
('Fig Tree'),
('Fig Tree Wood'),
('Fir'),
('Frangipani'),
('Freesia'),
('Galbanum'),
('Gin'),
('Ginger'),
('Grapefruit'),
('Grass'),
('Green Almond'),
('Green Apple'),
('Green Notes'),
('Guaiac Wood'),
('Hay'),
('Hazelnut'),
('Heliotrope'),
('Hibiscus'),
('Honey'),
('Honeysuckle'),
('Hyacinth'),
('Immortelle'),
('Incense'),
('Iris'),
('Italian Citrus'),
('Italian Lemon'),
('Ivy') ,
('Jasmine'),
('Juniper'),
('Juniper Berries'),
('Kumquat'),
('Labdanum'),
('Leather'),
('Lemon'),
('Lemon Verbena'),
('Licorice'),
('Magnolia'),
('Mandarin'),
('Mandarin Orange'),
('Marjoram'),
('Marron Grace'),
('Melon'),
('Milk'),
('Mimose'),
('Mulberry'),
('Musk'),
('Myrrh'),
('Myrtle'),
('Narcissus'),
('Neroli'),
('Nutmeg'),
('Oak'),
('Oakmoss'),
('Olibanum'),
('Olive Leaf'),
('Paprika'),
('Passion Fruit'),
('Patchouli'),
('Peach'),
('Pear'),
('Peppermint'),
('Pepperwood'),
('Peru Balsam'),
('Petitgrain'),
('Pine'),
('Pine Neddle'),
('Pink Pepper'),
('Pink Tulip'),
('Plum'),
('Pomelo'),
('Poplar Buds'),
('Powdery Notes'),
('Quince'),
('Raspberries'),
('Red Ginger'),
('Resin'),
('Rhubarb'),
('Rose'),
('Rosemary'),
('Rum'),
('Saffron'),
('Sage'),
('Sambac Jasmine'),
('Sand'),
('Sandalwod'),
('Sea Salt'),
('Sea Water'),
('Seaweed'),
('Seqoia'),
('Sichuan Pepper'),
('Spices'),
('Star Anise'),
('Strawberry'),
('Suede'),
('Sweet Almond'),
('Sweet Pea'),
('Tagetes'),
('Tangerine'),
('Tea Accord'),
('Thyme'),
('Tobacco'),
('Tomato'),
('Tomato Leaf'),
('Tonka Bean'),
('Tuberose'),
('Vanilla'),
('Vetiver'),
('Violet'),
('Violet Leaf'),
('Water Lily'),
('Watermelon'),
('Water Musk'),
('Water Notes'),
('Whiskey'),
('White Cedarwood'),
('White Flowers'),
('Woodsy Notes'),
('Ylang-Ylang'),
('Yuzu');

ALTER TABLE cologne 
ADD `type` INT,
ADD scent_profile INT,
ADD on_sale BOOL,
ADD bestseller BOOL,
ADD new_arrival BOOL;

ALTER TABLE `type`
ADD cologne_id INT; 

ALTER TABLE scent_profile
ADD cologne_id INT; 

ALTER TABLE cologne
MODIFY COLUMN picture TEXT;

ALTER TABLE cologne
DROP COLUMN scent_profile;

INSERT INTO cologne (
    name,
    brand,
    `type`,
    on_sale,
    bestseller,
    new_arrival
) VALUES (
    'Chinotto di Liguria',
    1,
    1,
    false,
    true,
    false
),(
    'Cipresso di Toscana',
    1,
    1,
    false,
    false,
    false
),(
    'Fico di Amalfi',
    1,
    1,
    false,
    false,
    false
),(
    'Mandorlo di Sicilia',
    1,
    1,
    false,
    false,
    true
),(
    'Colonia Club',
    1,
    2,
    false,
    false,
    false
),(
    'Bergamotto di Calabria',
    1,
    1,
    false,
    false,
    false
),(
    'Arancia di Capri',
    1,
    1,
    false,
    false,
    false
),(
    'Colonia',
    1,
    2,
    false,
    false,
    false
),(
    'Colonia Pura',
    1,
    1,
    false,
    true,
    false
),(
    'Muskethanol',
    2,
    3,
    false,
    false,
    false
),(
    'Citrus Ester',
    2,
    3,
    false,
    false,
    false
),(
    'Imitation Man',
    3,
    3,
    false,
    false,
    false
),(
    'Jubilation XXV Men',
    3,
    3,
    false,
    false,
    false
),(
    'Reflection Man',
    3,
    3,
    false,
    false,
    false
),(
    'Journey Man',
    3,
    3,
    false,
    false,
    false
),(
    'Fate Man',
    3,
    3,
    false,
    false,
    false
),(
    '1',
    4,
    3,
    false,
    false,
    false
),(
    "L'Etrog",
    5,
    3,
    false,
    false,
    false
),(
    'The Architects Club',
    5,
    3,
    false,
    false,
    false
),(
    'El',
    5,
    3,
    false,
    false,
    false
),(
    'Flor y Canto',
    5,
    3,
    false,
    false,
    false
),(
    'Nieu Amsterdam',
    6,
    3,
    false,
    false,
    false
),(
    'Extraordinary Tulip',
    6,
    3,
    false,
    false,
    false
),(
    'For Men Black Edition',
    7,
    3,
    false,
    false,
    true
),(
    'Hoja de Cuba',
    8,
    3,
    false,
    false,
    false
),(
    '302',
    9,
    3,
    false,
    false,
    false
),(
    '101',
    9,
    3,
    false,
    false,
    false
),(
    '602',
    9,
    3,
    false,
    false,
    false
),(
    'Mr. Burberry Indigo',
    10,
    1,
    false,
    false,
    false
),(
    'Burberry Brit Rhythem EDT',
    10,
    1,
    false,
    false,
    false
),(
    'Burberry London for Men',
    10,
    1,
    false,
    false,
    false
),(
    'Burberry Brit Splash',
    10,
    1,
    false,
    false,
    false
),(
    'Burberry Touch for Men',
    10,
    1,
    false,
    false,
    false
),(
    'Burberry for Men EDT',
    10,
    1,
    false,
    false,
    false
),(
    'Mr. Burberry',
    10,
    1,
    false,
    false,
    false
),(
    'Man in Black Essence',
    11,
    3,
    false,
    false,
    false
),(
    'Bvlgari Aqva',
    11,
    1,
    false,
    true,
    false
),(
    'Bvlgari Man Extrem',
    11,
    1,
    false,
    false,
    false
),(
    'Euphoria for Men',
    12,
    1,
    false,
    false,
    true
),(
    'Pure Gold Euphoria',
    12,
    3,
    false,
    false,
    false
),(
    'Obsessed for Him',
    12,
    1,
    false,
    false,
    true
),(
    'Eternity for Men EDT',
    12,
    1,
    false,
    false,
    true
),(
    'Obsessed For Men',
    12,
    1,
    false,
    false,
    true
),(
    'CK One',
    12,
    1,
    false,
    false,
    false
),(
    'Tardes',
    13,
    3,
    false,
    false,
    false
),(
    'Costarela',
    13,
    3,
    false,
    false,
    false
),(
    'Rima XI',
    13,
    3,
    false,
    false,
    false
),(
    'Curis',
    13,
    3,
    false,
    false,
    false
),(
    'El Born',
    13,
    3,
    false,
    false,
    false
),(
    'Pour Un De Caron Sport',
    14,
    1,
    false,
    false,
    false
),(
    'Santos de Cartier',
    15,
    1,
    false,
    false,
    false
),(
    'Eau de Cartier Concentree EDT',
    15,
    1,
    false,
    false,
    false
),(
    'Declaration',
    15,
    1,
    false,
    false,
    false
),(
    "Declaration L'Eau",
    15,
    1,
    false,
    false,
    false
),(
    'Carven Pour Homme',
    16,
    1,
    false,
    false,
    false
),(
    "Carven L'Eau Intense",
    16,
    1,
    false,
    false,
    false
),(
    'Heritage Jockey Club',
    17,
    2,
    false,
    false,
    false
),(
    'Heritage Tricorn',
    17,
    2,
    false,
    false,
    false
),(
    'Centuries Verbena',
    17,
    1,
    false,
    false,
    false
),(
    'ROS',
    17,
    3,
    false,
    false,
    false
),(
    'Clinique',
    18,
    1,
    false,
    false,
    false
),(
    '1872 Masculine',
    19,
    3,
    false,
    false,
    false
),(
    'Rock Rose',
    19,
    3,
    false,
    false,
    false
),(
    'X Masculine',
    19,
    3,
    false,
    false,
    false
),(
    'Cologne Mood',
    20,
    1,
    false,
    false,
    false
),(
    'Immortel Cedrat',
    20,
    1,
    false,
    false,
    false
),(
    'K',
    21,
    1,
    false,
    false,
    false
),(
    'Light Blue Pour Homme',
    21,
    1,
    false,
    true,
    false
),(
    'Intenso',
    21,
    3,
    false,
    false,
    false
),(
    'The One Sport',
    21,
    1,
    false,
    false,
    false
),(
    'Dolce&Gabbana Pour Homme',
    21,
    1,
    false,
    false,
    false
),(
    'The One for Men',
    21,
    1,
    false,
    false,
    false
),(
    'Guilty Pour Homme',
    22,
    1,
    false,
    false,
    false
),(
    'Guilty Intense Pour Homme',
    22,
    1,
    false,
    false,
    false
),(
    'Made to Measure',
    22,
    1,
    false,
    false,
    false
),(
    'Man',
    23,
    1,
    false,
    false,
    false
),(
    'Boss Bottled Infinite',
    23,
    3,
    false,
    false,
    false
),(
    'Boss Bottled Tonic',
    23,
    1,
    false,
    false,
    true
),(
    'Boss Bottled Night',
    23,
    1,
    false,
    false,
    true
),(
    'HUGO Just Different',
    23,
    1,
    false,
    false,
    false
),(
    'HUGO Iced',
    23,
    1,
    false,
    false,
    false
),(
    "L'Eau D'Issey Pour Homme",
    24,
    1,
    false,
    false,
    false
),(
    "L'Eau d'Issey Pour Homme Intense",
    24,
    1,
    false,
    false,
    false
),(
    "Nuit D'Issey",
    24,
    1,
    false,
    false,
    false
),(
    "L'Eau Bleue D'Issey Pour Homme",
    24,
    1,
    false,
    false,
    false
),(
    'John Varvados',
    25,
    1,
    false,
    false,
    false
),(
    'Artisan Acqua',
    25,
    1,
    false,
    false,
    false
),(
    'Vintage',
    25,
    1,
    false,
    false,
    false
),(
    'Dark Rebel Rider',
    25,
    1,
    false,
    false,
    false
),(
    'Artisan',
    25,
    1,
    false,
    false,
    false
),(
    'John Varvados Oud',
    25,
    3,
    false,
    false,
    false
),(
    'Intensity',
    26,
    1,
    false,
    false,
    false
),(
    'Mankind Legacy',
    26,
    1,
    false,
    false,
    false
),(
    'Energy',
    26,
    1,
    false,
    false,
    false
),(
    'Serenity',
    26,
    1,
    false,
    false,
    false
),(
    'Mankind Hero',
    26,
    1,
    false,
    false,
    false
),(
    'Black for Him',
    26,
    1,
    false,
    false,
    false
),(
    'Lacoste L!ve',
    27,
    1,
    false,
    false,
    false
),(
    'Lacoste Pour Homme',
    27,
    1,
    false,
    false,
    false
),(
    'Extreme Night',
    28,
    1,
    false,
    false,
    false
),(
    'Luna Rossa',
    29,
    1,
    false,
    false,
    false
),(
    'Luna Rossa Black',
    29,
    3,
    false,
    false,
    false
),(
    'F by Ferragamo Black',
    30,
    1,
    false,
    true,
    false
),(
    'Acqua Essenziale',
    30,
    1,
    false,
    false,
    false
),(
    'Maritime Journey',
    32,
    2,
    false,
    false,
    false
),(
    'Maritime Deep Blue',
    32,
    2,
    false,
    false,
    false
),(
    'Maritime For Him',
    32,
    2,
    false,
    true,
    false
),(
    'St. Kitts for Him',
    32,
    2,
    false,
    false,
    false
),(
    'Tommy Bahama for Him',
    32,
    2,
    false,
    false,
    false
),(
    'Versace Man Eau Fraiche',
    33,
    1,
    false,
    false,
    false
),(
    'Pour Homme EDT',
    33,
    1,
    false,
    false,
    false
),(
    'Dylan Blue',
    33,
    1,
    false,
    false,
    false
),(
    'Eros',
    33,
    1,
    false,
    true,
    false
)


SELECT c.Name, b.Brand 
FROM cologne c 
JOIN brand b 
on c.Brand = b.Id 

SELECT c.Name, t.type 
FROM cologne c 
JOIN type t 
on c.Brand = t.Id 

SELECT c.Name, b.Brand, t.Type 
FROM cologne c 
JOIN brand b 
on c.Brand = b.Id 
JOIN  type t 
on c.type = t.Id;

DELETE
FROM cologne
WHERE id = 10; 

ALTER TABLE cologne
ADD picture TEXT;

UPDATE cologne
SET picture = ("\/media\/cologne\/img-894.jpg")
WHERE id = 1;

UPDATE cologne
SET picture = ('\/media\/cologne\/img-1570-2.webp')
WHERE id = 2;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1417591.jpg?h=200&placeholder=1')
WHERE id = 3;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1417575-1.png?h=200&placeholder=1')
WHERE id = 4;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-736.jpg?h=200&placeholder=1')
WHERE id = 5;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1417633.jpg?h=200&placeholder=1')
WHERE id = 6;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1417633.jpg?h=200&placeholder=1')
WHERE id = 6;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1417567.jpg?h=200&placeholder=1')
WHERE id = 7;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-735.jpg?h=200&placeholder=1')
WHERE id = 8;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-734.jpg?h=200&placeholder=1')
WHERE id = 9;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-921.jpg?h=200&placeholder=1')
WHERE id = 11;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-922.jpg?h=200&placeholder=1')
WHERE id = 12;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1002-2.png?h=200&placeholder=1')
WHERE id = 13;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-587.jpg?h=200&placeholder=1')
WHERE id = 14;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-457.jpg?h=200&placeholder=1')
WHERE id = 15;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-589.jpg?h=200&placeholder=1')
WHERE id = 16;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-588.jpg?h=200&placeholder=1')
WHERE id = 17;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-594.jpg?h=200&placeholder=1')
WHERE id = 19;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-596.jpg?h=200&placeholder=1')
WHERE id = 20;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-992.jpg?h=200&placeholder=1')
WHERE id = 21;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-595.jpg?h=200&placeholder=1')
WHERE id = 22;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-816.jpg?h=200&placeholder=1')
WHERE id = 23;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-806.jpg?h=200&placeholder=1')
WHERE id = 24;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1613-2.png?h=200&placeholder=1')
WHERE id = 25;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-916.jpg?h=200&placeholder=1')
WHERE id = 26;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-987.jpg?h=200&placeholder=1')
WHERE id = 27;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-986.jpg?h=200&placeholder=1')
WHERE id = 28;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-988.jpg?h=200&placeholder=1')
WHERE id = 29;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1447-2.png?h=200&placeholder=1')
WHERE id = 30;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-192.jpg?h=200&placeholder=1')
WHERE id = 31;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-193.jpg?h=200&placeholder=1')
WHERE id = 32;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-579.jpg?h=200&placeholder=1')
WHERE id = 33;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-276.jpg?h=200&placeholder=1')
WHERE id = 34;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-275.jpg?h=200&placeholder=1')
WHERE id = 35;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-515.jpg?h=200&placeholder=1')
WHERE id = 36;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1450-2.png?h=200&placeholder=1')
WHERE id = 37;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-194.jpg?h=200&placeholder=1')
WHERE id = 38;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-198.jpg?h=200&placeholder=1')
WHERE id = 39;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-197.jpg?h=200&placeholder=1')
WHERE id = 40;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1451-2.png?h=200&placeholder=1')
WHERE id = 41;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1594-2.jpg?h=200&placeholder=1')
WHERE id = 42;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-201-1.jpg?h=200&placeholder=1')
WHERE id = 43;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1595-2.jpg?h=200&placeholder=1')
WHERE id = 44;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-78717-1.jpg?h=200&placeholder=1')
WHERE id = 45;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-660.jpg?h=200&placeholder=1')
WHERE id = 46;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-658.jpg?h=200&placeholder=1')
WHERE id = 47;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-661.jpg?h=200&placeholder=1')
WHERE id = 48;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-670.jpg?h=200&placeholder=1')
WHERE id = 49;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-662.jpg?h=200&placeholder=1')
WHERE id = 50;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-609.jpg?h=200&placeholder=1')
WHERE id = 51;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-357.jpg?h=200&placeholder=1')
WHERE id = 52;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-207.jpg?h=200&placeholder=1')
WHERE id = 53;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-206.jpg?h=200&placeholder=1')
WHERE id = 54;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-78717-1.jpg?h=200&placeholder=1')
WHERE id = 55;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-535-1.jpg?h=200&placeholder=1')
WHERE id = 56;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-544.jpg?h=200&placeholder=1')
WHERE id = 57;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-892.jpg?h=200&placeholder=1')
WHERE id = 59;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-893.jpg?h=200&placeholder=1')
WHERE id = 61;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-359.jpg?h=200&placeholder=1')
WHERE id = 62;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1531-2.png?h=200&placeholder=1')
WHERE id = 63;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1533-2.png?h=200&placeholder=1')
WHERE id = 64;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1532-2.png?h=200&placeholder=1')
WHERE id = 65;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-728.jpg?h=200&placeholder=1.jpg?h=200&placeholder=1')
WHERE id = 66;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-729.jpg?h=200&placeholder=1')
WHERE id = 67;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1444-2.png?h=200&placeholder=1')
WHERE id = 68;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-216.jpg?h=200&placeholder=1')
WHERE id = 69;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-214.jpg?h=200&placeholder=1')
WHERE id = 70;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-218.jpg?h=200&placeholder=1')
WHERE id = 71;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-215.jpg?h=200&placeholder=1')
WHERE id = 72;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-217.jpg?h=200&placeholder=1')
WHERE id = 73 ;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-231-1.jpg?h=200&placeholder=1')
WHERE id = 74 ;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-232-1.jpg?h=200&placeholder=1')
WHERE id = 75 ;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-281.jpg?h=200&placeholder=1')
WHERE id = 77;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1597-2.png?h=200&placeholder=1')
WHERE id = 78;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1598-2.png?h=200&placeholder=1')
WHERE id = 79;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-236-1.png?h=200&placeholder=1')
WHERE id = 80;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-744.jpg?h=200&placeholder=1')
WHERE id = 81;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-743.jpg?h=200&placeholder=1')
WHERE id = 82;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-238.jpg?h=200&placeholder=1')
WHERE id = 83;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-902.jpg?h=200&placeholder=1')
WHERE id = 84;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-282.jpg?h=200&placeholder=1')
WHERE id = 85;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-239.jpg?h=200&placeholder=1')
WHERE id = 86;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/\/normal\/img-283.jpg?h=200&placeholder=1')
WHERE id = 87;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/\/normal\/img-284.jpg?h=200&placeholder=1')
WHERE id = 89;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-636.jpg?h=200&placeholder=1')
WHERE id = 90;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/\/normal\/img-285.jpg?h=200&placeholder=1')
WHERE id = 91;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-578.jpg?h=200&placeholder=1')
WHERE id = 92;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/product/desc/normal/img-970.jpg?h=200&placeholder=1')
WHERE id = 93;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/product/desc/normal/img-1209-2.png?h=200&placeholder=1')
WHERE id = 94;

UPDATE cologne
SET picture = ('')
WHERE id = 95;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/product/desc/normal/img-969.jpg?h=200&placeholder=1')
WHERE id = 96;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/perfume/normal/img-485.jpg?h=200&placeholder=1')
WHERE id = 98;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/perfume/normal/img-485.jpg?h=200&placeholder=1')
WHERE id = 98;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-246-1.jpg?h=200&placeholder=1')
WHERE id = 99;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-290-1.png?h=200&placeholder=1')
WHERE id = 100;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1452-2.png?h=200&placeholder=1')
WHERE id = 101;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-252.jpg?h=200&placeholder=1')
WHERE id = 102;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-1446-2.png?h=200&placeholder=1')
WHERE id = 103;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-298.jpg?h=200&placeholder=1')
WHERE id = 104;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-256.jpg?h=200&placeholder=1')
WHERE id = 105;

UPDATE cologne
SET picture = ('https://cdn.scentbird.com/product/desc/normal/img-1044.png?h=200&placeholder=1')
WHERE id = 106;

UPDATE cologne
SET picture = ('')
WHERE id = 107;

UPDATE cologne
SET picture = ('')
WHERE id = 108;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-466.jpg?h=200&placeholder=1')
WHERE id = 109;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-493.jpg?h=200&placeholder=1')
WHERE id = 110;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal\/img-300.jpg?h=200&placeholder=1')
WHERE id = 111;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal/img-260.jpg?h=200&placeholder=1')
WHERE id = 112;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/perfume\/normal\/img-593.jpg?h=200&placeholder=1')
WHERE id = 113;

UPDATE cologne
SET picture = ('https:\/\/cdn.scentbird.com\/product\/desc\/normal/img-268.jpg?h=200&placeholder=1')
WHERE id = 114;

CREATE TABLE pages (
    Id int AUTO_INCREMENT primary key,
    slug TEXT,
    tile TEXT,
    body TEXT
);

SELECT c.Id, c.Name, b.Brand, t.Type 
FROM colognes c 
JOIN brand b on c.brand = b.Id 
JOIN type t on c.type = t.id
WHERE id = ?;