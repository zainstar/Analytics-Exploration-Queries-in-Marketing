SELECT * FROM digital_marketing.`clean data day 13`;
SELECT * 
FROM digital_marketing.`week 3 clean data`;


SELECT COUNT(*) AS num_no_credit_card_save
FROM `digital_marketing`.`week 3 clean data`
WHERE `credit card info save` = 'No';

SELECT COUNT(*) AS num_yes_credit_card_save
FROM `digital_marketing`.`week 3 clean data`
WHERE `credit card info save` = 'Yes';

SELECT COUNT(*) AS num_no_push_status
FROM `digital_marketing`.`week 3 clean data`
WHERE `push status` = 'No';

SELECT COUNT(*) AS num_yes_push_status
FROM `digital_marketing`.`week 3 clean data`
WHERE `push status` = 'Yes';

SELECT * FROM `digital_marketing`.`week 3 clean data` LIMIT 1;

SELECT `ï»¿account length`, COUNT(*) AS total_wishlists
FROM `digital_marketing`.`week 3 clean data`
GROUP BY `ï»¿account length`
ORDER BY total_wishlists DESC
LIMIT 3;

