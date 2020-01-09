--
-- Add `dbtable` and `primary_key` columns to the table `#__finder_types`
--

ALTER TABLE `#__finder_types` ADD COLUMN `dbtable` varchar(100) NOT NULL DEFAULT '' COMMENT 'The database table for that type' AFTER `title`;

ALTER TABLE `#__finder_types` ADD COLUMN `primary_key` varchar(100) NOT NULL DEFAULT '' COMMENT 'The primary key column of the database table' AFTER `dbtable`;

--
-- Update `dbtable` and `primary_key` columns for the existing types
--

UPDATE `#__finder_types` SET `dbtable` = '#__categories', `primary_key` = 'id' WHERE `title` = 'Category';

UPDATE `#__finder_types` SET `dbtable` = '#__contact_details', `primary_key` = 'id' WHERE `title` = 'Contact';

UPDATE `#__finder_types` SET `dbtable` = '#__content', `primary_key` ='id' WHERE `title` = 'Article';

UPDATE `#__finder_types` SET `dbtable` = '#__newsfeeds', `primary_key`= 'id' WHERE `title` = 'News Feed';

UPDATE `#__finder_types` SET `dbtable` = '#__tags', `primary_key` = 'id' WHERE `title` = 'Tag';
