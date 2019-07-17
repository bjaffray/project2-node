-- Initalization of the tables and sequances


-- Table: public."Item"

DROP TABLE public."Item";
DROP SEQUENCE item_id_seq;

CREATE SEQUENCE item_id_seq;

CREATE TABLE public."Item"
("ItemID"       INTEGER DEFAULT NEXTVAL('item_id_seq')
,"ItemName"     VARCHAR(50)     NOT NULL
,"ItemPrice"    INTEGER         NOT NULL
,"Description"  TEXT            NOT NULL
,"PicPath"      VARCHAR(100)    NOT NULL
,CONSTRAINT "user_pk_01" PRIMARY KEY ("ItemID"));


-- Script for adding to the item table
-- Bottle
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Bottle'
,650
,'An old bottle that survived the ages, the contents placed inside become enchanted.'
,'./Pictures/Bottle_(Full)_icon.png');

-- Ring of Health
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Ring of Health'
,850
,'A shiny ring found beneath a fat halfling''s corpse.'
,'./Pictures/Ring_of_Health_icon.png');

-- Void Stone
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Void Stone'
,850
,'Jewelry that was once used to channel nether realm magic, this ring pulses with energy.'
,'./Pictures/Void_Stone_icon.png');

-- Energy Booster
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Energy Booster'
,900
,'This lapis gemstone is commonly added to the collection of wizards seeking to improve their presence in combat.'
,'./Pictures/Energy_Booster_icon.png');

-- Vitality Booster
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Vitality Booster'
,1100
,'A ruby gemstone that has been passed down through generations of warrior kin.'
,'./Pictures/Vitality_Booster_icon.png');

-- Point Booster
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Point Booster'
,1200
,'A perfectly formed amethyst that nourishes body and mind when held.'
,'./Pictures/Point_Booster_icon.png');

-- Platemail
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Platemail'
,1400
,'Thick metal plates that protect the entire upper body. Avoid dropping on feet.'
,'./Pictures/Platemail_icon.png');

-- Talisman of Evasion
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Talisman of Evasion'
,1400
,'A necklace that allows you to anticipate enemy attacks.'
,'./Pictures/Talisman_of_Evasion_icon.png');

-- Hyperstone
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Hyperstone'
,2000
,'A mystical, carved stone that boosts the fervor of the holder.'
,'./Pictures/Hyperstone_icon.png');

-- Ultimate Orb
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Ultimate Orb'
,2150
,'A mystical orb containing the essence of life.'
,'./Pictures/Ultimate_Orb_icon.png');

-- Demon Edge
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Demon Edge'
,2200
,'One of the oldest weapons forged by the Demon-Smith Abzidian, it killed its maker when he tested its edge.'
,'./Pictures/Demon_Edge_icon.png');

-- Mystic Staff
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Mystic Staff'
,2700
,'Enigmatic staff made of only the most expensive crystals.'
,'./Pictures/Mystic_Staff_icon.png');

-- Reaver
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Reaver'
,3000
,'A massive axe capable of tearing whole mountains down.'
,'./Pictures/Reaver_icon.png');

-- Eaglesong
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Eaglesong'
,3200
,'Capturing the majestic call of an eagle, this mystical horn brings limitless dexterity to those who hear it.'
,'./Pictures/Eaglesong_icon.png');

-- Sacred Relic
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Sacred Relic'
,3800
,'An ancient weapon that often turns the tides of war.'
,'./Pictures/Sacred_Relic_icon.png');

-- Perseverance
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Perseverance'
,1700
,'A gem that grants heart to the bearer.'
,'./Pictures/Perseverance_icon.png');

-- Soul Booster
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Soul Booster'
,3200
,'Regain lost courage.'
,'./Pictures/Soul_Booster_icon.png');

-- Lotus Orb
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Lotus Orb'
,4000
,'The jewel at its center still reflects a pale image of its creator.'
,'./Pictures/Lotus_Orb_icon.png');

-- Moon Shard
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Moon Shard'
,4000
,'Said to be a tear from the lunar goddess Selemene.'
,'./Pictures/Moon_Shard_icon.png');

-- Bloodstone
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Bloodstone'
,4900
,'The Bloodstone''s bright ruby color is unmistakable on the battlefield, as the owner seems to have infinite vitality and spirit.'
,'./Pictures/Bloodstone_icon.png');

-- Eye of Skadi
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Eye of Skadi'
,5500
,'Extremely rare artifact, guarded by the azure dragons.'
,'./Pictures/Eye_of_Skadi_icon.png');

-- Scyth of Vyse
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Scyth of Vyse'
,5700
,'The most guarded relic among the cult of Vyse, it is the most coveted weapon among magi.'
,'./Pictures/Scythe_of_Vyse_icon.png');

-- Octarine Core
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Octarine Core'
,5900
,'At the core of spellcraft are spectrums only the very gifted can sense.'
,'./Pictures/Octarine_Core_icon.png');

-- Divine Rapier
INSERT INTO public."Item"
("ItemName"
,"ItemPrice"
,"Description"
,"PicPath")
VALUES 
('Divine Rapier'
,6000
,'So powerful, it cannot have a single owner.'
,'./Pictures/Divine_Rapier_icon.png');