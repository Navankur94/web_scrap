CREATE TABLE `scrap_industry_data`.`tbl_scraping_data` ( `scrap_id` INT(11) NOT NULL AUTO_INCREMENT , `scrap_data` TEXT NULL DEFAULT NULL , PRIMARY KEY (`scrap_id`)) ENGINE = InnoDB;

ALTER TABLE `tbl_scrap_company` CHANGE `scrap_id` `scrap_id` INT(11) NULL DEFAULT NULL;

ALTER TABLE `tbl_scrap_company` ADD CONSTRAINT `fb_k` FOREIGN KEY (`scrap_id`) REFERENCES `tbl_scraping_data`(`scrap_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;


CREATE TABLE `scrap_industry_data`.`tbl_scrap_company` ( `scrap_company_id` INT NOT NULL AUTO_INCREMENT , `scrap_id` INT NOT NULL , `scrap_comany_data` TEXT NULL DEFAULT NULL , PRIMARY KEY (`scrap_company_id`)) ENGINE = InnoDB;


CREATE TABLE `scrap_industry_data`.`tbl_scrap_company_info` ( `scrap_company_info_id` INT NOT NULL AUTO_INCREMENT , `scrap_info_data` TEXT NOT NULL , PRIMARY KEY (`scrap_company_info_id`)) ENGINE = InnoDB;

ALTER TABLE `tbl_scrap_company_info` ADD `company_name` TEXT NOT NULL AFTER `scrap_info_data`;

